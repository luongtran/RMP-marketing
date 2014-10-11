<?php

class ModuleIntroController extends BaseController {

    protected $layout = 'backend.layouts.default';
    private $_moduleName = "Module";
    private $_routeModule = "backend/module-package/";

    public function __construct() {
        
    }

    /*
      |--------------------------------------------------------------------------
      | Categories Controller
      |--------------------------------------------------------------------------
      |
      | You may wish to use controllers instead of, or in addition to, Closure
      | based routes. That's great! Here is an example controller method to
      | get you started. To route to this controller, just add the route:
      |
      |	Route::get('backend/', 'CategoriesController@index');
      |
     */

    public function index($id) {
        $infoMod = Modules::where('id', '=', $id)->first();
        $this->layout->page = $this->_moduleName . ' - ' . $infoMod->name;
        //$module_data= ModuleIntro::where('module_id','=',$id)->orderBy('id','desc')->paginate(10); 
        $module_data = DB::table('module_intro')
                ->join('users', 'users.id', '=', 'module_intro.user_id')
                ->where('module_intro.module_id', '=', $id)
                ->orderBy('module_intro.id', 'desc')
                ->select(DB::raw('module_intro.id,module_intro.title,module_intro.lang_id,module_intro.status,module_intro.created_at,users.username'))->paginate(10);


        $this->layout->content = View::make('backend.module.intro.index')
            ->with('infoMod', $infoMod)
            ->with('module_data', $module_data);
    }

    public function getAdd($id) {
        $infoMod = Modules::where('id', '=', $id)->first();

        $this->layout->page = $this->_moduleName;

        $language = Language::where('status', '=', 'publish')->orderBy('name', 'asc')->get();

        $this->layout->content = View::make('backend.module.intro.add')
            ->with('infoMod', $infoMod)
            ->with('language', $language);
    }

    public function postAdd($id) {
        $validation = Validator::make(
                Input::all(), array(
                'title' => 'required',
                'lang_id' => 'required',
                )
        );

        if ($validation->passes()) {
            $mod = new ModuleIntro;
            $mod->title = Input::get('title');
            $mod->sumary = Input::get('sumary');
            $mod->content = Input::get('content');
            $mod->lang_id = Input::get('lang_id');
            $mod->user_id = Session::get('userID');
            $mod->module_id = $id;
            $mod->status = Input::get('status');
            $mod->save();

            Session::flash('msg_flash', CommonHelper::printMsg('success', trans('messages.create_message')));
            return Redirect::to($this->_routeModule . $id . '/intro');
        }
        Session::flash('msg_flash', CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();
    }

    public function getUpdate($idmod, $idcontent) {
        $infoMod = Modules::where('id', '=', $idmod)->first();
        $this->layout->page = $this->_moduleName . ' - ' . $infoMod->name;
        $language = Language::where('status', '=', 'publish')->orderBy('name', 'asc')->get();
        $getModData = ModuleIntro::where('id', '=', $idcontent)->first();

        $this->layout->content = View::make('backend.module.intro.update')
            ->with('module_data', $getModData)
            ->with('infoMod', $infoMod)
            ->with('language', $language);
    }

    public function postUpdate($idmod, $idcontent) {
        $validation = Validator::make(
                Input::all(), array(
                'title' => 'required',
                'lang_id' => 'required',
                )
        );
        if ($validation->passes()) {
            $mod = ModuleIntro::find($idcontent);
            $mod->title = Input::get('title');
            $mod->sumary = Input::get('sumary');
            $mod->content = Input::get('content');
            $mod->lang_id = Input::get('lang_id');
            $mod->user_id = Session::get('userID');
            $mod->module_id = $idmod;
            $mod->status = Input::get('status');
            $mod->update();
            Session::flash('msg_flash', CommonHelper::printMsg('success', trans('messages.update_message')));
            return Redirect::to($this->_routeModule . $idmod . '/intro');
        }
        Session::flash('msg_flash', CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();
    }

    public function getDelete($idmod, $idcontent) {

        /* $checkModule = DB::table('page_module')
          ->join('pages', 'page_module.page_id', '=', 'pages.id')
          ->join('module', 'page_module.module_id', '=', 'module.id')
          ->join('module_data', 'module.id', '=', 'module_data.module_id')
          ->where('module.id','=',$idmod)
          ->where('module_data.id','=',$idcontent)
          ->count();

          if($checkModule > 0) {
          Session::flash('msg_flash',CommonHelper::printMsg('error',trans('messages.relationship_table',array('name'=>'Page'))));
          return Redirect::back();
          }
          else{ */
        //CategoriesModuleData::where('moduleData_id','=',$idcontent)->delete();
        $at = ModuleIntro::where('id', '=', $idcontent)->delete();
        Uploads::where('modIntro_id', '=', $idcontent)->delete();
        Session::flash('msg_flash', CommonHelper::printMsg('success', trans('messages.delete_message')));
        return Redirect::to($this->_routeModule . $idmod . '/intro');
        // }
    }

    public function action($id) {
        $check = Input::get('checkID');
        if ($check) {
            $getAction = Input::get('action');
            switch ($getAction) {
                case'publish':
                    foreach ($check as $key => $value) {
                        $this->changeStatus($getAction, $value);
                    }
                    break;
                case'unpublish':
                    foreach ($check as $key => $value) {
                        $this->changeStatus($getAction, $value);
                    }
                    break;
                case'delete':
                    foreach ($check as $key => $value) {
                        $this->getDelete($id, $value);
                    }
                    break;
                default:
                    break;
            }
            return Redirect::to($this->_routeModule . $id . '/intro');
        } else {
            Session::flash('msg_flash', CommonHelper::printMsg('error', trans('messages.nochoose_message')));
            return Redirect::to($this->_routeModule . $id . '/intro');
        }
    }

    public function changeStatus($status, $id) {
        $ar = ModuleIntro::find($id);
        $ar->status = $status;
        $ar->update();
        Session::flash('msg_flash', CommonHelper::printMsg('error', trans('messages.changestatus_message')));
    }

}
