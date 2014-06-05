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
/*Route::get( '/' , array('as' => 'frontend', 'uses' => 'PageController@index'));
Route::get('about/',array('as' => 'page_view', 'uses' =>'PageController@about'));
Route::get('features/',array('as' => 'feature_page', 'uses' =>'PageController@features'));
Route::get('service/',array('as' => 'service_page', 'uses' =>'PageController@service'));
Route::get('request-demo/',array('as' => 'request_page', 'uses' =>'PageController@requestDemo'));
Route::get('support-packages/',array('as' => 'support_page', 'uses' =>'PageController@supportPackages'));
Route::get('contact-us/',array('as' => 'contact_page', 'uses' =>'PageController@contact'));
Route::get('page/notfound',array('as' => 'notfound_page', 'uses' =>'PageController@notFound'));
Route::get('page/{id}',array('as' => 'view_page', 'uses' =>'PageController@view'));
 */
 
//===========================================//
/*====== Backend=====*/

/*Admin*/


Route::get('/backend' , array('as' => 'back_end', 'uses' => 'AdminController@index') );

/*Article*/ 
Route::get('backend/article/',array('as' => 'backend_article', 'uses' =>'ArticlesController@index'));
Route::get('backend/article/add/',array('as' => 'article_add', 'uses' =>'ArticlesController@getAdd'));
Route::post('backend/article/add/',array('as' => 'article_add', 'uses' =>'ArticlesController@postAdd'));
Route::get('backend/article/view/{id}',array('as' => 'article_view', 'uses' =>'ArticlesController@getArticle'));
Route::get('backend/article/update/{id}',array('as' => 'article_update', 'uses' =>'ArticlesController@getUpdate'));
Route::post('backend/article/update/{id}',array('as' => 'article_update', 'uses' =>'ArticlesController@postUpdate'));
Route::get('backend/article/delete/{id}',array('as' => 'article_delete', 'uses' =>'ArticlesController@getDelete'));
Route::get('backend/article/filter/{id}',array('as' => 'article_filter', 'uses' =>'ArticlesController@filter'));
Route::post('backend/article/action',array('as' => 'article_action', 'uses' =>'ArticlesController@action'));
Route::get('backend/article/search',array('as' => 'article_search', 'uses' =>'ArticlesController@search'));

/*Category*/
Route::get('backend/category/',array('as' => 'backend_category', 'uses' =>'CategoryController@index'));
Route::post('backend/category/add',array('as' => 'category_add', 'uses' =>'CategoryController@postAdd'));
Route::get('backend/category/update/{id}',array('as' => 'category_update', 'uses' =>'CategoryController@getUpdate'));
Route::post('backend/category/update/{id}',array('as' => 'category_update', 'uses' =>'CategoryController@postUpdate'));
Route::get('backend/category/delete/{id}',array('as' => 'category_delete', 'uses' =>'CategoryController@getDelete'));
Route::post('backend/category/action',array('as' => 'article_action', 'uses' =>'CategoryController@action'));


/*Module*/
Route::get('backend/module/',array('as' => 'backend_module', 'uses' =>'ModuleController@index'));
Route::post('backend/module/add',array('as' => 'module_add', 'uses' =>'ModuleController@postAdd'));
Route::get('backend/module/update/{id}',array('as' => 'module_update', 'uses' =>'ModuleController@getUpdate'));
Route::post('backend/module/update/{id}',array('as' => 'module_update', 'uses' =>'ModuleController@postUpdate'));
Route::get('backend/module/delete/{id}',array('as' => 'module_delete', 'uses' =>'ModuleController@getDelete'));
Route::post('backend/module/action',array('as' => 'module_action', 'uses' =>'ModuleController@action'));


/*Slider*/
Route::get('backend/slider/',array('as' => 'backend_slider', 'uses' =>'SliderController@index'));
Route::post('backend/slider/add',array('as' => 'slider_add', 'uses' =>'SliderController@postAdd'));
Route::get('backend/slider/update/{id}',array('as' => 'slider_update', 'uses' =>'SliderController@getUpdate'));
Route::post('backend/slider/update/{id}',array('as' => 'slider_update', 'uses' =>'SliderController@postUpdate'));
Route::get('backend/slider/delete/{id}',array('as' => 'slider_delete', 'uses' =>'SliderController@getDelete'));
Route::post('backend/slider/action',array('as' => 'slider_action', 'uses' =>'SliderController@action'));

