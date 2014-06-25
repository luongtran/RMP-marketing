<?php

class BlogPostsController extends BaseController {

    protected $layout = 'backend.layouts.default';
    /*
      |--------------------------------------------------------------------------
      |      
     */
      public function __construct() {
        

      } 

    public function index() {
        $this->layout->page = "Post";

        $getList = DB::table('blog_post_category')
            ->join('blog_categories', 'blog_post_category.category_id', '=', 'blog_categories.id')
            ->join('blog_posts', 'blog_post_category.post_id', '=', 'blog_posts.id')   
            ->join('users', 'users.id', '=', 'blog_posts.user_id')
            ->orderBy('blog_posts.id', 'desc') 
            ->distinct()
            ->select(DB::raw('blog_posts.id,blog_posts.title,blog_posts.content,blog_posts.created_at,users.username,blog_posts.status'))
            ->paginate(10);      

        $this->layout->content = View::make('blog.posts.index')->with('listPost',$getList);
       
    }
   

    public function view($id)
    {    
        $this->layout->page = "View post | Blog";         
        $categories = DB::table('blog_post_category')
            ->join('blog_categories', 'blog_post_category.category_id', '=', 'blog_categories.id')
            ->join('blog_posts', 'blog_post_category.post_id', '=', 'blog_posts.id')             
            ->where('blog_posts.id', '=',$id) 
            ->select(DB::raw('blog_categories.id,blog_categories.name'))
            ->get();   
        $viewPost = DB::table('blog_post_category')
            ->join('blog_categories', 'blog_post_category.category_id', '=', 'blog_categories.id')
            ->join('blog_posts', 'blog_post_category.post_id', '=', 'blog_posts.id') 
            ->leftjoin('uploads', 'uploads.id', '=', 'blog_posts.image') 
            ->where('blog_posts.id', '=',$id) 
            ->select(DB::raw('blog_posts.id,blog_posts.title,blog_posts.content,blog_posts.sumary,blog_posts.created_at,blog_posts.status,uploads.name as nameImage,uploads.path as pathImage'))
            ->first();          
        $this->layout->content = View::make('blog.posts.view')->with('categories',$categories)
                                                              ->with('viewPost',$viewPost);
    }
    

    public function getAdd()
    {    
        $this->layout->page = "Add a new article";         
        $categories = BlogCategories::where('status','=','publish')->get();      
        $this->layout->content = View::make('blog.posts.add')->with('categories',$categories);
    }
    
    public function postAdd()
    {       
        $validation = Validator::make(
            Input::all(),
            array(
                'title'=> 'required|min:5',                                
                'category'=> 'required', 
                'image'=>'image',                               
            )
        );
        
        if ($validation->passes())
        {        
            $posts = new BlogPosts;     
            $posts->fill(Input::all());
            $posts->user_id = Session::get('userID');
            $posts->save();                    
            $permalink = CommonHelper::transPermalink(Input::get('title')).'-'.$posts->id;
            $posts->permalink = $permalink;    
            $posts->save();       
            /*save category*/
            $select = Input::get('category');
            if($select){                                 
            foreach($select as $key=>$value)
              {
               $PA= new BlogPostCategory;    
               $PA->post_id = $posts->id;
               $PA->category_id = $value;                              
               $PA->save();
              }
             }
            /*upload image*/          
            if(Input::file('image'))
            {
              $Path  = 'public/asset/share/uploads/images/blog/';
              $Image = new ImagesController();
              $posts->image = $Image->store(Input::file('image'), $Path,'image');            
              $posts->save();            
            }
            $msg_success= CommonHelper::printMsg('success',trans('messages.create_message'));            
            Session::flash('msg_flash',$msg_success);            
            return Redirect::route('blog_post'); 
           
        }
        /* Messages validation*/
         Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
         return Redirect::back()->withInput();
    }
    
