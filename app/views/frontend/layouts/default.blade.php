<!DOCTYPE html>
<html class=" js no-flexbox canvas canvastext webgl no-touch geolocation postmessage no-websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients no-cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <title>CompleteRMP | @if( isset( $page )) {{ $page }}   @endif        
    </title>
    <meta title="" content="">
    <link rel="icon" type="image/ico" href="favicon.ico"/>    
    <link href="{{ Request::root() }}/frontend/css/style.css" media="screen" rel="stylesheet" type="text/css" />     
    <!-- in style -->
    @section('style') 
    <script src="{{ asset('frontend/js/jquery-1.js')}}"></script>
    <script src="{{ asset('frontend/js/jquery_003.js')}}"></script> 
    <script src="{{ asset('frontend/js/modernizr.js')}}"></script>
    <script src="{{ asset('frontend/js/main.js')}}"></script>
    <!-- Revolution Slider -->
    <script src="{{ asset('frontend/js/jquery_004.js')}}"></script>
    <script src="{{ asset('frontend/js/jquery.js')}}"></script>
    <script src="{{ asset('frontend/js/revolution-slider-options.js')}}"></script>
    <!-- Prety photo -->
    <script src="{{ asset('frontend/js/jquery_002.js')}}"></script>
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
        @yield('title_bar')
        @yield('header')
          
        
        <!-- content -->
         @yield('content')               
         
         <!-- footer -->
         @include('frontend.footer')      
         
    </div>   
    <div class="btn-up"></div>  
         <!-- in javascript -->
         @section('js')    
  </body>
</html>