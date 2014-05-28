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
}
