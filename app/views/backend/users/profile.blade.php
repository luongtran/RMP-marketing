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
<div id="profile">
<div class="content-wrap">
                <!-- PROFILE -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="well profile">
                            <div class="col-sm-12">
                                <div class="col-xs-12 col-sm-4 text-center">

                                    <ul class="list-group">
                                        <li class="list-group-item text-left">
                                            <span class="entypo-user"></span>&nbsp;&nbsp;Profile</li>
                                        <li class="list-group-item text-center">
                                            <img class="img-circle img-responsive img-profile" alt="" src="http://api.randomuser.me/portraits/men/10.jpg">

                                        </li>
                                        <li class="list-group-item text-center">
                                            <span class="pull-left">
                                                <strong>Ratings</strong>
                                            </span>


                                            <div class="ratings">

                                                <a href="#">
                                                    <span class="fa fa-star"></span>
                                                </a>
                                                <a href="#">
                                                    <span class="fa fa-star"></span>
                                                </a>
                                                <a href="#">
                                                    <span class="fa fa-star"></span>
                                                </a>
                                                <a href="#">
                                                    <span class="fa fa-star"></span>
                                                </a>
                                                <a href="#">
                                                    <span class="fa fa-star-o"></span>
                                                </a>

                                            </div>


                                        </li>

                                        <li class="list-group-item text-right">
                                            <span class="pull-left">
                                                <strong>Joined</strong>
                                            </span>2.13.2014</li>
                                        <li class="list-group-item text-right">
                                            <span class="pull-left">
                                                <strong>Last seen</strong>
                                            </span>Yesterday</li>
                                        <li class="list-group-item text-right">
                                            <span class="pull-left">
                                                <strong>Nickname</strong>
                                            </span>themesmile</li>

                                    </ul>

                                </div>
                                <div class="col-xs-12 col-sm-8 profile-name">
                                    <h2>Dave Mattew
                                        <span class="pull-right social-profile">
                                            <i class="entypo-facebook-circled"></i>  <i class="entypo-twitter-circled"></i>  <i class="entypo-linkedin-circled"></i>  <i class="entypo-github-circled"></i>  <i class="entypo-gplus-circled"></i>
                                        </span>
                                    </h2>
                                    <hr>

                                    <dl class="dl-horizontal-profile">
                                        <dt>User Id</dt>
                                        <dd>{{$getProfile->username}}</dd>

                                        <dt>FirstName</dt>
                                        <dd>{{$getProfile->firstname}}</dd>

                                        <dt>LastName</dt>
                                        <dd>{{$getProfile->lastname}}</dd>

                                        <dt>Email</dt>
                                        <dd>{{$getProfile->email}}</dd>

                                        <dt>Phone</dt>
                                        <dd>{{$getProfile->phone}}</dd>
                                      
                                        <dt>Last Update</dt>
                                        <dd>{{$getProfile->updated_at}}</dd>

                                        <dt>About</dt>
                                        <dd>Web Designer / UI</dd>

                                        <dt>Hobbies</dt>
                                        <dd>Read, out with friends, listen to music, draw and learn new things</dd>

                                        <dt>Skills</dt>
                                        <dd>
                                            <span class="tags">html5</span>
                                            <span class="tags">css3</span>
                                            <span class="tags">jquery</span>
                                            <span class="tags">bootstrap3</span>
                                        </dd>

                                    </dl>


                                    <hr>

                                    <h5>
                                        <span class="entypo-arrows-ccw"></span>&nbsp;&nbsp;Recent Activities</h5>

                                    <div class="table-responsive">
                                        <table class="table table-hover table-striped table-condensed">

                                            <tbody>
                                                <tr>
                                                    <td><i class="pull-right fa fa-edit"></i> Today, 1:00 - Jeff Manzi liked your post.</td>
                                                </tr>
                                                <tr>
                                                    <td><i class="pull-right fa fa-edit"></i> Today, 12:23 - Mark Friendo liked and shared your post.</td>
                                                </tr>                                           
                                            </tbody>
                                        </table>
                                    </div>

                                </div>

                            </div>
                            <div class="col-xs-12 divider text-center">
                                <div class="col-xs-12 col-sm-4 emphasis">
                                    <h2>
                                        <strong>20,7K</strong>
                                    </h2>
                                    <p>
                                        <small>Followers</small>
                                    </p>
                                    <button class="btn btn-success btn-block">
                                        <span class="fa fa-plus-circle"></span>&nbsp;&nbsp;Follow</button>
                                </div>
                                <div class="col-xs-12 col-sm-4 emphasis">
                                    <h2>
                                        <strong>245</strong>
                                    </h2>
                                    <p>
                                        <small>Following</small>
                                    </p>
                                    <button class="btn btn-info btn-block">
                                        <span class="fa fa-user"></span>&nbsp;&nbsp;View Profile</button>
                                </div>
                                <div class="col-sm-4 emphasis">
                                    <h2>
                                        <strong>43</strong>
                                    </h2>
                                    <p>
                                        <small>Likes</small>
                                    </p>
                                    <button class="btn btn-default btn-block">
                                        <span class="fa fa-user"></span>&nbsp;&nbsp;Likes</button>
                                </div>
                            </div>
                        </div>
                    </div>




                    <div class="row">


                        <div class="col-sm-12">
                            <!-- BLANK PAGE-->

                            <div id="Blank_PageClose" class="nest" style="margin:-20px 15px;">
                                <div class="title-alt">
                                    <h6>
                                        Edit Profile</h6>
                                    <div class="titleClose">
                                        <a href="#Blank_PageClose" class="gone">
                                            <span class="entypo-cancel"></span>
                                        </a>
                                    </div>
                                    <div class="titleToggle">
                                        <a href="#Blank_Page_Content" class="nav-toggle-alt">
                                            <span class="entypo-up-open"></span>
                                        </a>
                                    </div>

                                </div>

                                <div id="Blank_Page_Content" class="body-nest">




                                    <div class="row">
                                        <!--begin form -->
                                           {{Form::open(array('url'=>'backend/update-profile', 'method' => 'post','role'=>'form','class'=>'form-horizontal','id'=>'frm-profile'))}}                                             
                                        <!-- left column -->
                                        <div class="col-md-3">
                                            <div class="text-center">
                                                <img alt="avatar" class="avatar img-circle" src="http://placehold.it/150">
                                                <h6>Upload a different photo...</h6>

                                                <div class="input-group">
                                                    <span class="input-group-btn">
                                                        <span class="btn btn-primary btn-file">
                                                            Browse
                                                            <input type="file" multiple="" name="avatar">
                                                        </span>
                                                    </span>                                                 
                                                </div>

                                            </div>
                                        </div>

                                        <!-- edit form column -->
                                        <div class="col-md-9 personal-info">
                                            <div class="alert alert-info alert-dismissable">
                                                <a data-dismiss="alert" class="panel-close close">×</a> 
                                                <i class="fa fa-coffee"></i>
                                                This is an
                                                <strong>.alert</strong>. Use this to show important messages to the user.
                                            </div>
                                            <h3>Personal info</h3>
                                         
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">First name:</label>
                                                    <div class="col-lg-8">
                                                         {{Form::hidden('id',$getProfile->id)}}     
                                                         {{Form::text('firstname',$getProfile->firstname,array('class' => 'form-control'))}}     
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">Last name:</label>
                                                    <div class="col-lg-8">
                                                      {{Form::text('lastname',$getProfile->lastname,array('class' => 'form-control'))}}     
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">Company:</label>
                                                    <div class="col-lg-8">
                                                       {{Form::text('company',$getProfile->company,array('class' => 'form-control'))}}     
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">Email:</label>
                                                    <div class="col-lg-8">
                                                      {{Form::text('email',$getProfile->email,array('class' => 'form-control'))}}     
                                                    </div>
                                                </div>
                                                 <div class="form-group">
                                                    <label class="col-lg-3 control-label">Address:</label>
                                                    <div class="col-lg-8">
                                                      {{Form::text('address',$getProfile->address,array('class' => 'form-control'))}}     
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-md-3 control-label">Password:</label>
                                                    <div class="col-md-8">
                                                         {{Form::password('password',array('class' => 'form-control'))}}     
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-3 control-label">Confirm password:</label>
                                                    <div class="col-md-8">
                                                          {{Form::password('password_confirmation',array('class' => 'form-control'))}}    
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-3 control-label"></label>
                                                    <div class="col-md-8">
                                                        <input type="submit" value="Save Changes" class="btn btn-primary">
                                                        <span></span>
                                                        <input type="reset" value="Cancel" class="btn btn-default">
                                                    </div>
                                                </div>
                                          
                                        </div>
                                    </div>
                                    {{Form::close()}}
                                        <!--end form -->
                                </div>
                            </div>
                        
                        </div>
                        <!-- END OF BLANK PAGE -->

                    </div>
                </div>
                <!-- END OF PROFILE -->

     </div> 


 <script> 
$( document ).ready(function() {
    // var urlload= "{{ Request::root() }}/backend/setting/list";
     //$("#setting").load('setting/list');
}); 
       $("#frm-profile").submit(function( event ) {
              
              var output = $("#output");              
              var seturl= "{{ Request::root() }}/backend/setting/update";
               output.html(' <div id="loadajax" style="top: 300px;position: fixed;left:400px;z-index: 890;"><img src="http://reg.spblegalforum.ru/spilf2014/lf/img/animatedCircle.gif" /></div>');    
      
                var request = $.ajax({
                url: seturl,
                type: "POST",
                data: $("#frm-profile").serialize(),
                dataType: "html"
                });
                request.done(function( msg ){ 
                   $("#profile").html(msg); 
                   output.html("");
                });
                request.fail(function( jqXHR, textStatus ) {
                alert( "Request failed: " + textStatus );
                });
                
            event.preventDefault();
            
        });
</script>                 
<!--end profile -->
</div>
@stop