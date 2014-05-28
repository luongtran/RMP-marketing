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
        $categories= Categories::orderBy('id','desc')->paginate(10); 
        $this->layout->content = View::make('backend.category.index')->with('categories',$categories)
             ->with('parentCategory',$parentCategory);   
    }
    
    public function postAdd() {
        
        $validation = Validator::make(                
                Input::all(),
                array(
                'name'=> 'required',
                'premalink'=> 'unique:categories',
                )                
         );
        if($validation->passes())
        {
        $categories = new Categories;
        $categories->name = Input::get('name');;
        $categories->permalink = Input::get('permalink');
        $categories->parent = Input::get('parent');
        $categories->status = Input::get('status');
        $categories->save();
        Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.create_message')));  
        return Redirect::back();
        }
        Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();        
    }
        
    public function getUpdate($id) {
        
        $this->layout->page = "Upadte category";  
        $getCategory = Categories::where('id','=',$id)->first();  
        $categories = Categories::all(); 
        $this->layout->content = View::make('backend.category.update')->with('getCategory',$getCategory)
             ->with('categories',$categories);
             
    }
    
    public function postUpdate($id) {
        //$this->layout->page = "Upadte category";
        $validation = Validator::make(                
                Input::all(),
                array(
                'name'=> 'required',
                'premalink'=> 'unique:categories',
                )                
         );
        
        if($validation->passes())
        {
            $category = Categories::find($id);
            $category->name = Input::get('name');
            $category->permalink = Input::get('permalink');
            $category->description = Input::get('description');
            $category->parent = Input::get('parent');
            $category->status = Input::get('status');
            $category->update();
            Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.update_message')));  
            return Redirect::route('backend_category');
        }
        Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();
    }
    
    public function getDelete($id) {
        $at= Categories::find($id);
        $at->delete();
         Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.delete_message')));  
        return Redirect::route('backend_category');        
    }
    
     public function action()
     {
         $check = Input::get('checkID');
         if($check)
         {
         $getAction = Input::get('action');              
         switch($getAction)
         {
         case'publish':
             foreach($check as $key=>$value)
             {               
               $this->changeStatus($getAction,$value);               
             }  
             break;         
         case'unpublish':
              foreach($check as $key=>$value)
             {               
               $this->changeStatus($getAction,$value);               
             }  
             break;           
         case'delete':             
             foreach($check as $key=>$value)
             {               
               $this->getDelete($value);               
             }                          
             break;
         default:             
             break;
         }
         return Redirect::back();
         }
         
        else {             
          Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.nochoose_message')));   
         return Redirect::back();   
        }
     }
     
     public function changeStatus($status,$id)
     {
         $ar= Categories::find($id);
         $ar->status = $status;
         $ar->update();
         Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.changestatus_message')));   
     }

}