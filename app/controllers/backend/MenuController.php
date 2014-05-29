<?php

class MenuController extends BaseController {

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
        
        $this->layout->page = "Menu";  
        $getMenu = Menus::orderBy('order','asc')->paginate(10);
        
        $category= Categories::all();
        $test = CommonHelper::readOption('parent',$category,'id','name','form-control');
        
        $this->layout->content = View::make('backend.menu.index')->with('getMenu',$getMenu)
             ->with('cate',$test);
    }

}