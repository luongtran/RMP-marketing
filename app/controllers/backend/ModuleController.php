<?php

class ModuleController extends BaseController {

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
        $this->layout->page = "Module";       
        $module= Modules::orderBy('order','asc')->paginate(12); 
        $position = DB::table('position')->get();
        $this->layout->content = View::make('backend.module.index')->with('module',$module)->with('position',$position);           
    }
    
    public function postAdd() {       
        $validation = Validator::make(                
                Input::all(),
                array(
                'name'=> 'required|unique:module',
                'mod'=> 'required|unique:module',
                'order'=>'numeric',
                )                
         );
        if($validation->passes())
        {
        $mod = new Modules;
        $mod->name = Input::get('name');;
        $mod->mod = Input::get('mod');        
        $mod->position = Input::get('position');
        $mod->order = Input::get('order');
        $mod->intro = Input::get('intro');
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
        $position = DB::table('position')->get();
        $getMod = Modules::where('id','=',$id)->first(); 
        $this->layout->content = View::make('backend.module.update')->with('getMod',$getMod)->with('position',$position);      
    }
    
    public function postUpdate($id) {
        //$this->layout->page = "Upadte category";
        $validation = Validator::make(                
                Input::all(),
                array(
                'name'=> 'required',
                'premalink'=> 'unique:categories',
                'order'=>'numeric'
                )                
         );
        
        if($validation->passes())
        {
            $mod = Modules::find($id);
            $mod->name = Input::get('name');
            $mod->mod = Input::get('mod');
            $mod->position = Input::get('position');
            $mod->order = Input::get('order');
            $mod->intro = Input::get('intro');
            $mod->status = Input::get('status');
            $mod->update();
            Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.update_message')));  
            return Redirect::route('backend_module');
        }
        Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();
    }
    
    public function getDelete($id) {
        
          $checkModule = DB::table('page_module')
            ->join('pages', 'page_module.page_id', '=', 'pages.id')
            ->join('module', 'page_module.module_id', '=', 'module.id')
            ->where('module.id','=',$id)
            ->count();  
          if($checkModule > 0) {            
            Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.relationship_table',array('name'=>'Page'))));  
            return Redirect::back();   
          }
          else{
            $at= Modules::find($id);
            $at->delete();
            Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.delete_message')));  
            return Redirect::route('backend_module');            
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
         $ar= Modules::find($id);
         $ar->status = $status;
         $ar->update();
         Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.changestatus_message')));   
     }

}