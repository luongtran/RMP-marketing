<?php

/*
  |--------------------------------------------------------------------------
  | Application Routes
  |--------------------------------------------------------------------------
  |
  | Here is where you can register all of the routes for an application.
  | It's a breeze. Simply tell Laravel the URIs it should respond to
  | and give it the Closure to execute when that URI is requested.
  |
 */
Route::get('/','HomeController@index' );
Route::get('about/','HomeController@about' );
Route::get('features/','HomeController@features' );
Route::get('service/','HomeController@service' );
Route::get('request-demo/','HomeController@requestDemo' );
Route::get('support-packages/','HomeController@supportPackages' );
Route::get('contact-us/','HomeController@contact' );

/*User controller*/
//Route::get('user','UserController@index' );
//Route::get('user/register','UserController@register');
//Route::post('user/register','UserController@postRegister');
//Route::get('user/view/{id}','UserController@view' );
//Route::get('user/update/{id}','UserController@update' );
//Route::post('user/update/{id}','UserController@postUpdate' );
////Route::get('user/do_update/{id}','UserController@do_update' );
//Route::get('user/delete/{id}','UserController@delete' );
//Route::get('user/login','UserController@login');
//Route::post('user/login','UserController@postLogin');
//Route::get('user/logout','UserController@logout');
//Route::resource('user', 'UserController');
/*end User controller*/

//Route::post('user/do_register', 'UserController@do_register');
/*Model user*/

//Route::get('/user/register/','UserController@register' );
/*
Route::get('User/{id}', function($id)
{
    return 'User '.$id;
});
Route::get('user/{name?}', function($name = null)
{
    return $name;
});

Route::get('user/{name?}', function($name = 'John')
{
    return $name;
});*/

