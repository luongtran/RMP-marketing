<!DOCTYPE html>
<html class=" js no-flexbox canvas canvastext webgl no-touch geolocation postmessage no-websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients no-cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths">
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>CompleteRMP | @if( isset( $page )) {{ $page }}   @endif</title>
        <meta title="keyword" content="completermp, @if( isset( $page )) {{$page}}   @endif ">
        <link rel="Shortcut Icon" type="image/ico" href="favicon.ico"/>    

        <!-- Fonts START -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css">
        <!-- Fonts END -->

        <!-- Global styles START -->          
        <link href="/asset/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="/asset/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Global styles END -->       

        <!-- Page level plugin styles START -->
        <link href="/asset/global/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
        <link href="/asset/global/plugins/carousel-owl-carousel/owl-carousel/owl.carousel.css" rel="stylesheet">
        <link href="/asset/global/plugins/slider-revolution-slider/rs-plugin/css/settings.css" rel="stylesheet">
        <!-- Page level plugin styles END -->  

        <!-- Theme styles START -->
        <link href="/asset/global/css/components.css" rel="stylesheet">
        <link href="/asset/frontend/layout/css/style.css" rel="stylesheet">
        <!-- metronic revo slider styles -->
        <link href="/asset/frontend/pages/css/style-revolution-slider.css" rel="stylesheet">
        <link href="/asset/frontend/pages/css/portfolio.css" rel="stylesheet">
        <link href="/asset/frontend/layout/css/style-responsive.css" rel="stylesheet">
        <link href="/asset/frontend/layout/css/themes/turquoise.css" rel="stylesheet" id="style-color">
        <link href="/asset/frontend/layout/css/custom.css" rel="stylesheet">
        <!-- Theme styles END -->
        
        <!-- Extra stylesheets -->
        @section('style') 
        @show   
        <script type="text/javascript">
            var base_url = "{{Request::root()}}";
        </script>
    </head>
    <body class="corporate">
        <!-- BEGIN TOP BAR -->
        @include('frontend.partials.top_bar')  
        <!-- END TOP BAR -->         

        <!-- HEADER & MENU  -->
        @include('frontend.partials.menu')    
        <!-- END HEADER & MENU  -->

        <!-- position title bar -->
        @section('title_bar')
        @show

        <!-- position header -->
        @section('header')
        @show

        <!-- position top -->
        @section('top')   
        @show              
        <div class="main">
            <!-- position content -->
            <div class="container"> 
                @yield('content')      
                <!-- position bottom -->
                @section('bottom') 
                @show
            </div>
        </div>
        <!-- position bottom 1-->
        @section('bottom-1')  
        @show 

        <!-- footer -->
        @include('frontend.footer')      

        <div class="btn-up"></div>  
        <!-- in javascript -->
        @section('js')  
        @show           
        <!--[if lt IE 9]>
        <script src="/asset/global/plugins/respond.min.js"></script>
        <![endif]--> 
        <script src="/asset/global/plugins/jquery-1.11.0.min.js" type="text/javascript"></script>
        <script src="/asset/global/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
        <script src="/asset/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>      
        <script src="/asset/frontend/layout/scripts/back-to-top.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->

        <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
        <script src="/asset/global/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
        <script src="/asset/global/plugins/carousel-owl-carousel/owl-carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->

        <!-- BEGIN RevolutionSlider -->

        <script src="/asset/global/plugins/slider-revolution-slider/rs-plugin/js/jquery.themepunch.plugins.min.js" type="text/javascript"></script>
        <script src="/asset/global/plugins/slider-revolution-slider/rs-plugin/js/jquery.themepunch.revolution.min.js" type="text/javascript"></script> 
        <script src="/asset/global/plugins/slider-revolution-slider/rs-plugin/js/jquery.themepunch.tools.min.js" type="text/javascript"></script> 
        <script src="/asset/frontend/pages/scripts/revo-slider-init.js" type="text/javascript"></script>
        <!-- END RevolutionSlider -->

        <script src="/asset/frontend/layout/scripts/layout.js" type="text/javascript"></script>
        <script type="text/javascript">
            jQuery(document).ready(function() {
                Layout.init();
                Layout.initOWL();
                RevosliderInit.initRevoSlider();
                Layout.initTwitter();
                //Layout.initFixHeaderWithPreHeader(); /* Switch On Header Fixing (only if you have pre-header) */
                //Layout.initNavScrolling(); 
            });
        </script>

        <!-- END PAGE LEVEL JAVASCRIPTS -->        

        <script type="text/javascript">
            $(function() {
                $("#changeLangague").change(function() {
                    var return_url = base_url;
                    //var text = $( "select#changeLangague option:selected").text();
                    var value = $("select#changeLangague option:selected").val();
                    //var fullPathLocal = window.location.pathname;
                    var fullUrlRequest = base_url + "/change-language/" + value + "?return_url=" + return_url;
                    //alert(fullUrlRequest);                    
                    window.location.href = fullUrlRequest;
                });
            });
        </script>    
        <script src="{{ asset('asset/frontend/js/main.js')}}"></script> 
    </body>
</html>