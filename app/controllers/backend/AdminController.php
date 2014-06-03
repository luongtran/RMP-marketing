<?php

class AdminController extends BaseController {

      protected $layout = 'backend.layouts.default';
      
      public function __construct() { 

        /*$ROLE = UserController::ROLE_SUPPER;          
        $classUser =new UserController();
        
        if($classUser->getProfile())
        {
            if($classUser->getProfile()->permission < $ROLE)
            {
                //Session::flash('msg_flash',"You can't access this function!");                
                echo "You can't access permission "; 
                die();    
            }
        }
        else
        {
            echo 'Please login <a href="'.Request::root().'/backend/login">Login</a>';
            
            die();
        }*/
     }
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
      
        $this->layout->content = View::make('backend.index');
     
    }
    
    public function dump() {       
        
        var_dump(CommonHelper::test());
    }
    
    
    

}
