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
                ->select(DB::raw('DISTINCT blog_posts.id,blog_posts.title,blog_posts.sumary,blog_posts.created_at,blog_posts.status,users.username,uploads.name as nameImage,uploads.path as pathImage'))
                ->paginate(4);      
         $this->layout->content = View::make('blog.index')->with('listPosts',$posts);

    }
        

          
    public function detail($id) {
        
         $this->layout->content = View::make('blog.view');
                
    }

    public function notFound()
    {
        $this->layout->page = "Not found!";
        $this->layout->content = View::make('frontend.page.notfound');
    }

     public function msg()
    {
        $this->layout->page = "Message";
        $this->layout->content = View::make('frontend.page.msg');
    }
    
    
    public function pageview($page='home'){       
            
            
            $mod = DB::table('page_module')
            ->join('pages', 'page_module.page_id', '=', 'pages.id')
            ->join('module', 'page_module.module_id', '=', 'module.id')
            ->where('module.status','=','publish')
            ->where('pages.link','=',$page)
            ->orderBy('module.order','asc')
            ->select(DB::raw('module.id,module.name as name,module.position,module.mod'))
            ->get();
       
            $pageinfo = Pages::where('link','=',$page)->first();                
            
            if($pageinfo){
            $this->layout->page = $pageinfo->name;
            $this->layout->content = View::make('frontend.page.pageview')->with('mod',$mod)->with('pageinfo',$pageinfo);
            }
    }


    /*test*/

       public function feature() {
        $this->layout->page = "Features";
        $this->layout->content = View::make('frontend.page._features');
    }

}