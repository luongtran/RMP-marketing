<?php

class SupportController extends BaseController {

    protected $layout = 'backend.layouts.default';
      public function __construct() {
        
        $ROLE = SharedController::ROLE_ADMIN;          
        $classUser =new UserController();        
        if($classUser->getProfile())
        {
            if($classUser->getProfile()->permission < $ROLE)
            {
                //Session::flash('msg_flash',"You can't access this function!");                
                echo "You can't access permission "; 
                die();    
            }
        }
        else
        {
            echo 'Please login <a href="'.Request::root().'/backend/login">Login</a>';
            
            die();
        }
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
        $this->layout->page = "Support";                
        $getSupport = Support::orderBy('order','asc')->paginate(10);        
        $this->layout->content = View::make('backend.support.index')->with('getSupport',$getSupport);        
    }
    
    public function getAdd()
    {    
        $this->layout->page = "Add a new support";         
        $categories = Categories::where('status','=','publish')->get();          
        $this->layout->content = View::make('backend.support.add')->with('categories',$categories);
    }
    
    public function postAdd()
    {       
        $validation = Validator::make(
            Input::all(),
            array(
                'name'=> 'required',              
                'detail'=> 'required',
                'description'=> 'required',
                'package_type'=> 'required',              
                'order'=> 'numeric',
            )
        );
        
        if ($validation->passes())
        {        
            $support = new Support;
            $support->name = Input::get('name');
            $support->description = Input::get('description');
            $support->detail = Input::get('detail');
            $support->cost = Input::get('cost');
            $support->order = Input::get('order');
            $support->package_type = Input::get('package_type');
            $support->status = Input::get('status');
            $support->save();            
            
            $msg_success= CommonHelper::printMsg('success',trans('messages.create_message'));            
            Session::flash('msg_flash',$msg_success);            
            return Redirect::route('backend_support');
           
        }
        /* Messages validation*/
         Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
         return Redirect::back()->withInput();
    }
    
      public function getupdate($id)
    {        
        $this->layout->page = "Update support";           
        $getSupport =Support::where('id','=',$id)->first();        
        $this->layout->content = View::make('backend.support.update')->with('getSupport',$getSupport);
    }
      public function postUpdate($id)
    {       
          $validation = Validator::make(
            Input::all(),
            array(
               'name'=> 'required',              
                'detail'=> 'required',
                'description'=> 'required',
                'package_type'=> 'required',              
                'order'=> 'numeric',        
            )
        );
        
        if ($validation->passes())
        {   
            $support=Support::find($id);
            $support->name = Input::get('name');
            $support->description = Input::get('description');
            $support->detail = Input::get('detail');
            $support->cost = Input::get('cost');
            $support->order = Input::get('order');
            $support->package_type = Input::get('package_type');
            $support->status = Input::get('status');    
            $support->update(); 
         
          Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.update_message'))); 
          return Redirect::route('backend_support',array('id'=>$id));
        }
        Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();
     }
     
      public function getDelete($id)
    {        
          $ar=Support::find($id);
          $ar->delete();        
          Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.delete_message'))); 
          return Redirect::route('backend_support');
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
         $ar= Support::find($id);
         $ar->status = $status;
         $ar->update();
         Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.changestatus_message')));   
     }


//     
//    
//     
//     public function getUpload()
//     {
//         $this->layout->content = View::make('backend.articles.upload');
//     }
//     public function postUpload()
//     {     
////            $file = Input::file('file');
////            $file->fit(300, 200);
////            $destinationPath = 'uploads';
////            $filename = $_FILES["file"]["name"];
////            //$filename = $file->getClientOriginalName();
////            //$extension =$file->getClientOriginalExtension();
////            $upload_success = Input::file('file')->move($destinationPath, $filename);
////            if( $upload_success ) {
////               $msg=" success upload";
////            } else {
////               $msg="have error  while upload";
////            } 
//          
//          $destinationPath = 'public/uploads/share';
//          $upload_success = Input::file('file');  
//          $i=1;
//          $msg='';
//          foreach($upload_success as $file)
//          {
//            $date = new DateTime();            
//            $filename= $date->getTimestamp().'_';
//            $filename.= $file->getClientOriginalName(); 
//           // $filename.  = $file->getClientOriginalName(); // Original file name that the end user used for it.
//            $mime_type  = $file->getMimeType(); // Gets this example image/png
//            $extension  = $file->getClientOriginalExtension(); // The original extension that the user used example .jpg or .png.
//            //$filename=rand(100,900);            
//           
//           //echo "</br>"   ;
//           //var_dump($file); 
//            
//            $validator = Validator::make(
//            array(
//                'file'=>$file//->getClientOriginalName()
//            ),
//            array(
//                'file'=> 'image'
//            )
//             );        
//            if ($validator->passes())
//            {     
//            $check = $file->move($destinationPath, $filename);   
//            $msg.="<img src='".Request::root()."/uploads/share/".$filename."' width='100' height='100'>";
//            }
//            else
//            {
//                $msg=$validator->messages();
//                
//                $msg.= '</br><p style="color:red;">File name '.$i.' was be error:'.$file->getClientOriginalName().'</p>';
//            }
//            $i++;
//                                
//            
//          }
//         
//         return $msg;
//   
//     }
//     
//     
     
     
 public function search() {
        $this->layout->page = "Result article";        
        $getList = DB::table('categories_articles')
            ->join('categories', 'categories_articles.categories_id', '=', 'categories.id')
            ->join('articles', 'categories_articles.articles_id', '=', 'articles.id')   
            ->join('users', 'articles.user_id', '=', 'users.id')
            ->orderBy('articles.id', 'desc') 
            ->where('title', 'like','%'.Input::get('keyfind').'%') 
            ->select(DB::raw(' DISTINCT articles_id as id,title,articles.permalink,users.username as create_by,articles.status as status'))
            ->paginate(10);
        $filterCategories  =  Categories::all();        
        $this->layout->content = View::make('backend.articles.index')->with('listArticles',$getList)
             ->with('filterCategory',$filterCategories);
       
    }     
   

}