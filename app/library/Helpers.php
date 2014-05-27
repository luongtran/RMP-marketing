<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of func_Helper
 *
 * @author Administrator
 */
class Helpers  {
    
    public function printMsg($type,$msg)
    {
       switch($type)
       {
         case 'add':
             $str="<div>Hello $msg</div>";
             break;
         
         case 'update':
             break;
         
         case 'delete':
             break;
         default:
             break;
       }
       return $str;
    }

    
}
