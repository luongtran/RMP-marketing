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

    function store($file, $Path, $type_file) {
        $date = date('m-d-Y');
        $filename = $date . '_' . $file->getClientOriginalName();
        $destination = public_path($Path);
        $file->move($destination, $filename);
        $upload = new Uploads;
        $upload->name = $filename;
        $upload->type = $file->getClientmimeType();
        $upload->path = $Path;
        $upload->type_file = $type_file;
        $upload->save();
        return $upload->id;
    }

    function storeOld($file, $Path, $id, $type_file) {
        $checkImage = Uploads::where('id', '=', $id)->where('type_file', '=', $type_file)->first();
        if ($checkImage) {
            $ar = Uploads::find($checkImage->id);
            $ar->delete();
        }
        return $this->store($file, $Path);
    }

    function storeSingle($file, $Path, $content_id, $type_content, $type_file) {
        $date = date('m-d-Y');
        $filename = $date . '_' . $file->getClientOriginalName();
        $destination = public_path($Path);
        $file->move($destination, $filename);
        $upload = new Uploads;
        $upload->name = $filename;
        $upload->type = $file->getClientmimeType();
        $upload->path = $Path;
        $upload->type_file = $type_file;
        $upload->$type_content = $content_id;
        $upload->save();
    }

    function storeMulti($file, $Path, $content_id, $type_content, $type_file) {
        foreach ($file as $fileinfo) {
            $date = date('m-d-Y');
            $filename = $date . '_' . $fileinfo->getClientOriginalName();
            $destination = public_path($Path);
            $fileinfo->move($destination, $filename);
            $upload = new Uploads;
            $upload->name = $filename;
            $upload->type = $fileinfo->getClientmimeType();
            $upload->path = $Path; // ltrim($Path,"public/");
            $upload->type_file = $type_file;
            $upload->$type_content = $content_id;
            $upload->save();
        }
    }

    function checkImageOld($file, $Path, $article_id, $type_file) {


        $checkImage = Uploads::where('article_id', '=', $article_id)->where('type_file', '=', $type_file)->get();
        foreach ($checkImage as $check) {
            $ar = Uploads::find($check->id);
            $ar->delete();
        }

        $this->storeMulti($file, $Path, $article_id);
    }

    public function getDelete($id) {

        echo $id;

        $ar = Uploads::find($id);
        try {

            $pathDel = public_path($ar->path . $ar->name);
            $public_path = public_path($ar->path . '/' . $ar->name);
            File::delete($public_path); //unlink($public_path);  
            $ar->delete();
            Session::flash('msg_flash', CommonHelper::printMsg('error', trans('messages.delete_message')));
            return Redirect::route('backend_article');
        } catch (Exception $e) {
            Session::flash('msg_flash', CommonHelper::printMsg('error', 'Not delete this file !'));
            return Redirect::back();
        }
    }

}
