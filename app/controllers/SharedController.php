<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of SharedController
 *
 * @author Administrator
 */
class SharedController extends BaseController{
    
      public function getChangeLanguage($lang) {
        Session::put('current_locale', $lang);
        return Redirect::to(Input::get('return_url'));
        
    }
    
}   
    
/* Description all site*/    
    
    
/*
 * Use language 
 * * backend.layout.sibar  
 * base controller, 
 */    
