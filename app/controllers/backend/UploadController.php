<?php

class UploadController extends BaseController {

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
      
        $this->layout->content = View::make('backend.images.index');
     
    }

    public function listImg() {        

      $list = Uploads::where('type_file','=','image')->orderBy('id','desc')->paginate(50); 
      return  View::make('backend.images.list')->with('listImg',$list)->render();
     
    }
    
    public function getUpload()
    {
        $this->layout->content = View::make('backend.uploads.upload');
    }
    
        public function postUpload()
    {          
          $Path = 'public/asset/share/uploads/images';
          $upload_success = Input::file('fileImage');  
          $result=$this->save($upload_success,$Path);
          return Response::json($result);          
    }

    function save($data,$Path)
    {
          $i=1;
          $msg='';
          $img='';
          $res=array();
          foreach($data as $file)
          {
            /*
            $filename.= $file->getClientOriginalName();          
            $mime_type  = $file->getMimeType(); // Gets this example image/png
            $extension  = $file->getClientOriginalExtension(); // The original extension that the user used example .jpg or .png.
            $file->move($destinationPath, $filename);
            */   
                        
              
            /*validation image, file type*/
            $validator = Validator::make(            
            array(
                'fileImage'=>$file//->getClientOriginalName()
            ),
            array(
               // 'fileImage'=> 'mimes:jpeg,bmp,png'
               'fileImage'=>'image|max:2000',
            )
             );        
            if ($validator->passes())
            {           
                
                $date = date('m-d-Y') ;       
                $filename= $date.'_'.$file->getClientOriginalName();
                $file->move($Path, $filename);
                $upload =  new Uploads;
                $upload->name = $filename;
                $upload->type = $file->getClientmimeType();
                $upload->path = $Path;
                $upload->type_file = 'image';
                $upload->save();

            $res["img"][$i]=$filename; 
                     
            }
            else
            {
                $err=$validator->messages()->all();
                $c=0;
                foreach($err as $f)
                {                    
                $res["msg_error"][$c]=$f;
                $c++;
                }                
                  
                $res['msg_file_error'][$i]= "File name number <b>" .$i."</b> <i>".$file->getClientOriginalName()."</i> was be error!";                
            }
            
            $i++;
          }
           // sleep(1);
         
          //return $msg;
         
          return $res;   
    }
    

}
