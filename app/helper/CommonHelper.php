<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CommonHelper
 *
 * @author Administrator
 */
class CommonHelper {
    //put your code here
    public static function test()
    {
       $test='HelloWolrd';
       return $test;
    }
     public static function printMsg($type,$msg)
    {
       switch($type)
       {
         case 'success': 

             $str ='<div class="alert alert-success">
                                    <button type="button" class="close" data-dismiss="alert">×</button>
                                    <span class="entypo-attention"></span>                                   
                              '.$msg.'</div>';
             break;
         
         case 'error':
             $str ='<div class="alert alert-danger">
                                    <button type="button" class="close" data-dismiss="alert">×</button>
                                    <span class="entypo-attention"></span>                                   
                              '.$msg.'</div>';
             break;         
         
         default:
             $str ='<div class="alert alert-danger">
                                    <button type="button" class="close" data-dismiss="alert">×</button>
                                    <span class="entypo-attention"></span>                                   
                              '.$msg.'</div>';
             break;
       }
       return $str;
    }
    
    public static function printErrors($validation)
    {
         $str='';
         foreach($validation->all() as $er)
         {
           $str.= CommonHelper::printMsg('error',$er).'</br>';                    
         }
         return $str;
    }
    
    
      public static function check_files_empty($files) {
        if (!is_array($files)) {
            $files = array($files);
        }
        foreach ($files as $key => $value) {
            if (empty($value) || $value == '' || $value == NULL || $value == 0) {
                unset($files[$key]);
            }
        }
        return $files;
    }
    
    
    public static function readOption($selectName,$array,$value,$title,$class='')
    {
        $str="<select name='".$selectName."'  class='".$class."'>";
        $str.="<option value='0'>None</option>";
         foreach($array as $option):
             $str.="<option value='".$option->$value."'>".$option->$title."</option>";
         endforeach;    
        $str.="</select>"; 
         return $str;
    }
   


    
    public static function listDrop($array)
    {
        function back($parent_id,$span='',$array)
        {
            
          foreach($array as $list)  
          {
              if($list->parent == $parent_id)
              {
                  echo "<a>".$span.$list->name."</a>";
                  back($list->id,$span='--',$array);
              }
          }
        }
        back(0,'',$array);
    }

    public static function createFormStatus($selected='publish')
    {
                            $str='<div class="form-group">
                              <label>'.trans('common.table.status').'</label>
                              <div class="radio">
                                <label>
                                 '.Form::radio('status', 'publish',$selected=='publish'?true:false).' 
                                 '.trans('common.table.publish').' 
                                </label>
                              </div>
                             <div class="radio">
                                <label>
                                  '.Form::radio('status', 'unpublish',$selected=='unpublish'?true:false).'
                                  '.trans('common.table.unpublish').' 
                                </label> </div></div>';
                return $str;                 
    }
     public static function createFormAction()
    {
                            $str=' <div class="form-group">
                                      <select class="form-control custom-form-color" name="action">
                                      <option value="publish">'.trans('common.table.publish').'</option>
                                      <option value="unpublish">'.trans('common.table.unpublish').'</option>
                                      <option value="delete">'.trans('common.button.delete').'</option>
                                    </select></br>                                                                          
                                    <button type="submit" class="btn btn-danger">'.trans('common.button.action').'</button>
                                  </div>  ';
                return $str;                 
    }
    
    
    public static function getSetting($name=''){     

        $str = Settings::where('name','=',$name)->first();
        if($str){
           return $str->value;
        }
        return null;
    }

    public static function transPermalink($str)
    {     
          $word_replace = array('_',' ','+','.','@','!','#','&','*');          
          $resule = str_replace($word_replace,'-',$str);
          $resule = strtolower($resule);
          return $resule;
    }
    
    //get ip client
   public static function get_client_ip() {
      $ipaddress = '';
      if (getenv('HTTP_CLIENT_IP'))
          $ipaddress = getenv('HTTP_CLIENT_IP');
      else if(getenv('HTTP_X_FORWARDED_FOR'))
          $ipaddress = getenv('HTTP_X_FORWARDED_FOR');
      else if(getenv('HTTP_X_FORWARDED'))
          $ipaddress = getenv('HTTP_X_FORWARDED');
      else if(getenv('HTTP_FORWARDED_FOR'))
          $ipaddress = getenv('HTTP_FORWARDED_FOR');
      else if(getenv('HTTP_FORWARDED'))
         $ipaddress = getenv('HTTP_FORWARDED');
      else if(getenv('REMOTE_ADDR'))
          $ipaddress = getenv('REMOTE_ADDR');
      else
          $ipaddress = 'UNKNOWN';
      return $ipaddress;
    }
   
    
   
}