/*Menu*/
Route::get('backend/menu',array('as' => 'backend_menu', 'uses' =>'MenuController@index'));
Route::post('backend/menu/add',array('as' => 'menu_add', 'uses' =>'MenuController@postAdd'));
Route::get('backend/menu/delete/{id}',array('as' => 'menu_delete', 'uses' =>'MenuController@getDelete'));
Route::get('backend/menu/update/{id}',array('as' => 'menu_update', 'uses' =>'MenuController@getUpdate'));
Route::post('backend/menu/update/{id}',array('as' => 'menu_update', 'uses' =>'MenuController@postUpdate'));
Route::post('backend/menu/action',array('as' => 'menu_action', 'uses' =>'MenuController@action'));

/*Setting*/
Route::get('backend/setting',array('as' => 'backend_setting', 'uses' =>'SettingController@index'));
Route::post('backend/setting/update',array('as' => 'setting_update', 'uses' =>'SettingController@postUpdate'));
Route::get('backend/setting/create-data',array('as' => 'menu_update', 'uses' =>'SettingController@createData'));

/* Users */
Route::get( 'backend/user' , array('as' => 'backend_user', 'uses' => 'UserController@index'));
Route::get( 'backend/user/add' , array('as' => 'user_add', 'uses' => 'UserController@getAdd'));
Route::post( 'backend/user/add' , array('as' => 'user_add', 'uses' => 'UserController@postAdd'));
Route::get( 'backend/user/update/{id}' , array('as' => 'user_update', 'uses' => 'UserController@getUpdate'));
Route::post( 'backend/user/update/{id}' , array('as' => 'user_update', 'uses' => 'UserController@postUpdate'));
Route::get( 'backend/user/delete/{id}' , array('as' => 'user_delete', 'uses' => 'UserController@getDelete'));
Route::post( 'backend/user/action' , array('as' => 'user_action', 'uses' => 'UserController@action'));
//===========================================//

/*Reason*/
Route::get('backend/reason/',array('as' => 'backend_reason', 'uses' =>'ReasonController@index'));
Route::post('backend/reason/add',array('as' => 'reason_add', 'uses' =>'ReasonController@postAdd'));
Route::get('backend/reason/update/{id}',array('as' => 'reason_update', 'uses' =>'ReasonController@getUpdate'));
Route::post('backend/reason/update/{id}',array('as' => 'reason_update', 'uses' =>'ReasonController@postUpdate'));
Route::get('backend/reason/delete/{id}',array('as' => 'reason_delete', 'uses' =>'ReasonController@getDelete'));
Route::post('backend/reason/action',array('as' => 'reason_action', 'uses' =>'ReasonController@action'));


/*Service*/
Route::get('backend/service/',array('as' => 'backend_service', 'uses' =>'ServiceController@index'));
Route::get('backend/service/add',array('as' => 'service_add', 'uses' =>'ServiceController@getAdd'));
Route::post('backend/service/add',array('as' => 'service_add', 'uses' =>'ServiceController@postAdd'));
Route::get('backend/service/update/{id}',array('as' => 'service_update', 'uses' =>'ServiceController@getUpdate'));
Route::post('backend/service/update/{id}',array('as' => 'service_update', 'uses' =>'ServiceController@postUpdate'));
Route::get('backend/service/delete/{id}',array('as' => 'service_delete', 'uses' =>'ServiceController@getDelete'));
Route::post('backend/service/action',array('as' => 'service_action', 'uses' =>'ServiceController@action'));


/*Support package*/
Route::get('backend/support/',array('as' => 'backend_support', 'uses' =>'SupportController@index'));
Route::get('backend/support/add',array('as' => 'support_add', 'uses' =>'SupportController@getAdd'));
Route::post('backend/support/add',array('as' => 'support_add', 'uses' =>'SupportController@postAdd'));
Route::get('backend/support/update/{id}',array('as' => 'support_update', 'uses' =>'SupportController@getUpdate'));
Route::post('backend/support/update/{id}',array('as' => 'support_update', 'uses' =>'SupportController@postUpdate'));
Route::get('backend/support/delete/{id}',array('as' => 'support_delete', 'uses' =>'SupportController@getDelete'));
Route::post('backend/support/action',array('as' => 'service_action', 'uses' =>'SupportController@action'));

