<?php

class BlogCategoriesController extends BaseController {

      protected $layout = 'backend.layouts.default';
      public function __construct() {
       
      }  
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
        $this->layout->page = "Blog | Category";       
        $categories= BlogCategories::orderBy('id','desc')->paginate(10); 
        $this->layout->content = View::make('blog.categories.index')->with('categories',$categories);             
    }
    
    public function postAdd() {       
        $validation = Validator::make(                
                Input::all(),
                array(
                'name'=> 'required|unique:blog_categories',
                )                
         );
        if($validation->passes())
        {
        $categories = new BlogCategories;
        $categories->name = Input::get('name');;
        $categories->description = Input::get('description');
        $categories->status = Input::get('status');
        $categories->save();
        Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.create_message')));  
        return Redirect::back();
        }
        Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();        
    }
        
    public function getUpdate($id) {
        
        $this->layout->page = "Update category";  
        $getCategory = BlogCategories::where('id','=',$id)->first(); 
        $this->layout->content = View::make('blog.categories.update')->with('getCategory',$getCategory);
             
    }
    
    public function postUpdate($id) {
        //$this->layout->page = "Upadte category";
        $validation = Validator::make(                
                Input::all(),
                array(
                'name'=> 'required'
                )                
         );
        
        if($validation->passes())
        {
            $category = BlogCategories::find($id);
            $category->name = Input::get('name');
            $category->description = Input::get('description');
            $category->status = Input::get('status');
            $category->update();
            Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.update_message')));  
            return Redirect::route('blog_category');
        }
        Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();
    }
    
    public function getDelete($id) {
        
          $checkPost = DB::table('blog_post_category')
            ->join('blog_categories', 'blog_post_category.category_id', '=', 'blog_categories.id')
            ->join('blog_posts', 'blog_post_category.post_id', '=', 'blog_posts.id')
            ->where('blog_categories.id','=',$id)
            ->count(); 
          if($checkPost > 0)
          {            
            Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.relationship_table',array('name'=>'Post'))));  
            return Redirect::back();   
          }        
          else
          {
            $at= BlogCategories::find($id);
            $at->delete();
            Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.delete_message')));  
            return Redirect::route('blog_category');            
          }
        
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
         $ar= BlogCategories::find($id);
         $ar->status = $status;
         $ar->update();
         Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.changestatus_message')));   
     }

}