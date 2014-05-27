<?php

class ImagesController extends BaseController {

    protected $layout = 'layouts.default';

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
      
        $this->layout->content = View::make('backend.images.index');
     
    }
    
    public function getUpload()
    {
        $this->layout->content = View::make('backend.images.upload');
    }
    
        public function postUpload()
    {          
          $Path = 'public/backend/uploads/images';
          $upload_success = Input::file('fileImage');  
          $result=$this->save($upload_success,$Path);
          return Response::json($result);          
    }
    
    function store($file,$Path)
    {        
             // $group = new GroupUpload;
             // $group->save();
                
              foreach($file as $fileinfo)
                {            
                $date = date('m-d-Y') ;       
                $filename= $date.'_'.$fileinfo->getClientOriginalName();
                $fileinfo->move($Path, $filename);
                $upload =  new Uploads;
                $upload->name = $filename;
                $upload->type = $fileinfo->getClientmimeType();
                $upload->path = $Path;
                $upload->save();
               // $group->upload_id=$upload->id;
                }
    }
    
    
    


}
