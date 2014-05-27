<?php

class CategoryController extends BaseController {

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
        $this->layout->page = "Category";
        $parentCategory = Categories::all(); 
        $categories= Categories::paginate(10); 
        $this->layout->content = View::make('backend.category.index')->with('categories',$categories)
             ->with('parentCategory',$parentCategory);   
    }
    
    public function postAdd() {
        
        //$name= Input::get('name');
        $categories = new Categories;
        $categories->name = Input::get('name');;
        $categories->permalink = Input::get('permalink');
        $categories->parent = Input::get('parent');
        $categories->status = Input::get('status');
        $categories->save();    
    
        return Redirect::back();
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