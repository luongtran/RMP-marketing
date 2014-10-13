<!DOCTYPE html>
<html class=" js no-flexbox canvas canvastext webgl no-touch geolocation postmessage no-websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients no-cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
        <title>CompleteRMP | @if( isset( $page )) {{ $page }}   @endif        
        </title>
        <meta title="keyword" content="completermp, @if( isset( $page )) {{$page}}   @endif ">
        <link rel="Shortcut Icon" type="image/ico" href="{{asset('favicon.ico')}}"/>        
        <link href="{{asset('asset/frontend/css/style.css')}}" media="screen" rel="stylesheet" type="text/css" />     
        <link rel="stylesheet" href="{{asset('asset/frontend/css/main.css')}}">
        <link rel="stylesheet" href="{{asset('asset/frontend/css/custom.css')}}">  
        <link rel="stylesheet" href="{{asset('asset/frontend/css/responsive.css')}}">
        <link rel="stylesheet" href="{{asset('asset/frontend/css/prettyPhoto.css')}}">
        <link rel="stylesheet" href="{{asset('asset/frontend/css/settings.css')}}" />
        <link rel="stylesheet" href="{{asset('asset/frontend/css/turquoise.css')}}">
        <!-- in style -->
        @section('style') 
        @show   
        <script type="text/javascript">
            var base_url = "{{Request::root()}}"
        </script>
    </head>
    <body>
        <div class="main desk" > 
            <!-- top @section('top')  -->
            @include('frontend.top')    

            <!-- header + menu--> 
            @include('frontend.menu') 
            <!-- position title bar -->
            @section('title_bar')
            @show
            <!-- position header -->
            @section('header')
            @show
            <!-- position top -->
            @section('top')   
            @show              
            <div class="content">
                <!-- position content -->
                <div class="layout"> 
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

        </div>   
        <div class="btn-up"></div>  
        <!-- in javascript -->
        @section('js')  
        @show  
        <script src="{{ asset('asset/frontend/js/jquery-1.9.1.min.js')}}"></script>
        <!-- Revolution Slider -->
        <script src="{{ asset('asset/frontend/js/jquery.themepunch.plugins.min.js')}}"></script>
        <script src="{{ asset('asset/frontend/js/jquery.themepunch.revolution.min.js')}}"></script>
        <script src="{{ asset('asset/frontend/js/revolution-slider-options.js')}}"></script>
        <!-- Prety photo -->
        <script src="{{ asset('asset/frontend/js/jquery.prettyPhoto.js')}}"></script>    
        <script src="{{ asset('asset/frontend/js/main.js')}}"></script>     
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
    </body>
</html>