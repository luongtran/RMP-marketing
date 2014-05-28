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
    
    
    function storeMulti($file,$Path,$article_id)
    {        
            // use controller article                 
              foreach($file as $fileinfo)
                {
                if($fileinfo==null)
                {
                  break;  
                }
                else
                {                
                $date = date('m-d-Y') ;       
                $filename= $date.'_'.$fileinfo->getClientOriginalName();
                $fileinfo->move($Path, $filename);
                $upload =  new Uploads;
                $upload->name = $filename;
                $upload->type = $fileinfo->getClientmimeType();
                $upload->path = $Path;
                $upload->article_id = $article_id;
                $upload->save();
                }
                // $group->upload_id=$upload->id;
                }
    }
    
    function checkImageOld($file,$Path,$article_id)
    {
       $checkImage = Uploads::where('article_id','=',$article_id)->get();
       foreach($checkImage as $check)
       {           
          $ar=Uploads::find($check->id);
          $ar->delete();  
       }
      
       $this->storeMulti($file,$Path,$article_id);
    }
    
    
      public function getDelete($id)
    {        
          $ar=Uploads::find($id);
          $ar->delete();        
          Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.delete_message'))); 
          return Redirect::route('backend_article');
     }
    
    
    


}
