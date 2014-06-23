@section('title')
<div class="row">
                <div id="paper-top">
                    <div class="col-sm-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-media-record"></i> 
                            <span>
                             {{trans('common.table.blog')}}                       
                            </span>
                        </h2>

                    </div>

                    <div class="col-sm-7">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="tittle-middle-header">   
                              <div clas="alert">                         
                               {{Session::get('msg_flash_common')}}
                             </div>
                        
                        </div>

                    </div>
                    <div class="col-sm-2">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="btn-group btn-wigdet pull-right visible-lg">
                            <div class="btn">
                                Action</div>
                            <button data-toggle="dropdown" class="btn dropdown-toggle" type="button">
                                <span class="caret"></span>
                                <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            <ul role="menu" class="dropdown-menu">
                                <li>
                                    <a href="{{Request::root()}}/blog/admin/post/add">
                                        <span class="entypo-plus-circled margin-iconic"></span>  {{trans('common.button.add')}}  </a>
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
                <li><a href="{{Request::root()}}/blog/admin" title="Sample page 1">  {{trans('common.table.post')}}   </a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="{{Request::root()}}/blog/admin/post/add" title="Sample page 1">  {{trans('common.button.add')}}   </a>
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
            
            <div class="messages_validation">                           
                            {{Session::get('msg_flash')}}
            </div>
            {{Form::open(array('url'=>'blog/admin/post/add', 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data') )}}               
            <div class="col-lg-8">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">{{trans('titlepage.title.add_post')}}</h3>
                    </div>
                    <div class="panel-body">                         
                         <div>                            
                            <div class="form-group">                                
                                <label>{{trans('common.table.title')}}<span class="star-validation">(*)</span></label>
                                    {{Form::text('title','',array('class' => 'form-control','id'=>'title'))}}       
                            </div>
                            
                            <!-- <div class="form-group">
                                <label>{{trans('common.table.permalink')}}</label>                                
                                {{Form::text('permalink','',array('class' => 'form-control','id'=>'permalink'))}}       
                            </div>   -->                          
                              <div class="form-group">
                             <label>{{trans('common.table.content')}}</label>
                                {{Form::textarea('content','',array('class' => 'form-control ckeditor','id'=>'content'))}}                                     
                             </div>                             
                                
                         </div>
                    </div>
                </div>
            </div><!--end col 8-->
    
            <div class="col-lg-4">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">{{trans('titlepage.title.extends')}}</h3>
                    </div>
                    <div class="panel-body">                                             
                                
                            <div class="form-group">
                              <label>{{trans('common.table.sumary')}}</label>
                               {{Form::textarea('sumary','',array('class' => '','rows'=>'3','style'=>'width:100%;'))}}                                                
                            </div>
<!-- 
                            <div class="form-group">
                                <label>{{trans('common.table.keywords')}}</label>
                                {{Form::text('keyword','',array('class' => 'form-control','id'=>'keyword'))}}                           
                            </div> -->

                            <div class="form-group">
                              <label>{{trans('common.table.images')}}</label>
                                 {{Form::file('image',array('class' => 'image','multiple'=>'')) }}  
                            </div>  
                                
                            <div class="form-group">
                                <label>{{trans('common.table.category')}}<span class="star-validation">(*)</span></label>
                                <div class="overflow-scroll">
                                @foreach($categories as $category)
                                <div class="checkbox">
                                  <label>
                                      {{Form::checkbox('category[]',$category->id, false)}}                                      
                                   {{$category->name}}
                                  </label>
                                </div>  
                                @endforeach
                                </div>
                            </div>    
                             <?php echo CommonHelper::createFormStatus();?>
                            
                            <button type="submit" class="btn btn-primary">{{trans('common.button.save')}}</button>
                         
                    </div>
                </div>
             
            </div><!--end col 4-->
            {{ Form::close() }} 
         </div>       
      
</div><!-- end row 2-->                

@stop