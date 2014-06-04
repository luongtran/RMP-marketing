<?php

class PageController extends BaseController {

 
    protected $layout = 'frontend.layouts.default';

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
        $this->layout->page = "Recruitment Management Portal";
        $this->layout->title = "Home";
        $slider = DB::table('slider')               
            ->leftjoin('uploads', 'uploads.id', '=', 'slider.image')            
            ->where('slider.status','=','publish')
            ->select(DB::raw('title,caption,link,uploads.name'))
            ->get();
        
        $reason = DB::table('reasons')               
            ->leftjoin('uploads', 'uploads.id', '=', 'reasons.image')            
            ->where('reasons.status','=','publish')
            ->select(DB::raw('title,caption,uploads.name as image'))
            ->get();
        
        $this->layout->content = View::make('frontend.page.index')->with('slider',$slider)
            ->with('reason',$reason);
    }
    public function about() {
        $this->layout->page = "About us";
        $page_title = Pages::where('link','=','about')->first();
        
        $content = Articles::where('permalink','=','about')->first(); 
        if(!$content)
        {
            return Redirect::route('frontend');
        }
        $getImages = Uploads::where('article_id','=',$content->id)->get();
       
        $this->layout->content = View::make('frontend.page.about')
             ->with('content',$content)
             ->with('getImages',$getImages)
             ->with('page_title',$page_title);
                
    }        
      public function features() {
        $this->layout->page = "Features";
        $this->layout->content = View::make('frontend.page.features');
    }
      public function service() {          
        $this->layout->page = "Service";
        $this->layout->content = View::make('frontend.page.service');
    }
      public function requestDemo() {          
        $this->layout->page = "Request Demo";
        $this->layout->content = View::make('frontend.page.requests');
    }
      public function supportPackages() {          
        $this->layout->page = "Support Packages";
        $this->layout->content = View::make('frontend.page.support');
    }
    public function contact() {        
        $this->layout->page = "Contact";
        $this->layout->content = View::make('frontend.page.contact');
    }
    
    public function view($id) {
        
        $content = Articles::where('permalink','=',$id)->first();
        
        if(!$content)
        {
          $content = Articles::where('id','=',$id)->first();          
          if(!$content)
          {
                return Redirect::route('notfound_page');
          }
          else
          {
          $this->layout->page = $content->title;
          }
        }
        else
        {
            $this->layout->page = $content->title;
        }
        
        $getImages = Uploads::where('article_id','=',$content->id)->get();
        $this->layout->content = View::make('frontend.page.view')
             ->with('content',$content)
             ->with('getImages',$getImages);
                
    }
    function notFound()
    {
        $this->layout->page = "Not found!";
        $this->layout->content = View::make('frontend.page.notfound');
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

}