<?php

class PageController extends BaseController {

 
    protected $layout = 'frontend.layouts.default';

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
        $this->layout->page = "Recruitment Management Portal";
        $this->layout->title = "Home";
        
        $this->layout->content = View::make('frontend.page.index');
    }
    public function about() {
        $this->layout->page = "About us";
        $this->layout->content = View::make('frontend..page.about');
    }        
      public function features() {
        $this->layout->page = "Features";
        $this->layout->content = View::make('frontend..page.features');
    }
      public function service() {          
        $this->layout->page = "Service";
        $this->layout->content = View::make('frontend..page.service');
    }
      public function requestDemo() {          
        $this->layout->page = "Request Demo";
        $this->layout->content = View::make('frontend..page.requests');
    }
      public function supportPackages() {          
        $this->layout->page = "Support Packages";
        $this->layout->content = View::make('frontend..page.support');
    }
    public function contact() {        
        $this->layout->page = "Contact";
        $this->layout->content = View::make('frontend..page.contact');
    }

}