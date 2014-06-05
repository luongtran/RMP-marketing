<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Login</title>

    <!-- Core CSS - Include with every page -->
    <link href="{{Request::root()}}/asset/backend/css/bootstrap.min.css" rel="stylesheet">
    <link href="{{Request::root()}}/asset/backend/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- SB Admin CSS - Include with every page -->
    <link href="{{Request::root()}}/asset/backend/css/sb-admin.css" rel="stylesheet">

</head>

<body>

    <div class="container">
        <div class="row">
             <div style="text-align:center;"> 
                <h3>Administrator CompleteRMP</h3>
             </div>
        </div>

        <div class="row">
            <div class="col-md-4 col-md-offset-4">                
                <div>{{Session::get("msg_flash")}}</div>
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="{{Request::root()}}/admin-login" method="post">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Username" name="username" type="text" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <button class="btn btn-lg btn-success btn-block" type="submit">Login</button>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>

</html>
