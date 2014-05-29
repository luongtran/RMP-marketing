<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>@if( isset( $page )) {{ $page }} |  @endif   CompleteRMP</title>

    <link href="{{ asset('asset/backend/css/styles.css') }}" media="screen" rel="stylesheet" type="text/css" />
    <!-- Bootstrap core CSS -->        
    <link href="{{ asset('asset/backend/css/bootstrap.css') }}" media="screen" rel="stylesheet" type="text/css" />
    <!-- Add custom CSS here -->
    <link href="{{ asset('asset/backend/css/sb-admin.css') }}" rel="stylesheet">
<!--    <link href="{{ asset('asset/backend/font-awesome/css/font-awesome.css') }}">-->
    <link href="{{ asset('asset/backend/font-awesome/css/font-awesome.min.css') }}">
    <!-- Page Specific CSS -->
<!--    <link rel="stylesheet" href="http://cdn.oesmith.co.uk/morris-0.4.3.min.css">-->
    <style>
        .breadcrumb{margin-bottom: 5px ;}
    </style>
  </head>

  <body>

    <div id="wrapper">

       @include('backend.layouts.menu')
       @include('backend.layouts.sidebar')          

      <div id="page-wrapper">
      
         @section('breadcrumb')
         @section('header')                
         @yield('content') 

      </div><!-- /#page-wrapper -->

    </div><!-- /#wrapper -->
    <script src="{{asset('asset/frontend/js/jquery-1.9.1.min.js')}}"></script>
    <!-- check all  checkbox-->
    <script>
         $(document).ready(function () {
            $("#ckbCheckAll").click(function () {
                 $(".checkBoxClass").prop('checked', $(this).prop('checked'));
            });
        });
    </script>    
    
    
    <!-- JavaScript -->
    <script src="{{asset('asset/backend/js/jquery-1.10.2.js')}}"></script>
    <script src="{{asset('asset/backend/js/bootstrap.js')}}"></script>    

    <!-- Page Specific Plugins   -->    
<!--    <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="http://cdn.oesmith.co.uk/morris-0.4.3.min.js"></script>
    <script src="{{ Request::root() }}/backend/js/morris/chart-data-morris.js"></script>
    <script src="{{ Request::root() }}/backend/js/tablesorter/jquery.tablesorter.js"></script>
    <script src="{{ Request::root() }}/backend/js/tablesorter/tables.js"></script>-->
  

  </body>
</html>
