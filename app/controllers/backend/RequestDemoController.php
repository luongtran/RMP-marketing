<?php

class RequestDemoController extends BaseController {

      protected $layout = 'backend.layouts.default';      
      private $_moduleName = "Request Demo";
      private $_routeModule ="backend_requestdeno";
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
        $this->layout->page = $this->_moduleName;   
        $result = RequestDemo::orderBy('id','desc')->paginate(15);
        //$module= Modules::orderBy('order','asc')->paginate(10);       
        $this->layout->content = View::make('backend.requestdemo.index')
                                    ->with('result',$result);
                                   
        }
    public function read($id) {        
        $this->layout->page = $this->_moduleName;                
        $read = RequestDemo::where('id','=',$id)->first();
        if(!$read){
        Session::flash('msg_flash',  CommonHelper::printMsg('error',"You can't read this request demo"));   
        Redirect::route($this->_routeModule); 
        }
        /*update status have read*/            
            $record = RequestDemo::find($id);
            $record->status = 'publish';
            $record->update();

        $this->layout->content = View::make('backend.requestdemo.read')
                                 ->with('read',$read);           
        }    
    public function getDelete($id) {
        
            $at= RequestDemo::find($id);
            $at->delete();
            Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.delete_message')));  
            return Redirect::route($this->_routeModule); 
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
         return Redirect::route($this->_routeModule);
         }
         
        else {             
          Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.nochoose_message')));   
          return Redirect::route($this->_routeModule);
        }
     }
     
     public function changeStatus($status,$id)
     {
         $ar= RequestDemo::find($id);
         $ar->status = $status;
         $ar->update();
         Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.changestatus_message')));   
     }


     

}