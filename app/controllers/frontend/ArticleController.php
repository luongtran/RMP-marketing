<?php

class ArticleController extends BaseController {

    protected $layout = 'layouts.default';

    /*
      |--------------------------------------------------------------------------
      | Default Home Controller
      |--------------------------------------------------------------------------
      |
      | You may wish to use controllers instead of, or in addition to, Closure
      | based routes. That's great! Here is an example controller method to
      | get you started. To route to this controller, just add the route:
      |
      |	Route::get('/', 'HomeController@showWelcome');
      |
     */

    public function index() {
        
        $users = DB::table('users')->get();
        $this->layout->content = View::make('user.index', array('list_user' =>$users));
     
    }
    
     public function register()
    {         
        $this->layout->content = View::make('user.register');
    }    
    public function postRegister()
    {                  
        $validator = Validator::make(
          array(
                'username' =>Input::get('username'),
                'password' => Input::get('password'),
                'email' => Input::get('email')
            ),          
            array(
                'username' => 'required',
                'password' => 'required|min:5',
                'email' => 'required|email'
            )
        );
        if ($validator->passes())
        {
           DB::table('users')->insert(
              array('username' =>Input::get('username'),
                    'password' =>Input::get('password'),
                    'email' =>Input::get('email')
            )
          ); 
	     return Redirect::action('UserController@index');//->with('message','The emergency contact was successfully added!');;
        }
        
        if ($validator->fails())
        {
            $msg = $validator->messages();                     
            var_dump($msg);
        }
        $this->layout->content = View::make('user.register');
        
                   
    }    
    
    public function view($userID)
    {
        $userQuery = DB::table('users');
        $userQuery->where('userID', '=',$userID);
        $user = $userQuery->get();
        $this->layout->content = View::make('user.view', array('getUser' => $user));           
    }
    
    public function delete($userID)
    {
          DB::table('users')->where('userID', '=', $userID)->delete();
          return Redirect::action('UserController@index');
    }
      public function update($userID)
    {
        $userQuery = DB::table('users');
        $userQuery->where('userID', '=',$userID);
        $user = $userQuery->get();
        $this->layout->content = View::make('user.update', array('getUser' => $user));   
    }
    public function postUpdate($userID) //thisIsFuntion
    {
      // print_r(Input::get());die();
          
          DB::table('users')
            ->where('userID', $userID)
            ->update(array
                    ('username' =>Input::get('username'),
                    'password' =>Input::get('password'),
                    'email' =>Input::get('email')
                    ));
                    
	     return Redirect::action('UserController@index');
     
    }
    
    public function login()
    {
     $this->layout->content = View::make('user.login');  
    }
    
    public function postLogin()
    {
        $userQuery = DB::table('users');
        $userQuery->where('username', '=',Input::get('username'));
        $userQuery->where('password','=',Input::get('password'));
        $user = $userQuery->count();
        if($user>0)
        {
            //print_r('Dang nhap thanh cong');
            Session::put('username',Input::get('username'));
           // $value = Session::get('username');
           // print_r($value);
           Session::flash('msg_success', 'Đăng nhập thành công');
            return Redirect::action('HomeController@index');
        }
        else
        {
              Session::flash('msg_error', 'Username hoặc password sai');
              return Redirect::action('UserController@login');
        }
        
        /*
        if($user->username!=null)
        {
        var_dump($user);    
        }
        else
        {
            
        }
        */
        
    }
    function logout()
    {
       //Session::flush();
       Session::forget('username');
       //Session::forget('password');
        return Redirect::action('HomeController@index');
    }
    


}
