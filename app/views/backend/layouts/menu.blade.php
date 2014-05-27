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
            
            <li><a href="charts.html"><i class="fa fa-bar-chart-o"></i> Slider</a></li>
            <li><a href="forms.html"><i class="fa fa-edit"></i> Media</a></li>
            <li><a href="typography.html"><i class="fa fa-font"></i> Users </a></li>
            <li><a href="bootstrap-elements.html"><i class="fa fa-desktop"></i> Group Users</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-caret-square-o-down"></i> Menu <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Add submenu</a></li>
                <li><a href="{{ Request::root() }}/image/upload">Manager menu</a></li>
              </ul>
            </li>
            <li><a href="bootstrap-elements.html"><i class="fa fa-desktop"></i> Setting</a></li>
          </ul>