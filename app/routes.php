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
/*====== Frontend=====*/

/* Page frontend */
Route::get( '/' , array('as' => 'frontend', 'uses' => 'PageController@index'));
Route::get('about/',array('as' => 'about_page', 'uses' =>'PageController@about'));
Route::get('features/',array('as' => 'feature_page', 'uses' =>'PageController@features'));
Route::get('service/',array('as' => 'service_page', 'uses' =>'PageController@service'));
Route::get('request-demo/',array('as' => 'request_page', 'uses' =>'PageController@requestDemo'));
Route::get('support-packages/',array('as' => 'support_page', 'uses' =>'PageController@supportPackages'));
Route::get('contact-us/',array('as' => 'contact_page', 'uses' =>'PageController@contact'));
//===========================================//



/*====== Backend=====*/

/*Admin*/

Route::get('/backend' , array('as' => 'backendend', 'uses' => 'AdminController@index') );

/*Article*/ 
Route::get('backend/article/',array('as' => 'backend_article', 'uses' =>'ArticlesController@index'));
Route::get('backend/article/add/',array('as' => 'article_add', 'uses' =>'ArticlesController@getAdd'));
Route::post('backend/article/add/',array('as' => 'article_add', 'uses' =>'ArticlesController@postAdd'));
Route::get('backend/article/view/{id}',array('as' => 'article_view', 'uses' =>'ArticlesController@getArticle'));
Route::get('backend/article/update/{id}',array('as' => 'backend_article_update', 'uses' =>'ArticlesController@getUpdate'));
Route::post('backend/article/update/{id}',array('as' => 'backend_article_update', 'uses' =>'ArticlesController@postUpdate'));
Route::get('backend/article/delete/{id}',array('as' => 'backend_article_delete', 'uses' =>'ArticlesController@getDelete'));
Route::get('backend/article/filter/{id}',array('as' => 'backend_article_filter', 'uses' =>'ArticlesController@filter'));
Route::post('backend/article/action',array('as' => 'backend_article_filter', 'uses' =>'ArticlesController@action'));

/*Category*/
Route::get('backend/category/',array('as' => 'backend_category', 'uses' =>'CategoryController@index'));
Route::post('backend/category/add',array('as' => 'category_add', 'uses' =>'CategoryController@postAdd'));
Route::get('backend/category/update/{id}',array('as' => 'category_update', 'uses' =>'CategoryController@getUpdate'));
Route::post('backend/category/update/{id}',array('as' => 'category_update', 'uses' =>'CategoryController@postUpdate'));
Route::get('backend/category/delete/{id}',array('as' => 'category_delete', 'uses' =>'CategoryController@getDelete'));
Route::post('backend/category/action',array('as' => 'backend_article_filter', 'uses' =>'CategoryController@action'));


//===========================================//

/* Users */
//Route::get( 'backend/login/' , array('as' => 'backend_login', 'uses' => 'UsersController@getLogin'));
//Route::post( 'backend/login/' , array('as' => 'backend_login', 'uses' => 'UsersController@postLogin'));
//===========================================//



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


Route::get('backend/dump',array('as' => 'backend_dump', 'uses' =>'AdminController@dump'));