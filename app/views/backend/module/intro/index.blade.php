@section('title')
<div class="row">
                <div id="paper-top">
                    <div class="col-sm-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-media-record"></i> 
                            <span>
                               MODULE {{$infoMod->name}}                                
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
                                    <a href="{{Request::root()}}/backend/module/{{$infoMod->id}}/intro/add">
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
                <li><a href="{{Request::root()}}/backend/module" title="Sample page 1">Module</a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="{{Request::root()}}/backend/module/{{$infoMod->id}}/intro" title="Sample page 1">Intro [ Module {{$infoMod->name}} ]</a>
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
<div class="col-sm-9">

                        {{Form::open(array('url'=>'backend/module/'.$infoMod->id.'/intro/action', 'method' => 'post','role'=>'form'))}}  
                        <div id="headerClose" class="nest">
                            <div class="title-alt">
                                <h6> List content module {{$infoMod->name}} </h6>
                            </div>                              
                           <div id="header" class="body-nest">
                                 <section id="flip-scroll">                                                                            
                                        {{Session::get('msg_flash')}}                                    
                                    <table class="table table-bordered table-striped cf">
                                        <thead class="cf">
                                            <tr>
                                                <th><input type="checkbox" id="ckbCheckAll" /></th>
                                                <th>Title</th>
                                                <th>Lang</th>
                                                <th>Author</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($module_data as $data)
                                            <tr <?php if($data->status == "unpublish"){echo "class='danger'";}?>>
                                                <td><input type="checkbox" value="{{$data->id}}" name="checkID[]" id="" class="checkBoxClass"></td>
                                                <td>{{$data->title}}</td>                                                                                               
                                                <td>{{$data->lang_id}}</td> 
                                                <td>{{$data->user_id}}</td> 
                                                <td>
                                                    <a href='{{Request::root()}}/backend/module/{{$infoMod->id}}/intro/update/{{$data->id}}'>
                                                        <span class="label label-primary">Update</span>                                                        
                                                    </a>
                                                    <a href='{{Request::root()}}/backend/module/{{$infoMod->id}}/intro/delete/{{$data->id}}'  onclick="return confirm('{{trans("messages.cf_delete")}}');">
                                                    <span class="label label-danger">Delete</span>
                                                    </a> 
                                                </td>
                                                
                                            </tr>                    
                                            @endforeach
                                        </tbody>
                                    </table>                                  
                                </section>
                                
                            </div>
                          
                        </div>
                                    <div class="row col-lg-3">
                                          <?php echo CommonHelper::createFormAction();?>
                                         <?php echo $module_data->links(); ?>       
                                   </div>
                           {{Form::close()}}    
                      
                    </div>

</div>
@stop