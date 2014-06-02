<?php

class ReasonController extends BaseController {

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
        $this->layout->page = "Reason";  
        $getReason = Reasons::orderBy('order','asc')->paginate(10); 
        $this->layout->content = View::make('backend.reason.index')->with('getReason',$getReason);     
    }
    
    public function postAdd() {       
        $validation = Validator::make(                
                Input::all(),
                array(
                'title'=> 'required|unique:reasons',                
                'caption'=> 'required',
                'image'=>'mimes:png,jpg,jpeg,bmp,gif',
                'order'=>'numeric'
                )                
         );
        
        if($validation->passes())
        {
        $entity = new Reasons;
        $entity->title = Input::get('title');
        $entity->caption = Input::get('caption');
        $entity->status = Input::get('status');
        $entity->order = Input::get('order');
        $entity->save();
        /*upload image*/
        $upload=Input::file('image');         
        if(!empty(CommonHelper::check_files_empty($upload)))
          {            
            $Path = 'public/asset/share/uploads/images/';        
            $Image= new ImagesController();            
            $entity->image = $Image->store($upload, $Path);
            $entity->save();
          }        
        Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.create_message')));  
        return Redirect::route('backend_reason');
        }
        Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();        
    }
        
    public function getUpdate($id) {
        
        $this->layout->page = "Update reason";  
        $getReason = Reasons::where('id','=',$id)->first();  
        $image = Uploads::where('id','=',$getReason->image)->first();         
        $this->layout->content = View::make('backend.reason.update')->with('getReason',$getReason)
             ->with('image',$image);
    }
    
    public function postUpdate($id) {
        //$this->layout->page = "Upadte category";
        $validation = Validator::make(                
                Input::all(),
                array(
                'title'=> 'required',
                'caption'=>'required',
                'image'=>'image',
                'order'=>'numeric'
                )                
         );
        
        if($validation->passes())
        {
            $reason = Reasons::find($id);
            $reason->title = Input::get('title');
            $reason->caption = Input::get('caption');
            $reason->status = Input::get('status');
            $reason->order = Input::get('order');
            /*check update image*/
            $upload=Input::file('image');         
            if(!empty(CommonHelper::check_files_empty($upload)))
              { 
                $Path = 'public/asset/share/uploads/images/';
                $image = new ImagesController();
                $image_id = $image->storeOld($upload, $Path, $reason->image);
                $reason->image = $image_id;
              }
            $reason->update();
            Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.update_message')));  
            return Redirect::route('backend_reason');
        }
        Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();
    }
    
      public function getDelete($id)
     {        
          $sl=Reasons::find($id);
          $sl->delete();        
          Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.delete_message'))); 
          return Redirect::route('backend_reason');
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
         $sl= Reasons::find($id);
         $sl->status = $status;
         $sl->update();
         Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.changestatus_message')));   
     }



}
