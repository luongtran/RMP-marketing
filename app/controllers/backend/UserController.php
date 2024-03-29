<?php

class UserController extends BaseController {

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

    public function __construct() {
        
    }

    public function index() {
        $this->layout->page = "Users";
        $user = DB::table('users')
            ->join('permission', 'permission.id', '=', 'users.permission')
            ->orderBy('id', 'desc')
            ->select(DB::raw('users.id,users.username,users.created_at,users.status,permission.name as permission'))
            ->paginate(10);
        //$user = Users::paginate(10);
        $this->layout->content = View::make('backend.users.index')->with('getUser', $user);
    }

    public function getAdd() {
        $this->layout->page = "Add a new user";
        $this->layout->content = View::make('backend.users.add');
    }

    public function postAdd() { /* filter all tag input   same:script... */
        // Input::merge(array_map('trim', Input::all()));

        $rule = array(
            'username' => 'required|min:5|unique:users',
            'password' => 'required|min:5|confirmed',
            'email' => 'required|email|unique:users',
            'phone' => 'numeric',
        );
        $validation = Validator::make(Input::all(), $rule);
        if ($validation->passes()) {

            $user = new Users;
            $user->username = strip_tags(Input::get('username'));
            $user->password = Hash::make(Input::get('password'));
            $user->email = Input::get('email');
            $user->sex = Input::get('sex');
            $user->address = Input::get('address');
            $user->phone = Input::get('phone');
            $user->permission = Input::get('permission');
            $user->status = Input::get('status');

            $user->company = Input::get('company');
            $user->first_name = Input::get('firstname');
            $user->last_name = Input::get('lastname');
            $user->save();
            Session::flash('msg_flash', CommonHelper::printMsg('succes', trans('messages.create_message')));
            return Redirect::route('backend_user');
        }
        Session::flash('msg_flash', CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();
    }

    public function getUpdate($id) {
        $this->layout->page = "Update user";
        $getUser = Users::find($id);
        $this->layout->content = view::make('backend.users.update')->with('getUser', $getUser);
    }

    public function postUpdate($id) {
        $rule = array(
            'password' => 'min:5|confirmed',
            'email' => 'email', //'email'=>'email|unique:users',
            'phone' => 'numeric',
        );
        $validation = Validator::make(Input::all(), $rule);
        if ($validation->passes()) {
            $user = Users::find($id);
            if (Input::get('password')) {
                $user->password = Hash::make(Input::get('password'));
            }
            $user->email = Input::get('email');
            $user->sex = Input::get('sex');
            $user->address = Input::get('address');
            $user->phone = Input::get('phone');
            $user->permission = Input::get('permission');
            $user->status = Input::get('status');

            $user->company = Input::get('company');
            $user->first_name = Input::get('firstname');
            $user->last_name = Input::get('lastname');
            $user->update();
            Session::flash('msg_flash', CommonHelper::printMsg('succes', trans('messages.update_message')));
            return Redirect::route('backend_user');
        }
        Session::flash('msg_flash', CommonHelper::printErrors($validation->messages()));
        return Redirect::back()->withInput();
    }

    public function getDelete($id) {
        $ar = Users::find($id);
        $ar->delete();
        Session::flash('msg_flash', CommonHelper::printMsg('error', trans('messages.delete_message')));
        return Redirect::route('backend_user');
    }

    public function action() {
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
                        $this->getDelete($value);
                    }
                    break;
                default:
                    break;
            }
            return Redirect::back();
        } else {
            Session::flash('msg_flash', CommonHelper::printMsg('error', trans('messages.nochoose_message')));
            return Redirect::back();
        }
    }

    public function changeStatus($status, $id) {
        $ar = Users::find($id);
        $ar->status = $status;
        $ar->update();
        Session::flash('msg_flash', CommonHelper::printMsg('error', trans('messages.changestatus_message')));
    }

}
