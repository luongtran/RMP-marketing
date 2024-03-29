<?php

/*
  |--------------------------------------------------------------------------
  | Application & Route Filters
  |--------------------------------------------------------------------------
  |
  | Below you will find the "before" and "after" events for the application
  | which may be used to do any work before or after a request into your
  | application. Here you may also register your custom route filters.
  |
 */

App::before(function($request) {
    
});


App::after(function($request, $response) {
    $log = str_repeat('=', 100) . "\n";
    $log .= "Started   [" . Request::getMethod() . "] " . Request::url() . "\n";
    $log .= "Process   " . Route::currentRouteAction() . "\n";
    $requestType = 'HTML';
    if (Request::ajax()) {
        $requestType = 'AJAX';
    }
    $log .= "Type      " . $requestType . "\n";
    $log .= "Params    " . json_encode(Input::all()) . "\n";
    $queries = DB::getQueryLog();
    // Append sql queries to log
    $sql_log = '';
    $sql_log = "Queries   " . count($queries) . "\n";
    foreach ($queries as $query) {
        $sql_log .= "\n[" . $query['time'] . "ms] ";
        $bindings = $query['bindings'];
        $query_str = $query['query'];
        $query_str = str_replace(array('%', '?'), array('%%', '%s'), $query_str);
        $query_str = vsprintf($query_str, $bindings);
        $sql_log .= ucfirst($query_str);
    }
    $log .= $sql_log . "\n";
    $log_file = storage_path() . '/' . 'logs' . '/server.log';
    file_put_contents('php://stdout', $log);
});


/*
  |--------------------------------------------------------------------------
  | Authentication Filters
  |--------------------------------------------------------------------------
  |
  | The following filters are used to verify that the user of the current
  | session is logged into this application. The "basic" filter easily
  | integrates HTTP Basic authentication for quick, simple checking.
  |
 */

Route::filter('auth', function() {
    if (!Session::get('isLogin'))
        return View::make('backend.users.login');
});

Route::filter('isManager', function() {

    if ((Session::get('perRole') == SharedController::ROLE_MANAGER) || (Session::get('perRole') == SharedController::ROLE_SUPPER) || (Session::get('perRole') == SharedController::ROLE_ADMIN)) {
        
    } else {
        return Redirect::guest('backend');
        Session::flash('msg_flash_common', CommonHelper::printMsg('error', trans("You can't access area here")));
    }
});
Route::filter('isAdmin', function() {

    if ((Session::get('perRole') == SharedController::ROLE_ADMIN) || (Session::get('perRole') == SharedController::ROLE_SUPPER)) {
        
    } else {
        Session::flash('msg_flash_common', CommonHelper::printMsg('error', trans("You can't access area here")));
        return Redirect::guest('backend');
    }
});
Route::filter('isSupper', function() {

    $profile = New SharedController();
    $userInfo = $profile->getProfile();
    if (!($userInfo->permission == SharedController::ROLE_SUPPER)) {
        Session::flash('msg_flash_common', CommonHelper::printMsg('error', trans("You can't access area here")));
        return Redirect::guest('backend');
    }
});


/*
  |--------------------------------------------------------------------------
  | Guest Filter
  |--------------------------------------------------------------------------
  |
  | The "guest" filter is the counterpart of the authentication filters as
  | it simply checks that the current user is not logged in. A redirect
  | response will be issued if they are, which you may freely change.
  |
 */


/*
  |--------------------------------------------------------------------------
  | CSRF Protection Filter
  |--------------------------------------------------------------------------
  |
  | The CSRF filter is responsible for protecting your application against
  | cross-site request forgery attacks. If this special token in a user
  | session does not match the one given in this request, we'll bail.
  |
 */

Route::filter('csrf', function() {
    if (Session::token() != Input::get('_token')) {
        throw new Illuminate\Session\TokenMismatchException;
    }
});
