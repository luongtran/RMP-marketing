@section('title')
<div class="row">
                <div id="paper-top">
                    <div class="col-sm-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-media-record"></i> 
                            <span>
                              Request Demo                          
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
                                    <a href="{{Request::root()}}/backend/">
                                        <span class="entypo-plus-circled margin-iconic"></span>Add New</a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="entypo-heart margin-iconic"></span>Favorite</a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="entypo-cog margin-iconic"></span>Setting</a>
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
                <li><a href="{{Request::root()}}/backend/module" title="Sample page 1">Request demo</a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="{{Request::root()}}/backend/" title="Sample page 1"></a>
                </li>
                <li class="pull-right">
                    <div class="input-group input-widget">

                        <input style="border-radius:15px" type="text" placeholder="Search..." class="form-control">
                    </div>
                </li>
            </ul>
@stop
 
@section('content')
<div class="row">
                    <!-- CONTENT MAIL -->
                    <div class="col-sm-10">

                        <div class="mail_header">
                            <div class="row">
                                <div class="col-sm-6">

                                    <div style="margin-right:10px" class="btn-group pull-left">
                                        <div class="btn">
                                            <input type="checkbox" style="margin:0 5px;padding:0;position:relative;top:2px;">All</div>
                                        <button type="button" class="btn dropdown-toggle" data-toggle="dropdown">
                                            <span class="caret"></span>
                                            <span class="sr-only">Toggle Dropdown</span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">None</a>
                                            </li>
                                            <li><a href="#">read</a>
                                            </li>
                                            <li><a href="#">Unread</a>
                                            </li>
                                        </ul>
                                    </div>



                                    <div style="margin-right:10px" class="btn-group pull-left">
                                        <button type="button" class="btn  dropdown-toggle" data-toggle="dropdown">More
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#"><i class="fa fa-pencil"></i> Mark as Read</a>
                                            </li>
                                            <li><a href="#"><i class="fa fa-ban"></i> Spam</a>
                                            </li>
                                            <li class="divider"></li>
                                            <li><a href="#"><i class="fa fa-trash-o"></i> Delete</a>
                                            </li>
                                        </ul>
                                    </div>

                                    <button style="margin-right:10px" type="button" data-color="#39B3D7" data-opacity="0.95" class="btn button test pull-left">
                                        <span class="entypo-arrows-ccw"></span>&nbsp;&nbsp;Refresh</button>


                                </div>


                                <div class="col-sm-6">

                                </div>


                            </div>

                        </div>

                        <div id="content-mail">
                            <div class="table-responsive">
                                <!-- THE MESSAGES -->
                                <table class="table table-mailbox">
                                    <tr class="unread">
                                        <td class="small-col">
                                            <input type="checkbox" />
                                        </td>
                                        <td class="small-col"><i class="fa fa-star"></i>
                                        </td>
                                        <td class="name"><a class="star" href=""><i class="fa fa-twitter"></i></a>
                                        </td>
                                        <td>Twitter</td>
                                        <td class="subject">
                                            <p class="email-summary">
                                                <strong>Do You Know</strong>Iko Uwais, Justin Beiber on twitter? ...</p>
                                        </td>
                                        <td class="time text-right">Jan 8 at 07:10am</td>
                                    </tr>

                                    <tr class="unread">
                                        <td class="small-col">
                                            <input type="checkbox" />
                                        </td>
                                        <td class="small-col"><i class="fa fa-star"></i>
                                        </td>
                                        <td class="name"> <a class="star" href=""><i class="fa fa-facebook"></i></a>
                                        </td>
                                        <td>Facebook</td>
                                        <td class="subject">
                                            <p class="email-summary">
                                                <strong>Meeting Reminder</strong>Ut enim ad minim veniam, quis nostrud exercitation...</p>
                                        </td>
                                        <td class="time text-right">Yesterday at 1:30am</td>
                                    </tr>

                                    <!-- END OF THREE -->


                                </table>
                            </div>
                            <!-- /.table-responsive -->


                        </div>

                        <div class="">
                             <div class="row">
                                <div class="col-sm-6">

                                    <div class="btn-group pull-left">
                                        <button type="button" class="btn">
                                            <span class="entypo-left-open"></span>
                                        </button>
                                        <button type="button" class="btn">
                                            <span class="entypo-right-open"></span>
                                        </button>

                                    </div>

                                    <div class="btn-group pull-left" style="margin-right:10px;">
                                        <button type="button" class="btn">1-50 of 124</button>


                                    </div>

                                </div>


                                <div class="col-sm-6">

                                </div>


                            </div>
                        </div>

                    </div>
</div><!--end row-->                    
@stop                    