<?php

use Illuminate\Auth\UserInterface;
use Illuminate\Auth\Reminders\RemindableInterface;

/* =========================================== */

class Users extends Eloquent implements UserInterface, RemindableInterface {

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'users';

    public function checklogin($username, $password) {
        $array = array('username' => $username, 'password' => $password);
        $rules = array('username' => "email");
        if (Validator::make($array, $rules)->fails())
            ;
        $check = Users::where('username', '=', $username)->count();
        if ($check > 0)
            return true;
        else
            return false;
    }

    public function getAuthIdentifier() {
        
    }

    public function getAuthPassword() {
        
    }

    public function getRememberToken() {
        
    }

    public function getRememberTokenName() {
        
    }

    public function getReminderEmail() {
        
    }

    public function setRememberToken($value) {
        
    }

}
