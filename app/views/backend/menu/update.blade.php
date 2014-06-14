@section('title')
<div class="row">
                <div id="paper-top">
                    <div class="col-sm-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-media-record"></i> 
                            <span>
                              {{trans('common.table.menu')}}                           
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
                                    <a href="{{Request::root()}}/backend/menu/add">
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
                <li><a href="{{Request::root()}}/backend/menu" title="Sample page 1">{{trans('common.table.menu')}}</a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">{{trans('common.button.update')}}</a>
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
            <div class="col-lg-6">
                             
                {{Form::open(array('url'=>'backend/menu/update/'.$getMenu->id, 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data') )}}               
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title">{{trans('titlepage.title.update_menu')}}</h3>
                        </div>
                        <div class="panel-body">
                            <p>{{Session::get('msg_flash')}}</p>   
                             <div>                            
                                <div class="form-group">                                
                                    <label>{{trans('common.table.title')}}<span class="star-validation">(*)</span></label>
                                        {{Form::text('title',$getMenu->title,array('class' => 'form-control','id'=>'name'))}}       
                                </div>

                                <div class="form-group">
                                    <label>{{trans('common.table.link')}}</label>                                
                                    <select class="form-control" name="page_id">
                                        <option>None</option>
                                        @foreach($listPage as $page)
                                        @if($page->id == $getMenu->page_id)
                                        <option value="{{$page->id}}" selected="selected">{{$page->name}}</option>
                                        @else 
                                        <option value="{{$page->id}}" >{{$page->name}}</option>
                                        @endif
                                        @endforeach
                                    </select>    
                                </div>
                                 <div class="form-group">
                                     <label>{{trans('common.table.parent')}}</label>       
                                     <select name="parent" class="form-control">
                                         <option value="0">None</option>
                                         {{$getParent}}
                                     </select>
                                 </div>     
                                 
                                 <div class="form-group">
                                    <label>{{trans('common.table.order')}} </label>                                
                                    {{Form::text('order',$getMenu->order,array('class' => 'form-control','id'=>'order'))}}       
                                </div>
                                 
                                <div class="form-group">
                                    <label>{{trans('common.table.icon')}}(Ex: icon-home)</label>                                
                                    {{Form::text('icon',$getMenu->icon,array('class' => 'form-control','id'=>'icon'))}}       
                                </div>

                                <div class="form-group">
                                            <label for="">Language</label>    
                                            <select name="lang_id" class="form-control">                                              
                                                @foreach($language as $lang)
                                                @if($lang->code == $getMenu->lang_id)
                                                <option value="{{$lang->code}}" selected>{{$lang->name}}</option>
                                                @elseif
                                                <option value="{{$lang->code}}">{{$lang->name}}</option>
                                                @endif
                                                @endforeach
                                            </select>
                                </div>      
                                 
                                <?php echo CommonHelper::createFormStatus($getMenu->status);?>
                                 
                                 <button type="submit" class="btn btn-primary">{{trans('common.button.update')}}</button>
                                 
                              </div>  
                        </div>        
                    </div>
                {{Form::close()}}
             </div><!-- col 8 -->    
       </div><!-- col 12 -->          
</div><!-- row 2 -->             
@stop