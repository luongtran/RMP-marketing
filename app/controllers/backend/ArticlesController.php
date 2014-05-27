<?php

class ArticlesController extends BaseController {

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
        $this->layout->page = "Article";
        /*$getList = Articles::all();*/
        
        /*get record the fist
        $getList = Articles::where('articleID', '=', 1)->first();*/
        
        /*paging 
        $getList = Articles::paginate(2);    
          or
        $getList = Articles::where('articleID', '>', 1)->paginate(1);
          here view  use      <?php echo $listArticle->links(); ?>
        */
        /*Articles::find(Input::get('advert_id'));*/
        
        $getList = DB::table('categories_articles')
            ->join('categories', 'categories_articles.categories_id', '=', 'categories.id')
            ->join('articles', 'categories_articles.articles_id', '=', 'articles.id')   
            ->join('users', 'articles.user_id', '=', 'users.id')
            ->orderBy('articles.id', 'desc') 
            ->select(DB::raw(' DISTINCT articles_id as id,title,articles.permalink,users.username as create_by,articles.status as status'))
            ->paginate(10);
        $filterCategories =  Categories::all();
        
        $this->layout->content = View::make('backend.articles.index')->with('listArticles',$getList)
             ->with('filterCategory',$filterCategories);
        //$this->layout->content = View::make('front_end.vacancies', compact('vacancies'), compact('clients'))->with('fairs', $fairs);
    }
     public function getArticle($id)
    {    
        $this->layout->page = "View article";  
        $article=DB::table('categories_articles')
            ->join('categories', 'categories_articles.categories_id', '=', 'categories.id')
            ->join('articles', 'categories_articles.articles_id', '=', 'articles.id')   
            ->join('users', 'articles.user_id', '=', 'users.id')
            ->where('articles.id','=',$id)  
            ->select(DB::raw('articles_id as id,title,articles.permalink,content,articles.description,keyword,users.username as create_by,articles.status as status,articles.created_at'))
            ->first();            
        
        $lCategories = DB::table('categories_articles')
            ->join('categories', 'categories_articles.categories_id', '=', 'categories.id')
            ->where('categories_articles.articles_id','=',$id)    
            ->select(DB::raw('categories.id,categories.name'))->get();  
        
        $this->layout->content = View::make('backend.articles.view')->with('article',$article)->with('listCategories',$lCategories);
    }    
    public function getAdd()
    {    
        $this->layout->page = "Add new article";         
        $categories = Categories::all();  
        $this->layout->content = View::make('backend.articles.add')->with('categories',$categories);
    }
    
    public function postAdd()
    {       
        $validation = Validator::make(
            array(
                'title'=>Input::get('title'),
                'permalink'=>Input::get('permalink'),
                'content'=>Input::get('content'),
                'description'=>Input::get('description'),
                'keyword'=>Input::get('keyword'),
                'category'=>Input::get('category'),
                'group_uploads'=>Input::file('fileimages'),
                'status'=>Input::get('status'),                
            ),
            array(
                'title'=> 'required|min:5',
                'permalink'=> 'unique:articles',                
                'content'=> 'min:10',
                'category'=> 'required',
                'keyword'=> 'max:50',
                'description'=>'max:100',
                //'group_uploads'=>'mimes:jpeg,bmp,png,gif',
            )
        );
        
        if ($validation->passes())
        {        
            $article = new Articles;
            $article->title = Input::get('title');
            $article->permalink = Input::get('permalink');
            $article->content = Input::get('content');
            $article->description = Input::get('description');
            $article->keyword = Input::get('keyword');
            $article->user_id = 1;
            $article->status = Input::get('status');
            $article->save();            
            /*save category*/
            $select = Input::get('category');                                 
            foreach($select as $key=>$value)
            {
               $CA= new CategoriesArticles;    
               $CA->articles_id = $article->id;
               $CA->categories_id = $value;                              
               $CA->save();
            }
            /*upload image*/
//            $upload = Input::get('fileimages'); 
//            $Path = 'public/asset/share/uploads/images/';
//            
//            if(isset($_POST['fileimages']))
//            {
//                $Image= new ImagesController();
//                $Image->store(Input::file('fileimages'), $Path);
//            }
            
            $msg_success= $this->printMsg('success',trans('messages.create_message'));            
            Session::flash('msg_flash',$msg_success);
            
            return Redirect::route('backend_article');
        }
        /* Messages validation*/
         $msga = $validation->messages();
         $str="";
         foreach($msga->all() as $er)
         {
           $str.= $this->printMsg('error',$er);                    
         }
         Session::flash('msg_flash', $str);
         return Redirect::back()->withInput();
    }
    
      public function getupdate($id)
    {        
        $this->layout->page = "Upadte article";           
        $getArticle = Articles::where('id','=',$id)->first(); 
        
        $category = DB::table('categories_articles')
            ->join('categories', 'categories_articles.categories_id', '=', 'categories.id')
            ->where('categories_articles.articles_id','=',$id)    
            ->select(DB::raw('categories.id,categories.name'))->get(); 
        $categories = Categories::all();  
        
        $this->layout->content = View::make('backend.articles.update')->with('article',$getArticle)
             ->with('categories',$categories)
             ->with('category',$category);
          
    }
      public function postUpdate($id)
    {       
          $validation = Validator::make(
            array(
                'title'=>Input::get('title'),
                'permalink'=>Input::get('permalink'),
                'content'=>Input::get('content'),
                'description'=>Input::get('description'),
                'keyword'=>Input::get('keyword'),
                'category'=>Input::get('category'),
                'group_uploads'=>Input::file('fileimages'),
                'status'=>Input::get('status'),                
            ),
            array(
                'title'=> 'required|min:5',
                'permalink'=> 'unique:articles',                
                'content'=> 'min:10',
                'category'=> 'required',
                'keyword'=> 'max:50',
                'description'=>'max:100',
                //'group_uploads'=>'mimes:jpeg,bmp,png,gif',
            )
        );
        
        if ($validation->passes())
        {   
          $ar=Articles::find($id);
          $ar->title=Input::get('title');
          $ar->content=Input::get('content');
          $ar->permalink=Input::get('permalink');
          $ar->description=Input::get('description');
          $ar->keyword=Input::get('keyword');
          $ar->status=Input::get('status');          
          $ar->update(); 
          
          $categoryArticle = CategoriesArticles::where('articles_id','=',$id)->get();
          foreach($categoryArticle as $ctA)
          {
             CategoriesArticles::where('articles_id','=',$ctA->articles_id)->delete();
          }
          foreach (Input::get('category') as $key=>$value)
          {
               $CA= new CategoriesArticles;    
               $CA->articles_id = $ar->id;
               $CA->categories_id = $value;                              
               $CA->save();
          }
          
          Session::flash('msg_flash',$this->printMsg('update',trans('messages.update_message'))); 
          return Redirect::route('backend_article');
        }        
         $msga = $validation->messages();
         $str="";
         foreach($msga->all() as $er)
         {
           $str.= $this->printMsg('error',$er);                    
         }
         Session::flash('msg_flash', $str);
        return Redirect::back()->withInput();
     }
     
      public function getDelete($id)
    {        
          $ar=Articles::find($id);
          $ar->delete();        
          Session::flash('msg_flash',$this->printMsg('error',trans('messages.delete_message'))); 
          return Redirect::route('backend_article');
     }
    
     public function filter($id)
     {
        $this->layout->page = "Article filter";        
        $getList = DB::table('categories_articles')
            ->join('categories', 'categories_articles.categories_id', '=', 'categories.id')
            ->join('articles', 'categories_articles.articles_id', '=', 'articles.id')   
            ->join('users', 'articles.user_id', '=', 'users.id')
            ->where('categories_id','=',$id)
            ->orderBy('articles.id', 'desc') 
            ->select(DB::raw(' DISTINCT articles_id as id,title,articles.permalink,users.username as create_by,articles.status as status'))
            ->paginate(10);
        $filterCategories =  Categories::all();        
        $this->layout->content = View::make('backend.articles.index')->with('listArticles',$getList)
             ->with('filterCategory',$filterCategories);  
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
     
     
      
    public function printMsg($type,$msg)
    {
       switch($type)
       {
         case 'success':         
             $str ='<div class="alert alert-info  alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <a class="alert-link" >'.$msg.'</a>
               </div>';
             break;
         
         case 'error':
             $str ='<div class="alert alert-danger  alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <a class="alert-link" >'.$msg.'</a>
               </div>';
             break;
         
         
         default:
             $str ='<div class="alert alert-info  alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <a class="alert-link" >'.$msg.'</a>
               </div>';
             break;
       }
       return $str;
    }

}