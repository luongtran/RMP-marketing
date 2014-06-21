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
                <li><a href="#" title="Sample page 1">Update</a>
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
                  {{Form::open(array('url'=>'backend/module-package/'.$infoMod->id.'/content/update/'.$module_data->id, 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data','id'=>'frm-setting') )}}                                                                                                            
                    <div class="col-sm-8"> 
                        <div class="panel panel-success">
                            <div class="panel-heading">                                
                                   Basic
                            </div>
                            <div class="panel-body">
                                    <!-- begin form-->                                     
                                        {{Session::get('msg_flash')}}                               
                                        <fieldset>
                                            <div class="form-group">
                                             <label for="">Title</label>
                                             {{Form::text('title',$module_data->title,array('class' => 'form-control'))}}                                             
                                            </div>                                         
                                            <div class="form-group">
                                             <label for="">Content</label>
                                             {{Form::textarea('content',$module_data->content,array('class' => 'form-control ckeditor'))}}                                             
                                            </div>
                                            
                                            <div class="form-group">
                                             <label for="">Sumary</label>
                                             {{Form::textarea('sumary',$module_data->sumary,array('class' => '','style'=>'width:100%;height:80px;'))}}                             
                                            </div>
                                           <div class="form-group">
                                             <label for="">Multi Images</label>
                                            {{Form::file('image[]',array('class' => 'image','multiple'=>'on')) }}                                            
                                            </div> 
                                            <div>
                                                @if($listImg)
                                                  @foreach($listImg as $img)
                                                  <img src="{{asset($img->path.'/'.$img->name)}}" with="100" height="100" alt="">
                                                  @endforeach
                                                @endif
                                            </div>
                                             <div class="form-group">
                                             <label for="">Upload Document</label>
                                             {{Form::file('file[]',array('class' => '','multiple'=>'on')) }}                                     
                                            </div> 
                                            <div>
                                             @if($listFile)
                                                  @foreach($listFile as $file)
                                                  <p><i class="icon icon-attachment"></i><a href="{{asset($file->path.'/'.$file->name)}}" title="download">{{$file->name}}</a></p>
                                                  @endforeach
                                              @endif
                                            </div>   
                                        </fieldset>                                 
                            </div>



                        </div>
                    </div>    
                    <!-- end basic -->                         
                       <div class="col-sm-4">
                        <div class="panel panel-success">
                            <div class="panel-heading">                                
                                   Extends
                            </div>
                            <div class="panel-body"> 
                                        <fieldset>                                                                                                                              
                                            <div class="form-group">
                                            <label for="">Language</label>    
                                            <select name="lang_id" class="form-control">                                              
                                                @foreach($language as $lang)
                                                @if($lang->code == $module_data->lang_id)
                                                <option value="{{$lang->code}}" selected>{{$lang->name}}</option>
                                                @elseif
                                                <option value="{{$lang->code}}">{{$lang->name}}</option>
                                                @endif
                                                @endforeach
                                            </select>
                                            </div> 
                                            <div class="form-group">
                                             <label for="">Icon</label>
                                             {{Form::text('icon',$module_data->icon,array('class' => 'form-control'))}}                                             
                                            </div>
                                            
                                            <div class="form-group">
                                             <label for="">Order</label>
                                             {{Form::text('order',$module_data->order,array('class' => 'form-control'))}}                                             
                                            </div>
                                             <div class="form-group">
                                             <label for="">Link</label>
                                             {{Form::text('link',$module_data->link,array('class' => 'form-control'))}}                                             
                                            </div>
                                             <div class="form-group">
                                            <label for="">Target</label>    
                                             {{Form::select('target',array('_self' => 'Self', '__blank' => 'Blank'),$module_data->target,array('class'=>'form-control'))}}
                                            </div>
                                             <div class="form-group">
                                            <label>{{trans('common.table.category')}} <span class="star-validation">(*)</span></label>
                                                <div class="overflow-scroll">
                                                 
                                                @foreach($categories as $ctItem)
                                                    <?php $active=false;?>
                                                    @foreach($category as $ctSub)
                                                    @if($ctSub->id == $ctItem->id)
                                                    <?php $active=true;?>
                                                    @endif                                       
                                                    @endforeach                                      
                                                  <div class="checkbox">
                                                  <label>                                       
                                                   {{Form::checkbox('category_id[]',$ctItem->id,$active)}}                                      
                                                   {{$ctItem->name}} 
                                                   </label>
                                                  </div>
                                                   
                                               @endforeach
                                                </div>
                                   
                                                </div>     
                                            <?php echo  CommonHelper::createFormStatus($module_data->status);?>                                            
                                            <button class="btn btn-success" type="submit" >Update</button>
                                        </fieldset>                              
                            </div>



                        </div>
                    </div>  
                    <!-- end extend -->                    
                 {{Form::close();}}
                </div>
            </div>
</div><!-- end row content-->    
@stop


@section('script')
</script>
@stop