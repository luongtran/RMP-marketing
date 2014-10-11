<?php

class SettingController extends BaseController {

    protected $layout = 'backend.layouts.default';

    public function __construct() {
        
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

        $this->layout->page = "Setting";
        $getSetting = Settings::all();
        $this->layout->content = View::make('backend.setting.index')->with('getSetting', $getSetting);
    }

    public function postUpdate() {
        $getInput = Input::all();
        foreach ($getInput as $k => $v) {
            DB::table('setting')
                ->where('name', $k)
                ->update(array('value' => $v));
        }
        Session::flash('msg_flash', CommonHelper::printMsg('success', trans('messages.update_message')));
        $getSetting = Settings::all();
        $view = View::make('backend.setting.index1')->with('getSetting', $getSetting)->render();
        return $view;
    }

    public function createData() {
        DB::table('setting')->truncate();
        DB::table('setting')->insert(array(
            array('name' => 'website_name', 'description' => 'Website Name'),
            array('name' => 'slogan', 'description' => 'Slogan'),
            array('name' => 'footer_text', 'description' => 'Footer'),
            array('name' => 'email_host', 'description' => 'Email Host'),
            array('name' => 'email_port', 'description' => 'Email Port'),
            array('name' => 'email_encryption', 'description' => 'Email Encryption'),
            array('name' => 'email_username', 'description' => 'Email Username'),
            array('name' => 'email_password', 'description' => 'Email Password'),
            array('name' => 'email_contact', 'description' => 'E-mail'),
            array('name' => 'business_hours', 'description' => 'Businness Hours'),
            array('name' => 'address', 'description' => 'Address'),
            array('name' => 'phone', 'description' => 'Phone'),
            array('name' => 'facebook', 'description' => 'Facebook'),
            array('name' => 'twitter', 'description' => 'Twitter'),
            array('name' => 'google', 'description' => 'Google'),
            array('name' => 'google_map', 'description' => 'Google Map'),
        ));
        return Redirect::route('backend_setting');
    }

}
