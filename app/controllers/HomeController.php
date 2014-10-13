<?php

class HomeController extends BaseController {

    protected $layout = 'frontend.layouts.new';

    public function view($id) {
        $content = ModuleData::where('status', '=', 'publish')->where('id', '=', $id)->first();
        $document = null;
        $image = null;
        if ($content) {
            $this->layout->page = $content->title;
            $image = Uploads::where('modData_id', '=', $id)->where('type_file', '=', 'image');
            $document = Uploads::where('modData_id', '=', $id)->where('type_file', '=', 'file');
        } else {
            return Redirect::route('view_page_notfound');
        }

        $this->layout->content = View::make('frontend.page.view')
            ->with('content', $content)
            ->with('image', $image)
            ->with('document', $document);
    }

    public function notFound() {
        $this->layout->page = "Not found!";
        $this->layout->content = View::make('frontend.page.notfound');
    }

    public function msg() {
        $this->layout->page = "Message";
        $this->layout->content = View::make('frontend.page.msg');
    }

    public function pageview($page = 'home') {

        $mod = DB::table('page_module')
            ->join('pages', 'page_module.page_id', '=', 'pages.id')
            ->join('module', 'page_module.module_id', '=', 'module.id')
            ->where('module.status', '=', 'publish')
            ->where('pages.link', '=', $page)
            ->orderBy('module.order', 'asc')
            ->select(DB::raw('module.id,module.name as name,module.position,module.mod'))
            ->get();

        $pageinfo = Pages::where('link', '=', $page)->first();

        if ($pageinfo) {
            $this->layout->page = $pageinfo->name;
            $this->layout->content = View::make('frontend.page.pageview')->with('mod', $mod)->with('pageinfo', $pageinfo);
        }
    }

    /* test */

    public function feature() {
        $this->layout->page = "Features";
        $this->layout->content = View::make('frontend.page._features');
    }

}
