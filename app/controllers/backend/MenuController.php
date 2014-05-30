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
        $getP = Menus::all(); 
         function listDrop($parent_id,$span='')
        {  
            $str="";
            $getParent= Menus::all();
            foreach($getParent as $list)
            {
                if($list->parent == $parent_id)
                {                    
                   $str.= "<option value='".$list->id."' class='border-basic'>".$span.$list->title."</option>"; 
                   $str.=listDrop($list->id,'&nbsp&nbsp');                
                }
            }
            return $str;
        }      
        
        $this->layout->content = View::make('backend.menu.index')->with('getMenu',$getMenu)
             ->with('parent',listDrop(0))
             ->with('getP',$getP);
    }
     public function postAdd() {       
        $validation = Validator::make(                
                Input::all(),
                array(
                'title'=> 'required',
                'order'=>'numeric'    
                )                
         );
        
        if($validation->passes())
        {
        $menu = new Menus;
        $menu->title = Input::get('title');
        $menu->parent = Input::get('parent');
        $menu->link = Input::get('link');        
        $menu->order = Input::get('order');
        $menu->icon = Input::get('icon');
        $menu->status = Input::get('status');
        $menu->save();        
        Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.create_message')));  
        return Redirect::route('backend_menu');
        }
        Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();        
    }
        
     public function getUpdate($id) {
        
        $this->layout->page = "Update menu";  
        $getMenu = Menus::where('id','=',$id)->first();  
        
         function listDrop($parent_id,$span=' ',$checked)
        {  
            $str="";           
            $getParent= Menus::all();
            foreach($getParent as $list)
            {   
               
                
                
                if($list->parent == $parent_id)
                { 
                   if($checked == $list->id){ 
                   $str.= "<option value='".$list->id."' class='border-basic' selected>".$span.$list->title."</option>"; 
                   }
                   else
                   {
                   $str.= "<option value='".$list->id."' class='border-basic'>".$span.$list->title."</option>";     
                   }
                   $str.=listDrop($list->id,'&nbsp&nbsp',$checked);                
                }
            }
            return $str;
        }      
        
        $this->layout->content = View::make('backend.menu.update')->with('getMenu',$getMenu)
             ->with('getParent',  listDrop(0,'',$getMenu->parent));
          
    }
    
    public function postUpdate($id) {
        //$this->layout->page = "Upadte category";
        $validation = Validator::make(                
                Input::all(),
                array(
                'title'=> 'required',
                'order'=> 'numeric',
                )                
         );
        
        if($validation->passes())
        {
            $menu = Menus::find($id);
            $menu->title = Input::get('title');
            $menu->link = Input::get('link');            
            $menu->parent = Input::get('parent');
            $menu->order = Input::get('order');
            $menu->icon = Input::get('icon');
            $menu->status = Input::get('status');
            $menu->update();
            Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.update_message')));  
            return Redirect::route('backend_menu');
        }
        Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();
    }
    
    public function getDelete($id) {         
            $at= Menus::find($id);
            $at->delete();
            Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.delete_message')));  
            return Redirect::route('backend_menu'); 
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
         $ar= Menus::find($id);
         $ar->status = $status;
         $ar->update();
         Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.changestatus_message')));   
     }

}