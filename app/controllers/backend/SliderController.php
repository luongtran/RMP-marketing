<?php

class SliderController extends BaseController {

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
        $this->layout->page = "Slider";  
        $getSlider = Sliders::orderBy('id','desc')->paginate(10); 
        $this->layout->content = View::make('backend.slider.index')->with('getSlider',$getSlider);     
    }
    
    public function postAdd() {       
        $validation = Validator::make(                
                Input::all(),
                array(
                'title'=> 'required|unique:slider',
                'link'=> '',
                'caption'=> 'required',
                'image'=>'mimes:png,jpg,jpeg,bmp,gif',
                     // 'mimes:jpg,jpeg,png,ico,bmp,gif',
                    //'mimes:png,jpg|max:500|dimension_min:128,128'
                )                
         );
        
        if($validation->passes())
        {
        $slider = new Sliders;
        $slider->title = Input::get('title');
        $slider->caption = Input::get('caption');
        $slider->link = Input::get('link');
        $slider->status = Input::get('status');
        $slider->save();
        /*upload image*/
        $upload=Input::file('image');         
        if(!empty(CommonHelper::check_files_empty($upload)))
          {            
            $Path = 'public/asset/share/uploads/images/';        
            $Image= new ImagesController();            
            $slider->image = $Image->store($upload, $Path);
            $slider->save();
          }        
        Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.create_message')));  
        return Redirect::route('backend_slider');
        }
        Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();        
    }
        
    public function getUpdate($id) {
        
        $this->layout->page = "Upadte slider";  
        $getSlider = Sliders::where('id','=',$id)->first();  
        $image = Uploads::where('id','=',$getSlider->image)->first();         
        $this->layout->content = View::make('backend.slider.update')->with('getSlider',$getSlider)
             ->with('image',$image);
    }
    
    public function postUpdate($id) {
        //$this->layout->page = "Upadte category";
        $validation = Validator::make(                
                Input::all(),
                array(
                'title'=> 'required',
                'caption'=>'required',
                'image'=>'image'
                )                
         );
        
        if($validation->passes())
        {
            $slider = Sliders::find($id);
            $slider->title = Input::get('title');
            $slider->link = Input::get('link');
            $slider->caption = Input::get('caption');
            $slider->status = Input::get('status');
            /*check update image*/
            $upload=Input::file('image');         
            if(!empty(CommonHelper::check_files_empty($upload)))
              { 
                $Path = 'public/asset/share/uploads/images/';
                $image = new ImagesController();
                $image_id = $image->storeOld($upload, $Path, $slider->image);
                $slider->image = $image_id;
              }
            $slider->update();
            Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.update_message')));  
            return Redirect::route('backend_slider');
        }
        Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();
    }
    
      public function getDelete($id)
     {        
          $sl=Sliders::find($id);
          $sl->delete();        
          Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.delete_message'))); 
          return Redirect::route('backend_slider');
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
         $sl= Sliders::find($id);
         $sl->status = $status;
         $sl->update();
         Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.changestatus_message')));   
     }



}
