<?php


class Users extends Eloquent {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'users';

    
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