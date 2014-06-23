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

    
    <script src="{{ asset('asset/frontend/js/jquery-1.9.1.min.js')}}"></script>
    <script src="{{ asset('asset/frontend/js/main.js')}}"></script>   
    
    <!-- Revolution Slider -->
    <script src="{{ asset('asset/frontend/js/jquery.themepunch.plugins.min.js')}}"></script>
    <script src="{{ asset('asset/frontend/js/jquery.themepunch.revolution.min.js')}}"></script>
    <script src="{{ asset('asset/frontend/js/revolution-slider-options.js')}}"></script>
    <!-- Prety photo -->
    <script src="{{ asset('asset/frontend/js/jquery.prettyPhoto.js')}}"></script>    
    <script>
    $(document).ready(function(){
      $("a[rel^='prettyPhoto']").prettyPhoto();
    });


  $(function () {
  

    if ($('html').hasClass('csstransforms3d')) {  
    
      $('.thumb').removeClass('scroll').addClass('flip');   
      $('.thumb.flip').hover(
        function () {
          $(this).find('.thumb-wrapper').addClass('flipIt');
        },
        function () {
          $(this).find('.thumb-wrapper').removeClass('flipIt');     
        }
      );
      
    } else {

      $('.thumb').hover(
        function () {
          $(this).find('.thumb-detail').stop().animate({bottom:0}, 1, 'easeOutCubic');
        },
        function () {
          $(this).find('.thumb-detail').stop().animate({bottom: ($(this).height() * -1) }, 1, 'easeOutCubic');      
        }
      );

    }
  
  });
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
        
        <div class="content shortcodes">
        <div class="layout">
        <div class="row">
        <div class="row-item col-3_4">
        @yield('content')      
        </div>
        @include('blog.layouts.sidebar')      
        </div>
        </div>
        </div>
         
         <!-- footer -->
         @include('frontend.footer')      
         
    </div>   
    <div class="btn-up"></div>  
         <!-- in javascript -->
         @section('js')  
         @show  
  </body>
</html>