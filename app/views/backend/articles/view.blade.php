@section('title')
<div class="row">
                <div id="paper-top">
                    <div class="col-sm-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-media-record"></i> 
                            <span>
                              Article                    
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
                                    <a href="{{Request::root()}}/backend/article/add">
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
                <li><a href="{{Request::root()}}/backend/article" title="article">Article</a>
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
            <div class="col-lg-12">
            <div class="col-lg-10">    
                   <div class="messages_validation">                           
                            {{Session::get('msg_flash')}}
                    </div>
                        
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">{{$article->title}}</h3>
                    </div>
                    
                    <div class="panel-body"> 
                        <div class="form-group">
                                <p><label>{{trans('common.table.permalink')}}: </label>
                                    {{$article->permalink}}
                                </p>                        
                        </div>
                        
                        <div class="form-group">
                            <div style="padding:5px;"><label>{{trans('common.table.content')}}: </label>
                                    {{$article->content}}
                             </div>                        
                        </div>
                        
                        <div class="form-group">
                                <p><label>{{trans('common.table.description')}}: </label>
                                    {{$article->description}}
                                </p>                        
                        </div>
                        
                        <div class="form-group">
                                <p><label>{{trans('common.table.images')}}: </label>
                                    @foreach($getImages as $lImage)
                                    <img src="{{asset($lImage->path.'/'.$lImage->name)}}" alt="{{$lImage->name}}" width="50" height="50" />
                                    @endforeach    
                                </p>                        
                        </div>
                        
                        
                        <div class="form-group">
                                <p><label>{{trans('common.table.keywords')}}: </label>
                                    {{$article->keyword}}
                                </p>                        
                        </div>
                        
                        <div class="form-group">
                                <p><label>{{trans('common.table.create_by')}}: </label>
                                    {{$article->create_by}}
                                </p>                        
                        </div>
                        <div class="form-group">
                                <p><label>{{trans('common.table.create_at')}}: </label>
                                    {{$article->created_at}}
                                </p>                        
                        </div>
                        <div class="form-group">
                                <p><label>{{trans('common.table.category')}}: </label>                                
                                    @foreach($listCategories as $category)
                                    <a ><span class="label label-default">{{$category->name}}</span></a>
                                    @endforeach
                                </p>                        
                        </div>
                        
                        <div class="form-group">
                                <p><label>{{trans('common.table.status')}}: </label>
                                    {{$article->status}}
                                </p>                        
                        </div>
                        <div class="form-group">
                            <a href="{{Request::root()}}/backend/article/update/{{$article->id}}"><button class="btn">{{trans('common.button.update')}}</button></a>
                            <a href="{{Request::root()}}/backend/article/delete/{{$article->id}}" onclick="return confirm('{{trans("messages.cf_delete")}}');"><button class="btn">{{trans('common.button.delete')}}</button></a></td>
                        </div>
                    </div>
                </div> 
                    
            </div>
             </div>    
    
</div><!-- end row 2-->                
        
@stop