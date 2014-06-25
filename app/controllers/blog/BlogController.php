<?php

class BlogController extends BaseController {

 
    protected $layout = 'blog.layouts.default';

    /*
      |--------------------------------------------------------------------------
      | Default Controller
      |--------------------------------------------------------------------------
      |
     */
    public function index() {

         $posts = DB::table("blog_posts")
                ->leftjoin("users","users.id","=","blog_posts.user_id")
                ->leftjoin("uploads","uploads.id","=","blog_posts.image")
                ->where("blog_posts.status","=","publish")
                ->orderBy("blog_posts.id","desc")
                ->distinct()
                ->select(DB::raw('blog_posts.id,blog_posts.title,blog_posts.permalink,blog_posts.sumary,blog_posts.created_at,blog_posts.status,users.username,uploads.name as nameImage,uploads.path as pathImage'))
                ->paginate(4);      
         $this->layout->content = View::make('blog.index')->with('listPosts',$posts);

    }
        
    public function category($id) {

         $categoryName = BlogCategories::where("id","=",$id)->first();
         $this->layout->page = "Category | ".$categoryName->name;
         $posts = DB::table("blog_posts")
                ->leftjoin("blog_post_category","blog_post_category.post_id","=","blog_posts.id")
                ->leftjoin("users","users.id","=","blog_posts.user_id")
                ->leftjoin("uploads","uploads.id","=","blog_posts.image")
                ->where("blog_posts.status","=","publish")
                ->where("blog_post_category.category_id","=",$id)
                ->orderBy("blog_posts.id","desc")
                ->distinct()
                ->select(DB::raw('blog_posts.id,blog_posts.title,blog_posts.permalink,blog_posts.sumary,blog_posts.created_at,blog_posts.status,users.username,uploads.name as nameImage,uploads.path as pathImage'))
                ->paginate(10);      
         $this->layout->content = View::make('blog.index')->with('listPosts',$posts);

    }
        
          
    public function detail($permalink) {
              
        $categories = DB::table('blog_post_category')
            ->join('blog_categories', 'blog_post_category.category_id', '=', 'blog_categories.id')
            ->join('blog_posts', 'blog_post_category.post_id', '=', 'blog_posts.id')             
            ->where('blog_posts.permalink', '=',$permalink) 
            ->select(DB::raw('blog_categories.id,blog_categories.name'))
            ->get();   
        $viewPost = DB::table('blog_post_category')
            ->join('blog_categories', 'blog_post_category.category_id', '=', 'blog_categories.id')
            ->join('blog_posts', 'blog_post_category.post_id', '=', 'blog_posts.id') 
            ->join('users', 'users.id', '=', 'blog_posts.user_id') 
            ->leftjoin('uploads', 'uploads.id', '=', 'blog_posts.image') 
            ->where('blog_posts.permalink', '=',$permalink) 
            ->select(DB::raw('blog_posts.id,blog_posts.title,blog_posts.content,blog_posts.sumary,blog_posts.created_at,blog_posts.status,users.username,uploads.name as nameImage,uploads.path as pathImage'))
            ->first();        
        $listComment = BlogComments::where("post_id","=",$viewPost->id)->where("status","=","publish")->get();

        if($viewPost)
        {    
        $this->layout->page = $viewPost->title;       
        $this->layout->content = View::make('blog.view')->with('categories',$categories)
                                                        ->with('viewPost',$viewPost)
                                                        ->with('listComment',$listComment);
        }else
        {
            return Redirect::route('view_page_notfound');
        }
                
    }

    public function search()
    {
        $this->layout->page = "Result search!";
        $key = Input::get("keyfind");
        $listFind = BlogPosts::where("status","=","publish")->where('title','LIKE','%'.$key.'%')->get();           
        $this->layout->content = View::make('blog.search')->with("listFind",$listFind);
    }

     
   public function postComment()
   {
       $validation = Validator::make(
            Input::all(),
            array(
                'name'=> 'required|min:4',   
                'email'=> 'required|email',      
                'content'=> 'required|max:300',      
                'post_id'=> 'required',
            )
        );
        
        if ($validation->passes())
        {   
          $ar = new BlogComments;
          $ar->fill(Input::all());        
          $ar->content = strip_tags(Input::get('content'));
          $ar->ip = Request::getClientIp();
          //$ar->ip = CommonHelper::get_client_ip();
          $ar->status='unpublish';          
          $ar->save();                   
          Session::flash('msg_flash',trans('messages.comment_success'));            
          return Redirect::back();        
        }
        /* Messages validation*/
          Session::flash('msg_flash',  CommonHelper::printErrors($validation->messages()));
          return Redirect::back()->withInput();
   }    
   
    

}