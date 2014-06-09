@section('title')

<div class="row">
                <div id="paper-top">
                    <div class="col-sm-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-media-record"></i> 
                            <span>
                              Profile                         
                            </span>
                        </h2>

                    </div>

                    <div class="col-sm-7">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="tittle-middle-header">

                            <div class="alert">
                               {{Session::get('msg_flash_home')}}
                            </div>


                        </div>

                    </div>
                    <div class="col-sm-2">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="btn-group btn-wigdet pull-right visible-lg">
                            <div class="btn">
                                Widget</div>
                            <button data-toggle="dropdown" class="btn dropdown-toggle" type="button">
                                <span class="caret"></span>
                                <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            <ul role="menu" class="dropdown-menu">
                                <li>
                                    <a href="{{Request::root()}}/backend">
                                        <span class="entypo-plus-circled margin-iconic"></span>Add New</a>
                                </li>
                              
                            </ul>
                        </div>


                    </div>
                </div>
            </div>
@stop
@section('breadcrumb')
<ul id="breadcrumb">
                <li>
                    <span class="entypo-home"></span>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a title="Sample page 1" href="#">Users</a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a title="Sample page 1" href="#">User Profile</a>
                </li>
                <li class="pull-right">
                    <div class="input-group input-widget">

                        <input type="text" class="form-control" placeholder="Search..." style="border-radius:15px">
                    </div>
                </li>
            </ul>
@stop
@section('content')
<div id="load-view">
</div>

<script type="text/javascript">

   $( document ).ready(function() {
          loadListImage();
      });

      function loadListImage()
      {
        $("#load-view").load("{{Request::root()}}/backend/view-profile-ajax");
      };

</script>
@stop