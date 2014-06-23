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
     
     protected $layout = 'backend.layouts.default';      
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
            $Profile = DB::table('users')
                   ->leftjoin("uploads","uploads.id","=","users.avatar")             
                   ->where("users.username","=",Session::get('login_user'))             
                   ->select(DB::raw("users.id,users.username,users.email,users.first_name,users.last_name,users.phone,users.company,users.address,uploads.path,uploads.name as imgName,users.updated_at,users.permission,users.created_at"))
                   ->first();             
            return $Profile;
      }
    

    public function viewProfile()
      {
           
            $this->layout->content = View::make('backend.users.profile.index');        
            
      }

       public function viewProfile_ajax()
      {
            $userProfile = $this->getProfile();
            return  View::make('backend.users.profile.view_profile')->with('getProfile',$userProfile)->render();            
      }

        public function updateProfile()
      {

            $rule=array(          
            'password'=>'min:5|confirmed', 
            'phone'=>'numeric',
            'avatar'=>'image',
            );
        $validation = Validator::make (Input::all(),$rule);        
        if($validation->passes()){            
            $user=Users::find(Input::get('id'));
            if(Input::get('password')){
            $user->password = Hash::make(Input::get('password'));    
            }            
          
            $user->address = Input::get('address');
            $user->phone = Input::get('phone');           
            $user->company = Input::get('company');  
            $user->first_name = Input::get('firstname');
            $user->last_name = Input::get('lastname');
            $user->update();
            /*save to image*/
            $upload = Input::file('avatar');     
            if($upload)
            {
              Uploads::where("id","=",$user->avatar)->where("type_file","=","image")->delete();
              $Path = 'public/asset/share/uploads/images';
              $Image= new ImagesController();
              $user->avatar =  $Image->store($upload, $Path,'image');  
              $user->update();          
            }      
            Session::flash('msg_flash',  CommonHelper::printMsg('success', trans('messages.update_message')));
         }
         else
         {             
            Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));            
         }

          $userProfile = $this->getProfile();
          return  View::make('backend.users.profile.view_profile')->with('getProfile',$userProfile)->render();

      }
    
    public function getImageJson()
    {
        $list = Uploads::where('type_file','=','image')->orderBy('id','desc')->get();
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


    
    public function requestDemo()
    {
        $this->configEmail();       
        $input = Input::all(); 
        $rule = array('name'=>'required',
                      'company'=>'required',
                      'email'=>'required|email',
                      'subject'=>'required',
                      'text'=>'required',
                );       

        $validation = Validator::make($input,$rule);
        if($validation->passes()){
          try{
          Mail::send('frontend.contact.requestDemo', $input, function($m){            
            $m->from('test@completermp.com', Input::get('name'));
            $m->to('thanhtruyen1001@gmail.com', 'Request Demo');
            $m->subject(Input::get('subject'));
            /*save to db*/
            $create = new RequestDemo();
            $create->fill(Input::all());           
            //$create->code = rand('111111','999999');
            $create->status = 'unpublish';
            $create->save();           
            //$message->attach($pathToFile);
            Session::flash('msg_flash', trans('messages.request_demo_success'));         
             });
           }
           catch(Exception $e)
           {
             Session::flash('msg_flash','Have error with config email, please  try again !</br></br><p>'.$e.'</p>');
             return Redirect::route('view_page_msg');
           }
        }
        else{

            Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));         
            return Redirect::back()->withInput();
        }

        return Redirect::route('view_page_msg');

    }

    public function sendContact()
    {
        $this->configEmail();
        $input = Input::all(); 
        $rule = array('name'=>'required',
                      'email'=>'required|email',
                      'subject'=>'required',
                      'text'=>'required',
                );       

        $validation = Validator::make($input,$rule);
        if($validation->passes()){

          try{

          Mail::send('frontend.contact.send_email', $input, function($m){            
            $m->from('test@completermp.com', Input::get('name'));
            $m->to('thanhtruyen1001@gmail.com', 'Contact');
            $m->subject(Input::get('subject'));          
            //$message->attach($pathToFile);
            Session::flash('msg_flash', trans('messages.send_contact_success'));         
          });
           }
           catch(Exception $e)
           {
             Session::flash('msg_flash','Have error with config email, please  try again !</br></br><p>'.$e.'</p>');
             return Redirect::route('view_page_msg');
           }
        }
        else{

            Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));         
            return Redirect::back()->withInput();
        }

        return Redirect::route('view_page_msg');

    }

    public function configEmail()
    {      
      $email_host = Settings::where('name','=','email_host')->first();
      $email_username = Settings::where('name','=','email_username')->first();
      $email_password = Settings::where('name','=','email_password')->first();
      $email_encryption  = Settings::where('name','=','email_encryption')->first();
      $email_port = Settings::where('name','=','email_port')->first(); 

      $email_port = (int)$email_port->value;
      Config::set('mail.host',$email_host->value);
      Config::set('mail.port',$email_port);
      Config::set('mail.encryption',$email_encryption->value);
      Config::set('mail.username',$email_username->value);    
      Config::set('mail.password',$email_password->value);    
    }
    
}   
    
/* Description all site*/    
    
    
/*
 * Use language 
 * * backend.layout.sibar  
 * base controller, 
 */    