/* Page backend */
Route::get('backend/page',array('as' => 'backend_page', 'uses' =>'PagesController@index'));
Route::post('backend/page/add',array('as' => 'page_add', 'uses' =>'PagesController@postAdd'));
Route::get('backend/page/delete/{id}',array('as' => 'page_delete', 'uses' =>'PagesController@getDelete'));
Route::get('backend/page/update/{id}',array('as' => 'page_update', 'uses' =>'PagesController@getUpdate'));
Route::post('backend/page/update/{id}',array('as' => 'page_update', 'uses' =>'PagesController@postUpdate'));
Route::post('backend/page/action',array('as' => 'page_action', 'uses' =>'PagesController@action'));


/*Language*/
Route::get('backend/language/',array('as' => 'backend_language', 'uses' =>'LanguageController@index'));
Route::post('backend/language/add',array('as' => 'language_add', 'uses' =>'LanguageController@postAdd'));
Route::get('backend/language/update/{id}',array('as' => 'language_update', 'uses' =>'LanguageController@getUpdate'));
Route::post('backend/language/update/{id}',array('as' => 'language_update', 'uses' =>'LanguageController@postUpdate'));
Route::get('backend/language/delete/{id}',array('as' => 'language_delete', 'uses' =>'LanguageController@getDelete'));
Route::post('backend/language/action',array('as' => 'language_action', 'uses' =>'LanguageController@action'));

/* Upload */
Route::get('backend/upload',array('as' => 'backend_upload', 'uses' =>'UploadController@index'));
Route::post('backend/upload/add',array('as' => 'uppload_add', 'uses' =>'UploadController@postUpload'));
Route::get('backend/upload/list',array('as' => 'uppload_list', 'uses' =>'UploadController@listImg'));

/*Share*/
Route::get('change-language/{id}',array('as' => 'change_language', 'uses' =>'SharedController@getChangeLanguage'));
//===========================================//

Route::get('backend/dump',array('as' => 'backend_dump', 'uses' =>'AdminController@dump'));


Route::get( 'admin-login' , array('as' => 'user_login', 'uses' => 'SharedController@getLogin'));
Route::post( 'admin-login' , array('as' => 'user_login', 'uses' => 'SharedController@postLogin'));
Route::get( 'admin-logout' , array('as' => 'user_logout', 'uses' => 'SharedController@getLogout'));

/*page view each module*/
Route::get('/',array('as' => 'front_end', 'uses' =>'PageController@pageview'));
Route::get('{id}',array('as' => 'view_page', 'uses' =>'PageController@pageview'));

/* load json images in part upload image*/
Route::get('backend/load-immages-json',array('as' => 'load_image_json', 'uses' =>'SharedController@getImageJson'));


/*check fillter*/

// Route::when('backend', 'auth');
 Route::when('backend', 'auth');
 Route::when('backend/*', 'auth');

 Route::when('backend/article', 'isManager');
 Route::when('backend/article/*', 'isManager');
 Route::when('backend/category', 'isManager');
 Route::when('backend/category/*', 'isManager');
 Route::when('backend/upload', 'isManager');
 Route::when('backend/upload/*', 'isManager');

 Route::when('backend/menu', 'isAdmin');
 Route::when('backend/menu/*', 'isAdmin');
 Route::when('backend/reason', 'isAdmin');
 Route::when('backend/reason/*', 'isAdmin');
 Route::when('backend/service', 'isAdmin');
 Route::when('backend/service/*', 'isAdmin'); 
 Route::when('backend/slider', 'isAdmin');
 Route::when('backend/slider/*', 'isAdmin');

 Route::when('backend/page', 'isSupper');
 Route::when('backend/page/*', 'isSupper');
 Route::when('backend/module', 'isSupper');
 Route::when('backend/module/*', 'isSupper');
 Route::when('backend/setting', 'isSupper');
 Route::when('backend/setting/*', 'isSupper');
 Route::when('backend/user', 'isSupper');
 Route::when('backend/user/*', 'isSupper');
 Route::when('backend/language', 'isSupper');
 Route::when('backend/language/*', 'isSupper');
 

