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
                 <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">View</a>
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
<div class="content-wrap">
                <div class="row">                   
                   <div class="col-sm-8"> 
                        <div id="headerClose" class="nest">
                            <div class="title-alt">
                                <h6> Preview </h6>                          

                            </div>                       


                            <div id="header" class="body-nest">
                                <label>Title</label>
                                <h4>{{$module_data->title}}</h4>
                                <label>Content</label>
                                <p>{{$module_data->content}}</p>
                                <label>Sumary</label>
                                <p>{{$module_data->sumary}}</p>
                                <div class="form-group">
                                    <label for="">Images</label>
                                               @if($listImg)
                                                  @foreach($listImg as $img)
                                                  <img src="{{asset($img->path.'/'.$img->name)}}" with="100" height="100" alt="">
                                                  @endforeach
                                                @endif
                                </div>
                                <div class="form-group">
                                             <label for="">Documents</label>                                            
                                             @if($listFile)
                                                  @foreach($listFile as $file)
                                                  <p><i class="icon icon-attachment"></i><a href="{{asset($file->path.'/'.$file->name)}}" title="download">{{$file->name}}</a></p>
                                                  @endforeach
                                              @endif 
                                </div>

                                <div class="form-group">
                                     <a href='{{Request::root()}}/backend/module-package/{{$module_data->module_id}}/content/update/{{$module_data->id}}'>
                                                        <button class="btn">Update</button>                                                        
                                                    </a>
                                                    <a href='{{Request::root()}}/backend/module-package/{{$module_data->module_id}}/content/delete/{{$module_data->id}}'  onclick="return confirm('{{trans("messages.cf_delete")}}');">
                                                        <button class="btn">Delete</button>  
                                     </a>
                                </div>
                            </div>



                        </div>
                    </div>    
                    <!-- end basic -->                         
                      
                </div>
                 </div>
</div><!-- end row content-->    
@stop
