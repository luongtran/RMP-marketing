<?php

class ImagesController extends BaseController {

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
 
    function store($file,$Path)
    {       
                $date = date('m-d-Y') ;       
                $filename= $date.'_'.$file->getClientOriginalName();
                $file->move($Path, $filename);
                $upload =  new Uploads;
                $upload->name = $filename;
                $upload->type = $file->getClientmimeType();
                $upload->path =  ltrim($Path,"public/");
                $upload->save();
                return $upload->id;                
    }
     function storeOld($file,$Path,$id)
    {          
            $checkImage = Uploads::where('id','=',$id)->first();
            if($checkImage)
            {
            $ar=Uploads::find($checkImage->id);
            $ar->delete();  
            }
            return $this->store($file, $Path);
    }
    
    function storeMulti($file,$Path,$content_id,$type_content)
    {                            
              foreach($file as $fileinfo)
                {                            
                $date = date('m-d-Y') ;       
                $filename= $date.'_'.$fileinfo->getClientOriginalName();
                $fileinfo->move($Path, $filename);
                $upload =  new Uploads;
                $upload->name = $filename;
                $upload->type = $fileinfo->getClientmimeType();
                $upload->path =  ltrim($Path,"public/");
                $upload->$type_content = $content_id;
                $upload->save();              
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
