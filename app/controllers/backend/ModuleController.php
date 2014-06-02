<?php

class ModuleController extends BaseController {

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
        $this->layout->page = "Module";       
        $module= Modules::orderBy('id','desc')->paginate(10); 
        $this->layout->content = View::make('backend.module.index')->with('module',$module);           
    }
    
    public function postAdd() {       
        $validation = Validator::make(                
                Input::all(),
                array(
                'name'=> 'required|unique:module',
                'mod'=> 'required|unique:module',
                )                
         );
        if($validation->passes())
        {
        $mod = new Modules;
        $mod->name = Input::get('name');;
        $mod->mod = Input::get('mod');
        $mod->position = Input::get('position');
        $mod->status = Input::get('status');
        $mod->save();
        Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.create_message')));  
        return Redirect::back();
        }
        Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();        
    }
        
    public function getUpdate($id) {
        
        $this->layout->page = "Update module";  
        $getMod = Modules::where('id','=',$id)->first(); 
        $this->layout->content = View::make('backend.module.update')->with('getMod',$getMod);
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
            $mod = Modules::find($id);
            $mod->name = Input::get('name');
            $mod->mod = Input::get('mod');
            $mod->position = Input::get('position');
            $mod->status = Input::get('status');
            $mod->update();
            Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.update_message')));  
            return Redirect::route('backend_module');
        }
        Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();
    }
    
    public function getDelete($id) {
        
          $checkArticle = DB::table('categories_articles')
            ->join('categories', 'categories_articles.categories_id', '=', 'categories.id')
            ->join('articles', 'categories_articles.articles_id', '=', 'articles.id')
            ->where('categories.id','=',$id)
            ->count();
          if($checkArticle > 0)
          {            
            Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.relationship_table')));  
            return Redirect::back();   
          }
          else
          {
            $at= Categories::find($id);
            $at->delete();
            Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.delete_message')));  
            return Redirect::route('backend_category');            
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
         $ar= Categories::find($id);
         $ar->status = $status;
         $ar->update();
         Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.changestatus_message')));   
     }

}