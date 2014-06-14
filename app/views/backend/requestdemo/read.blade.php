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
                <li><a href="{{Request::root()}}/backend/request-demo" title="Sample page 1">Request demo</a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                 <li><a href="#" title="Sample page 1">Read</a>
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

                                </div>

                                <div class="col-sm-6">

                                </div>


                            </div>

                        </div>

                        <div id="content-mail">
                            <div class="table-responsive">
                                <!-- THE MESSAGES -->
                                <div class="row">
                                <div class="col-sm-6">
                                <table class="">
                                 <tr>   
                                 <td><label>Name: </label> </td>
                                 <td class='custom-color'><p> {{$read->name}}</p></td>
                                 </tr>
                                 <tr> 
                                 <td><label>Company: </label> </td>
                                 <td class='custom-color'><p> {{$read->company}}</p></td>
                                 </tr>
                                 <tr> 
                                 <td><label>Email: </label> </td>
                                 <td class='custom-color'><p> {{$read->email}}</p></td>
                                 </tr>
                                 <tr> 
                                 <td><label>Subject: </label> </td>
                                 <td class='custom-color'><p> {{$read->subject}}</p></td>
                                 </tr>
                                 <tr> 
                                 <td><label>Text: </label> </td>
                                 <td class='custom-color'><p> {{$read->text}}</p></td>
                                 </tr> 
                                </table>        
                                </div>

                                <div class="col-sm-6">

                                </div>


                            </div>  

                            </div>
                            <!-- /.table-responsive -->


                        </div>

                     

                    </div>
</div><!--end row-->                    
@stop                    