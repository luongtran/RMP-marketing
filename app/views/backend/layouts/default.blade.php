<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>RMP | @if(isset($page)) {{$page}} @endif </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.js"></script>

    <link rel="stylesheet" href="{{asset('asset/backend/assets/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('asset/backend/assets/css/loader-style.css')}}">
    <link rel="stylesheet" href="{{asset('asset/backend/assets/css/bootstrap.css')}}">
    <link rel="stylesheet" href="{{asset('asset/backend/assets/js/button/ladda/ladda.min.css')}}">
    <link rel="stylesheet" href="{{asset('asset/backend/assets/css/custom.css')}}">
     @section('style')            
     @show
    <!-- script load fisrt -->
    <script>
     var spBaseUrl = "{{Request::root()}}";
    </script>
     <!-- check all  checkbox-->
    <script>
         $(document).ready(function () {
            $("#ckbCheckAll").click(function () {
                 $(".checkBoxClass").prop('checked', $(this).prop('checked'));
            });
        });
    </script>       
    <script src="{{asset('asset/backend/plusin/ckeditor/ckeditor.js')}}" type="text/javascript"></script>
    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Apricot V1.2</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.js"></script>

    <link rel="stylesheet" href="{{asset('asset/backend/assets/css/style.css')}}">
    <link rel="stylesheet" href="{{asset('asset/backend/assets/css/loader-style.css')}}">
    <link rel="stylesheet" href="{{asset('asset/backend/assets/css/bootstrap.css')}}">
    <link rel="stylesheet" href="{{asset('asset/backend/assets/js/button/ladda/ladda.min.css')}}">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="{{asset('asset/backend/assets/ico/minus.png')}}">
</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>
    <!-- TOP NAVBAR -->
    @include('backend.layouts.topNavbar')
    <!-- /END OF TOP NAVBAR -->

    <!-- SIDE MENU -->
    @include('backend.layouts.sideMenu')
    <!-- END OF SIDE MENU -->



    <!--  PAPER WRAP -->
    <div class="wrap-fluid">
        <div class="container-fluid paper-wrap bevel tlbr">





            <!-- CONTENT -->
            <!--TITLE -->
            @section('title')
            @show
            <!--/ TITLE -->

            <!-- BREADCRUMB -->
            @section('breadcrumb')
            
            @show
            <!-- END OF BREADCRUMB -->

            <div class="content-wrap">
                <div class='row'>
                    @yield('content')
                </div>
                <!-- /END OF CONTENT -->



                <!-- FOOTER -->
                <div class="footer-space"></div>
                <div id="footer">
                    <div class="devider-footer-left"></div>
                    <div class="time">
                        <p id="spanDate"></p>
                        <p id="clock"></p>
                    </div>
                    <div class="copyright">Make with Love
                        <span class="entypo-heart"></span>2014 <a href="http://gamatechno.com">Thesmile</a> All Rights Reserved</div>
                    <div class="devider-footer"></div>

                </div>
                <!-- / END OF FOOTER -->


            </div>
        </div>
        <!--  END OF PAPER WRAP -->

        <!-- RIGHT SLIDER CONTENT -->
        @include('backend.layouts.rightSliderContent')
        <!-- END OF RIGHT SLIDER CONTENT-->


        <!-- MAIN EFFECT -->
        <script type="text/javascript" src="{{asset('asset/backend/assets/js/preloader.js')}}"></script>
        <script type="text/javascript" src="{{asset('asset/backend/assets/js/bootstrap.js')}}"></script>
        <script type="text/javascript" src="{{asset('asset/backend/assets/js/app.js')}}"></script>
        <script type="text/javascript" src="{{asset('asset/backend/assets/js/load.js')}}"></script>
        <script type="text/javascript" src="{{asset('asset/backend/assets/js/main.js')}}"></script>
        @section('script')            
        @show
        
</body>

</html>
