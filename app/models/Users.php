<?php


class Users extends Eloquent {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'users';
        public static $role_1=1;
        public static $role_2=2;
        public static $role_3=3;


        public function checklogin($username,$password)
    {
        $array=array('username'=>$username,'password'=>$password);
        $rules=array('username'=>"email");
        if(Validator::make($array,$rules)->fails());
        $check = User::where('username','=',$username)->count();
        if($check>0)
        return true;
        else return false;        
    }


}