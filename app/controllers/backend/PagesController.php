<?php

class PagesController extends BaseController {

      protected $layout = 'backend.layouts.default';      
      
      public function __construct() {
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
        
        $this->layout->page = "Page";          
        $getPage = Pages::orderBy('id','desc')->paginate(10);         
        $this->layout->content = View::make('backend.page.index')->with('getPage',$getPage);
            
    }
     public function postAdd() {       
        $validation = Validator::make(                
                Input::all(),
                array(
                'name'=> 'required',                
                )                
         );
        
        if($validation->passes())
        {
        $page = new Pages;
        $page->name = Input::get('name');        
        $page->link = Input::get('link');    
        $page->status = Input::get('status');
        $page->save();        
        Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.create_message')));  
        return Redirect::route('backend_page');
        }
        Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();        
    }
        
     public function getUpdate($id) {
        
        $this->layout->page = "Update page";  
        $getPage = Pages::where('id','=',$id)->first();  
        $mod = DB::table('page_module')
            ->join('pages', 'page_module.page_id', '=', 'pages.id')
            ->join('module', 'page_module.module_id', '=', 'module.id')
            ->where('module.status','=','publish')
            ->where('pages.id','=',$id)
            ->select(DB::raw('module.id,module.name as name,pages.status'))
            ->get();
        $mods = Modules::all();
        
        $this->layout->content = View::make('backend.page.update')->with('getPage',$getPage)
            ->with('mod',$mod)->with('mods',$mods);
          
    }
    
    public function postUpdate($id) {
        //$this->layout->page = "Upadte category";
        $validation = Validator::make(                
                Input::all(),
                array(
                'name'=> 'required',
                )                
         );
        
        if($validation->passes())
        {
            $pages =Pages::find($id);
            $pages->name = Input::get('name');
            $pages->link = Input::get('link');                
            $pages->status = Input::get('status');
            $pages->update();
          
          if(Input::get('module'))
          {
                $modOld= PageModules::where('page_id','=',$pages->id)->get();            
                foreach($modOld as $mod_del)
               {    
                    PageModules::where('page_id','=',$mod_del->page_id)->delete();
               }
               foreach (Input::get('module') as $key=>$value)
               {
                    $adMod= new PageModules;   
                    $adMod->page_id = $pages->id;
                    $adMod->module_id = $value;                              
                    $adMod->save();
               }
          }
         
            
        
          
            Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.update_message')));  
            return Redirect::route('backend_page');
        }
        Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();
    }
    
    public function getDelete($id) {
             $checkModule = DB::table('menu')
            ->join('pages', 'menu.page_id', '=', 'pages.id')
            ->where('pages.id','=',$id)
            ->count();  
             
          if($checkModule > 0) {            
            Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.relationship_table',array('name'=>'Menu'))));  
            return Redirect::back();   
          }
          else{
            $at= Pages::find($id);
            $at->delete();
            Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.delete_message')));  
            return Redirect::route('backend_page');            
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
         $ar= Pages::find($id);
         $ar->status = $status;
         $ar->update();
         Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.changestatus_message')));   
     }

}