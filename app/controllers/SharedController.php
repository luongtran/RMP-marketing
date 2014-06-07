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
         
     CONST ROLE_MANAGER =1;
     CONST ROLE_ADMIN =2;
     CONST ROLE_SUPPER =3;
     
     
     public function getChangeLanguage($lang) {
        Session::put('current_locale', $lang);
        return Redirect::to(Input::get('return_url'));        
    }


    public function getLogin()
    {
    	  return View::make('backend.users.login');
    }

      public  function postLogin()  
    {
         $validation = Validator::make(Input::all(),array('username'=>'required','password'=>'required'));
         if($validation->passes())
         {
         $username=strip_tags(Input::get('username'));
         $password=strip_tags(Input::get('password'));
            $user = DB::table('users')->where('username', $username)->first();
            if($user)
            {
                if (Hash::check($password, $user->password)) { 
                    /*save session*/  

                    Session::put('login_user',$username);
                    Session::put('isLogin',true);
                    Session::put('userID',$user->id);
                    Session::put('perRole',$user->permission);
                    return Redirect::route('back_end');
                }              
            }
             Session::flash('msg_flash',  CommonHelper::printMsg('error',trans('messages.user_pass_false')));
                    return Redirect::back()->withInput();     
         }
         Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();       
            
    }
    public function getLogout()
    {
        Session::forget('isLogin');
        Session::forget('login_user');
        Session::forget('perRole');
        Session::forget('userID');
        //Auth::logout();

        return Redirect::route('user_login');
        //Session::flush();  removing all session
    }

    
    public function getProfile()
      {
            $result = Users::where('username','=',Session::get('login_user'))->first();
            return $result;
      }
    
    
    public function getImageJson()
    {
        $list = Uploads::orderBy('id','desc')->get();
       //  $url = asset('share/uploads/images');
        
       //  $arr = '[';
       //  foreach($list as $img):                
               
       //  $arr.= '{
       //  "image": "http://assets20.pokemon.com/static2/_ui/img/chrome/external_link_bumper.png",
       //  "thumb": "http://assets20.pokemon.com/static2/_ui/img/chrome/external_link_bumper.png",
       //  "folder": "Images"
       //  },';

       //  endforeach;
       //  $arr.= ']';
       // // return $arr;
        return Response::json($list); 
    }
    
}   
    
/* Description all site*/    
    
    
/*
 * Use language 
 * * backend.layout.sibar  
 * base controller, 
 */    
