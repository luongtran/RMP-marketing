<?php

class LanguageController extends BaseController {

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
        
        $this->layout->page = "Language";  
        
        $getLang = Language::orderBy('name','asc')->paginate(10); 
        
        $this->layout->content = View::make('backend.language.index')->with('getLang',$getLang);
            
    }
     public function postAdd() {       
        $validation = Validator::make(                
                Input::all(),
                array(
                'name'=> 'required',
                'code'=>'required'    
                )                
         );
        
        if($validation->passes())
        {
        $lang = new Language;
        $lang->name = Input::get('name');
        $lang->code = Input::get('code');
        $lang->icon = Input::get('icon');
        $lang->status = Input::get('status');
        $lang->save();        
        Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.create_message')));  
        return Redirect::route('backend_language');
        }
        Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();        
    }
        
     public function getUpdate($id) {
        
        $this->layout->page = "Update language";  
        $getLang = Language::where('id','=',$id)->first();  
        $this->layout->content = View::make('backend.language.update')->with('getLang',$getLang);
          
    }
    
    public function postUpdate($id) {
        //$this->layout->page = "Upadte category";
        $validation = Validator::make(                
                Input::all(),
                array(
                'name'=> 'required',
                'code'=> 'required',
                )                
         );
        
        if($validation->passes())
        {
            $lang = Language::find($id);
            $lang->name = Input::get('name');
            $lang->code = Input::get('code');
            $lang->icon = Input::get('icon');
            $lang->status = Input::get('status');
            $lang->update();
            Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.update_message')));  
            return Redirect::route('backend_language');
        }
        Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();
    }
    
    public function getDelete($id) {         
            $at= Language::find($id);
            $at->delete();
            Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.delete_message')));  
            return Redirect::route('backend_language'); 
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
         $ar= Language::find($id);
         $ar->status = $status;
         $ar->update();
         Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.changestatus_message')));   
     }

}