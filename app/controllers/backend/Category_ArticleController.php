<?php

class Categories_ArticlesController extends BaseController {

      protected $layout = 'backend.layouts.default';     
    /*
      |--------------------------------------------------------------------------
      | Categories Controller
      |--------------------------------------------------------------------------
      |
      | You may wish to use controllers instead of, or in addition to, Closure
      | based routes. That's great! Here is an example controller method to
      | get you started. To route to this controller, just add the route:
      |
      |	Route::get('backend/', 'CategoriesController@index');
      |
     */

    public function index() {
        $this->layout->content = View::make('backend.category.index');
    }
    
    public function getCreate() {
        $this->layout->content = View::make('backend.category.create');
    }
    
    public function store() {
        $this->layout->content = View::make('backend.category.index');
    }
    
    public function getUpdate() {
        $this->layout->content = View::make('backend.category.update');
    }
    
    public function postUpdate() {
        $this->layout->content = View::make('backend.category.index');
    }
    
    public function getDelete() {
        $this->layout->content = View::make('backend.category.index');
    }

}