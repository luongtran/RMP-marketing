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
                               {{Session::get('msg_flash_home')}}
                          
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
                                    <a href="{{Request::root()}}/backend/module-package/{{$infoMod->id}}/content/add">
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
                <li><a href="{{Request::root()}}/backend/module-package/{{$infoMod->id}}/content" title="Sample page 1">Content [ Module {{$infoMod->name}} ]</a>
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
    <!-- <div class="col-sm-6">
                                    <div class="btn-group pull-left" style="margin-right:10px">
                                        <button data-toggle="dropdown" class="btn  dropdown-toggle" type="button">Filter language
                                            <span class="caret"></span>
                                        </button>
                                        <ul role="menu" class="dropdown-menu">
                                            <li><a href="#">All</a> </li>                                            
                                            <li><a href="#">English</a> </li>                                            
                                        </ul>
                                    </div>

        </div> -->
</div>
<div class="row">    
<div class="col-sm-12">
                        {{Session::get('msg_flash')}}
                        {{Form::open(array('url'=>'backend/module-package/'.$infoMod->id.'/content/action', 'method' => 'post','role'=>'form'))}}  
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                List content module {{$infoMod->name}}
                            </div>                              
                           <div class="panel-body">
                                 <section id="flip-scroll">                                   
                                    <table class="table table-bordered table-striped cf">
                                        <thead class="cf">
                                            <tr>
                                                <th><input type="checkbox" id="ckbCheckAll" /></th>
                                                <th>Title</th>
                                                <th>Lang</th>
                                                <th>Author</th>
                                                <th>Created</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($module_data as $data)
                                            <tr <?php if($data->status == "unpublish"){echo "class='danger'";}?>>
                                                <td class='custom-color'><input type="checkbox" value="{{$data->id}}" name="checkID[]" id="" class="checkBoxClass"></td>
                                                <td class='custom-color'><a href="{{Request::root()}}/backend/module-package/{{$infoMod->id}}/content/view/{{$data->id}}">{{$data->title}}</a></td>                                                                                               
                                                <td class='custom-color'>{{$data->lang_id}}</td> 
                                                <td class='custom-color'>{{$data->username}}</td> 
                                                <td class='custom-color'>{{$data->created_at}}</td> 
                                                <td class='custom-color'>
                                                    <a href='{{Request::root()}}/backend/module-package/{{$infoMod->id}}/content/update/{{$data->id}}'>
                                                        <span class="label label-primary">Update</span>                                                        
                                                    </a>
                                                    <a href='{{Request::root()}}/backend/module-package/{{$infoMod->id}}/content/delete/{{$data->id}}'  onclick="return confirm('{{trans("messages.cf_delete")}}');">
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