<?php

class DatabaseSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		Eloquent::unguard();

		DB::table('users')->delete();
		
        User::create(array('username'=>'luong@email.com',
        				   'email' => 'luong@email.com',
        				   'password' => Hash::make('mickey'),
        				   'sex' => 'male',
        				   'permission' => 3,
        		)
        	);
	}

}