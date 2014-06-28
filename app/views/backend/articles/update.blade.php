@section('title')
<div class="row">
                <div id="paper-top">
                    <div class="col-sm-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-media-record"></i> 
                            <span>
                             {{trans('common.table.article')}}                       
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
                                    <a href="{{Request::root()}}/backend/article/add">
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
                <li><a href="{{Request::root()}}/backend">
                    <span class="entypo-home"></span></a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="{{Request::root()}}/backend/article" title="Sample page 1">  {{trans('common.table.article')}}   </a>
                </li>     
                   <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">  {{trans('common.button.update')}}   </a>
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
            {{Form::open(array('url'=>'backend/article/update/'.$article->id, 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data') )}}               
            <div class="col-lg-8">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">{{trans('titlepage.title.update_article')}}</h3>
                    </div>
                    <div class="panel-body">                         
                         <div>                            
                            <div class="form-group">                                
                                <label>{{trans('common.table.title')}} <span class="star-validation">(*)</span></label>
                                    {{Form::text('title',$article->title,array('class' => 'form-control','id'=>'title'))}}       
                            </div>
                            
                            <div class="form-group">
                                <label>{{trans('common.table.permalink')}} </label>                                
                                {{Form::text('permalink',$article->permalink,array('class' => 'form-control','id'=>'permalink'))}}       
                            </div>
                            
                              <div class="form-group">
                             <label>{{trans('common.table.content')}}</label>
                                {{Form::textarea('content',$article->content,array('class' => 'form-control ckeditor'))}}                                     
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
                              <label>{{trans('common.table.description')}}</label>
                               {{Form::textarea('description',$article->description,array('class' => 'form-control','id'=>'description','rows'=>'2'))}}                                                
                            </div>
                                
                            <div class="form-group">
                                <label>{{trans('common.table.keywords')}}</label>
                                {{Form::text('keyword',$article->keyword,array('class' => 'form-control','id'=>'keyword'))}}                           
                            </div>

                            <div class="form-group">
                              <label>{{trans('common.table.images')}}</label>
                                 {{Form::file('fileimages[]',array('class' => '','id'=>'description','multiple'=>'on'))}}                                   
                              <div class="clear">
                                  @foreach($getImages as $lImage)
                                  <div style='padding:5px;border:1px solid #dedede;float:left;'><img src="{{asset($lImage->path.'/'.$lImage->name)}}" alt="{{$lImage->name}}" title="{{$lImage->name}}" width="60" height="60" /></div>
                                  @endforeach   
                              </div><div class='clear'></div>     
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
                                       {{Form::checkbox('category[]',$ctItem->id,$active)}}                                      
                                       {{$ctItem->name}} 
                                       </label>
                                      </div>
                                       
                                   @endforeach
                                    </div>
                                   
                            </div>    

                              <?php echo CommonHelper::createFormStatus($article->status);?>

                            <button type="submit" class="btn btn-primary">{{trans('common.button.update')}}</button>
                         
                    </div>
                </div>
             
            </div><!--end col 4-->
            {{ Form::close() }} 
         </div>       
      
</div><!-- end row 2-->                

@stop