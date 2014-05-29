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
             $str ='<div class="alert alert-info  alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <a class="alert-link" >'.$msg.'</a>
               </div>';
             break;
         
         case 'error':
             $str ='<div class="alert alert-danger  alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <a class="alert-link" >'.$msg.'</a>
               </div>';
             break;
         
         
         default:
             $str ='<div class="alert alert-primary  alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <a class="alert-link" >'.$msg.'</a>
               </div>';
             break;
       }
       return $str;
    }
    
    public static function printErrors($validation)
    {
        $str='';
         foreach($validation->all() as $er)
         {
           $str.= CommonHelper::printMsg('error',$er);                    
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
         foreach($array as $option):
             $str.="<option value='".$option->$value."'>".$option->$title."</option>";
         endforeach;    
        $str.="</select>"; 
         return $str;
    }
    
    
}
