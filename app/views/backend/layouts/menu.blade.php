<!-- Sidebar -->
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="{{Request::root()}}/backend" >RMP MARKETING</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav side-nav">

            <li class="active"><a href="{{Request::root()}}/backend "><i class="fa fa-dashboard"></i> Dashboard</a></li>            
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-caret-square-o-down"></i> Article <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="{{ Request::root() }}/backend/article/add/"> Add New</a></li>
                <li><a href="{{ Request::root() }}/backend/article/"> All articles</a></li>
                <li><a href="{{ Request::root() }}/backend/category"> Category </a></li>                
              </ul>
            </li>

            @if((Session::get('perRole') == '2')||(Session::get('perRole') == '3'))
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-caret-square-o-down"></i> Manager Modules<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="{{ Request::root() }}/backend/reason/">Reason </a></li>
                <li><a href="{{ Request::root() }}/backend/slider">Slider </a></li>                
                <li><a href="{{ Request::root() }}/backend/service">Service </a></li>
                <li><a href="{{ Request::root() }}/backend/support">Support</a></li>                
              </ul>
            </li>    
            @endif

            @if(Session::get('perRole') == '3')
              <li><a href="{{ Request::root() }}/backend/module">Module</a></li>   
              <li ><a href="{{Request::root()}}/backend/page"><i class="fa fa-dashboard"></i> Page</a></li>            
              <li><a href="{{ Request::root() }}/backend/user"><i class="fa fa-font"></i> Users </a></li>            
              <li><a href="{{ Request::root() }}/backend/menu"><i class="fa fa-bar-chart-o"></i> Menu</a></li>
              <li><a href="{{ Request::root()}}/backend/setting"><i class="fa fa-desktop"></i> Setting</a></li>              
            @endif
          </ul>