      public function getupdate($id)
    {        
        $this->layout->page = "Upadte post";           
        $post = DB::table('blog_post_category')
            ->join('blog_categories', 'blog_post_category.category_id', '=', 'blog_categories.id')
            ->join('blog_posts', 'blog_post_category.post_id', '=', 'blog_posts.id') 
            ->leftjoin('uploads', 'uploads.id', '=', 'blog_posts.image') 
            ->where('blog_posts.id', '=',$id) 
            ->select(DB::raw('blog_posts.id,blog_posts.title,blog_posts.content,blog_posts.sumary,blog_posts.created_at,blog_posts.status,uploads.name as nameImage,uploads.path as pathImage'))
            ->first();   

        $category = DB::table('blog_post_category')
            ->join('blog_categories', 'blog_post_category.category_id', '=', 'blog_categories.id')
            ->join('blog_posts', 'blog_post_category.post_id', '=', 'blog_posts.id')             
            ->where('blog_posts.id', '=',$id) 
            ->select(DB::raw('blog_categories.id,blog_categories.name'))
            ->get();  
        $categories = BlogCategories::where('status','=','publish')->get();          
       
        
        $this->layout->content = View::make('blog.posts.update')->with('post',$post)
             ->with('categories',$categories)
             ->with('category',$category);
          
    }
      public function postUpdate($id)
    {       
          $validation = Validator::make(
            Input::all(),
            array(
                'title'=> 'required|min:5',   
                'category'=> 'required',
                'image'=>'image',        
            )
        );
        
        if ($validation->passes())
        {   
          $ar=BlogPosts::find($id);
          $ar->title=Input::get('title');
          $ar->content=Input::get('content');
          $ar->sumary=Input::get('sumary');
          $ar->status=Input::get('status');          
          $ar->update(); 
          /*Update category*/
          $PostCategory = BlogPostCategory::where('post_id','=',$id)->get();
          foreach($PostCategory as $ctA)
          {
             BlogPostCategory::where('post_id','=',$ctA->post_id)->delete();
          }
          foreach (Input::get('category') as $key=>$value)
          {
               $CA= new BlogPostCategory;    
               $CA->post_id = $ar->id;
               $CA->category_id = $value;                              
               $CA->save();
          }
          /* Update image */             
      
        if(Input::file('image'))
            { 
               Uploads::where('id','=',$ar->image)->delete();             
               $Path = 'public/asset/share/uploads/images/blog';
               $Image= new ImagesController();
               $ar->image = $Image->store(Input::file('image'), $Path,'image'); 
               $ar->save();
            }
                      
          Session::flash('msg_flash',CommonHelper::printMsg('success',trans('messages.update_message'))); 
          return Redirect::route('blog_post');
        }
        Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();
     }
     
      public function getDelete($id)
    {      
          /*delete category in article*/
          $deCt = BlogPostCategory::where('post_id','=',$id)->delete();
          /* delete article */
          $ar=BlogPosts::where('id','=',$id)->delete();          
          Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.delete_message'))); 
          return Redirect::route('blog_post');
     }
    
     public function filter($id)
     {
        $this->layout->page = "Blog filter";        
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
         $ar= BlogPosts::find($id);
         $ar->status = $status;
         $ar->update();
         Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.changestatus_message')));   
     }

     
 // public function search() {
 //        $this->layout->page = "Result article";        
 //        $getList = DB::table('categories_articles')
 //            ->join('categories', 'categories_articles.categories_id', '=', 'categories.id')
 //            ->join('articles', 'categories_articles.articles_id', '=', 'articles.id')   
 //            ->join('users', 'articles.user_id', '=', 'users.id')
 //            ->orderBy('articles.id', 'desc') 
 //            ->where('title', 'like','%'.Input::get('keyfind').'%') 
 //            ->select(DB::raw(' DISTINCT articles_id as id,title,articles.permalink,users.username as create_by,articles.status as status'))
 //            ->paginate(10);
 //        $filterCategories  =  Categories::all();        
 //        $this->layout->content = View::make('backend.articles.index')->with('listArticles',$getList)
 //             ->with('filterCategory',$filterCategories);
       
 //    }  



//end class
}