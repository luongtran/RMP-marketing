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
            ->join('uploads', 'uploads.id', '=', 'slider.image')            
            ->where('slider.status','=','publish')
            ->select(DB::raw('title,caption,link,uploads.name'))
            ->get();
        $this->layout->content = View::make('frontend.page.index')->with('slider',$slider);
    }
    public function about() {
        $this->layout->page = "About us";
        $content = Articles::where('permalink','=','about')->first();
        
        $getImages = Uploads::where('article_id','=',$content->id)->get();
        $this->layout->content = View::make('frontend.page.about')
             ->with('content',$content)
             ->with('getImages',$getImages);
                
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

}