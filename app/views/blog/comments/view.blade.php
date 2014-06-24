@section('title')
<div class="row">
                <div id="paper-top">
                    <div class="col-sm-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-media-record"></i> 
                            <span>
                              Blog - Comment               
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
                               
                            </ul>
                        </div>


                    </div>
                </div>
            </div>
@stop
@section('breadcrumb')      
 <ul id="breadcrumb">
                <li>
                    <a href="{{Request::root()}}"><span class="entypo-home"></span></a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="{{Request::root()}}/blog/admin" title="Sample page 1">{{trans('common.table.blog')}}</a>
                </li>    
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="{{Request::root()}}/blog/admin/comment" title="Sample page 1">{{trans('common.table.comment')}}</a>
                </li>                
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">{{trans('common.button.view')}}</a>
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

                  <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title">{{trans('titlepage.title.view_comment')}}</h3>
                        </div>
                        <div class="panel-body">
                            <p>{{Session::get('msg_flash')}}</p>   
                             <div>                            
                                {{Form::open(array('url'=>'blog/admin/comment/action', 'method' => 'post','role'=>'form'))}}     
                                <div class="form-group">                                
                                    <label>{{trans('common.table.name')}}</label></br>
                                      {{$viewComment->name}}       
                                </div>   
                                <div class="form-group">                                
                                    <label>{{trans('common.table.email')}}</label></br>
                                       {{$viewComment->email}}       
                                </div>                              
                                <div class="form-group">                                
                                    <label>{{trans('common.table.website')}}</label></br>
                                       {{$viewComment->website}}       
                                </div> 

                                <div class="form-group">                                
                                    <label>{{trans('common.table.create_at')}}</label></br>
                                        {{$viewComment->created_at}}       
                                </div> 

                                <div class="form-group">                                
                                    <label>{{trans('common.table.ip')}}</label></br>
                                        {{$viewComment->ip}}       
                                </div> 
                                <div class="form-group">                                
                                    <label>{{trans('common.table.post_id')}}</label></br>
                                        {{$viewComment->post_id}}       
                                </div> 

                                <div class="form-group">                                
                                    <label>{{trans('common.table.content')}}</label>
                                        <p>{{$viewComment->content}}  </p>     
                                </div>                                
                                

                                <div class="form-group">                                
                                   <input type="checkbox" value="{{$viewComment->id}}" name="checkID[]" checked="checked" >     
                                </div> 

                                <div class="row col-lg-3">
                                         <?php echo CommonHelper::createFormAction();?>
                                </div>  

                                {{Form::close()}}
                              </div>  
                        </div>        
                    </div>
               
             </div><!-- col 8 -->    
       </div><!-- col 12 -->          
</div><!-- row 2 -->             
@stop