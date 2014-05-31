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
Route::get('page/notfound',array('as' => 'notfound_page', 'uses' =>'PageController@notFound'));
Route::get('page/{id}',array('as' => 'view_page', 'uses' =>'PageController@view'));

//===========================================//



/*====== Backend=====*/

/*Admin*/

Route::get('/backend' , array('as' => 'backendend', 'uses' => 'AdminController@index') );

/*Article*/ 
Route::get('backend/article/',array('as' => 'backend_article', 'uses' =>'ArticlesController@index'));
Route::get('backend/article/add/',array('as' => 'article_add', 'uses' =>'ArticlesController@getAdd'));
Route::post('backend/article/add/',array('as' => 'article_add', 'uses' =>'ArticlesController@postAdd'));
Route::get('backend/article/view/{id}',array('as' => 'article_view', 'uses' =>'ArticlesController@getArticle'));
Route::get('backend/article/update/{id}',array('as' => 'article_update', 'uses' =>'ArticlesController@getUpdate'));
Route::post('backend/article/update/{id}',array('as' => 'article_update', 'uses' =>'ArticlesController@postUpdate'));
Route::get('backend/article/delete/{id}',array('as' => 'article_delete', 'uses' =>'ArticlesController@getDelete'));
Route::get('backend/article/filter/{id}',array('as' => 'article_filter', 'uses' =>'ArticlesController@filter'));
Route::post('backend/article/action',array('as' => 'article_filter', 'uses' =>'ArticlesController@action'));
Route::get('backend/article/search',array('as' => 'article_search', 'uses' =>'ArticlesController@search'));

/*Category*/
Route::get('backend/category/',array('as' => 'backend_category', 'uses' =>'CategoryController@index'));
Route::post('backend/category/add',array('as' => 'category_add', 'uses' =>'CategoryController@postAdd'));
Route::get('backend/category/update/{id}',array('as' => 'category_update', 'uses' =>'CategoryController@getUpdate'));
Route::post('backend/category/update/{id}',array('as' => 'category_update', 'uses' =>'CategoryController@postUpdate'));
Route::get('backend/category/delete/{id}',array('as' => 'category_delete', 'uses' =>'CategoryController@getDelete'));
Route::post('backend/category/action',array('as' => 'backend_article_filter', 'uses' =>'CategoryController@action'));


/*Slider*/
Route::get('backend/slider/',array('as' => 'backend_slider', 'uses' =>'SliderController@index'));
Route::post('backend/slider/add',array('as' => 'slider_add', 'uses' =>'SliderController@postAdd'));
Route::get('backend/slider/update/{id}',array('as' => 'slider_update', 'uses' =>'SliderController@getUpdate'));
Route::post('backend/slider/update/{id}',array('as' => 'slider_update', 'uses' =>'SliderController@postUpdate'));
Route::get('backend/slider/delete/{id}',array('as' => 'slider_delete', 'uses' =>'SliderController@getDelete'));
Route::post('backend/slider/action',array('as' => 'slider_delete', 'uses' =>'SliderController@action'));

/*Menu*/
Route::get('backend/menu',array('as' => 'backend_menu', 'uses' =>'MenuController@index'));
Route::post('backend/menu/add',array('as' => 'menu_add', 'uses' =>'MenuController@postAdd'));
Route::get('backend/menu/delete/{id}',array('as' => 'menu_delete', 'uses' =>'MenuController@getDelete'));
Route::get('backend/menu/update/{id}',array('as' => 'menu_update', 'uses' =>'MenuController@getUpdate'));
Route::post('backend/menu/update/{id}',array('as' => 'menu_update', 'uses' =>'MenuController@postUpdate'));
Route::post('backend/menu/action',array('as' => 'menu_update', 'uses' =>'MenuController@action'));

/*Setting*/
Route::get('backend/setting',array('as' => 'backend_setting', 'uses' =>'SettingController@index'));
Route::get('backend/setting/list',array('as' => 'backend_list_setting', 'uses' =>'SettingController@getList'));
Route::post('backend/setting/update',array('as' => 'setting_update', 'uses' =>'SettingController@postUpdate'));
Route::get('backend/setting/create-data',array('as' => 'menu_update', 'uses' =>'SettingController@createData'));

/* Users */
Route::get( 'backend/login/' , array('as' => 'user_login', 'uses' => 'UserController@getLogin'));
Route::post( 'backend/login/' , array('as' => 'user_login', 'uses' => 'UserController@postLogin'));
Route::get( 'backend/user' , array('as' => 'backend_user', 'uses' => 'UserController@index'));
Route::get( 'backend/user/add' , array('as' => 'user_add', 'uses' => 'UserController@getAdd'));
Route::post( 'backend/user/add' , array('as' => 'user_add', 'uses' => 'UserController@postAdd'));
Route::get( 'backend/user/update/{id}' , array('as' => 'user_update', 'uses' => 'UserController@getUpdate'));
Route::post( 'backend/user/update/{id}' , array('as' => 'user_update', 'uses' => 'UserController@postUpdate'));
Route::get( 'backend/user/delete/{id}' , array('as' => 'user_delete', 'uses' => 'UserController@getDelete'));
Route::post( 'backend/user/action' , array('as' => 'user_action', 'uses' => 'UserController@action'));
//===========================================//


/*Share*/
Route::get('change-language/{id}',array('as' => 'change_language', 'uses' =>'SharedController@getChangeLanguage'));
//===========================================//

Route::get('backend/dump',array('as' => 'backend_dump', 'uses' =>'AdminController@dump'));