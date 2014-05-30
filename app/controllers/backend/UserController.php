<?php

class UserController extends BaseController {

     protected $layout = 'backend.layouts.default';
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
        $this->layout->page = "Users";
        $user = Users::paginate(10);
        $this->layout->content = View::make('backend.users.index')->with('getUser',$user);
    }
    
     public function getAdd()
    {    
        $this->layout->page = "Add a new user";                 
        $this->layout->content = View::make('backend.users.add');
    }

}