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
                              {{Session::get('msg_flash')}}
                            <div class="row">                               
                                <div class="col-sm-6">


                                </div>


                                <div class="col-sm-6">

                                </div>


                            </div>

                        </div>
                        {{Form::open(array('url'=>'backend/request-demo/action', 'method' => 'post','role'=>'form'))}}   
                        <div id="content-mail">
                            <div class="table-responsive">
                                <!-- THE MESSAGES -->
                                <table class="table table-mailbox">
                                    <tr class="">
                                        <th class="small-col">  
                                         <input type="checkbox" id="ckbCheckAll" >
                                        </th>
                                        <th class="small-col">
                                        </th>
                                        <th>Name
                                        </td>
                                        <th>Company</th>
                                        <th class="subject"> Subject  
                                        </th>
                                        <th class="time text-right">Created at</th>
                                    </tr>

                                    @foreach($result as $show)

                                    <tr class="<?php if($show->status == 'unpublish') echo 'custom-color';?>">
                                        <td class="small-col">
                                           <input type="checkbox" value="{{$show->id}}" name="checkID[]" id="" class="checkBoxClass">
                                        </td>
                                        <td class="small-col"><i class="fa fa-star <?php if($show->status =='unpublish') echo 'star-yellow';?>"></i>
                                        </td>
                                        <td><a href='{{Request::root()}}/backend/request-demo/read/{{$show->id}}'>{{$show->name}}</a></td>
                                        <td class="subject">
                                            <p class="email-summary"><strong>{{$show->company}} </strong></p>
                                        </td>
                                        <td>        
                                            <p class="email-text"> {{$show->subject}}...</p>
                                        </td>
                                        <td class="time text-right">{{$show->created_at}}</td>
                                    </tr>

                                    @endforeach
                                    <!-- END OF THREE -->


                                </table>
                            </div>
                            <!-- /.table-responsive -->


                        </div>

                        <div class="">
                             <div class="row">
                                <div class="col-sm-6">

                                    <div style="margin-right:10px" class="btn-group pull-left">                                        
                                         
                                    </div>


                                    <div style="margin-right:10px" class="btn-group pull-left">
                                        <?php echo CommonHelper::createFormAction();?>  
                                           
                                    </div>

                                </div>


                                <div class="col-sm-6">

                                    <div class="btn-group pull-right" style="margin-right:10px;">
                                        <?php //echo $module_data->links(); ?>   
                                    </div>

                                </div>


                            </div>
                        </div>

                    </div>
</div><!--end row-->                    
@stop                    