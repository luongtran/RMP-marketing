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
                <li class="pull-right">
                    <div class="input-group input-widget">                           
                        {{Form::open(array('url'=>'backend/article/search', 'method' => 'get','role'=>'form') )}}                                                     
                              {{Form::text('keyfind','',array('class' => 'form-control','id'=>'keyfind','placeholder'=>'Search...','style'=>'border-radius:15px'))}}   
                        {{Form::close()}}                                      
                    </div>
                </li>
            </ul>
 @stop

@section('content')

<div class="row">
            
            <div class="col-lg-12">            
            <div class="col-lg-12"> 
                <div class="messages_validation">                           
                      {{Session::get('msg_flash')}}
                </div>
                <div class="panel panel-success">
                    <div class="panel-heading"> 
                        {{trans('titlepage.title.list_article')}}
                    </div>
                    <div class="panel-body">                        
                            <div class="col-lg-12">
                                {{Form::open(array('url'=>'backend/article/action', 'method' => 'post','role'=>'form'))}}               
                                <div class="table-responsive">
                                  <table class="table table-bordered table-hover tablesorter">
                                    <thead>
                                      <tr>
                                          <th><input type="checkbox" id="ckbCheckAll" /></th>  
                                        <th >{{trans('common.table.title')}} <i class="fa fa-sort"></i></th>
                                        <th >{{trans('common.table.permalink')}} <i class="fa fa-sort"></i></th>
                                        <th >{{trans('common.table.create_by')}}<i class="fa fa-sort"></i></th>
                                        <th ><i class="fa fa-sort"></i></th>                                        
                                      </tr>
                                    </thead>
                                    <tbody>
                                      @foreach($listArticles  as $article)                                      
                                      <tr <?php if($article->status == "unpublish"){echo "class='danger'";}?> >
                                          <td><input type="checkbox" value="{{$article->id}}" name="checkID[]" id="" class="checkBoxClass"></td>  
                                        <td class='custom-color'><a href="{{Request::root()}}/backend/article/view/{{$article->id}}">{{$article->title}}</a></td>
                                        <td class='custom-color'>{{$article->permalink}}</td>
                                        <td class='custom-color'>{{$article->create_by}}</td>
                                        <td class='custom-color'><a href="{{Request::root()}}/backend/article/update/{{$article->id}}" ><span class="label label-primary">{{trans('common.button.update')}}</span></a>
                                            <a href="{{Request::root()}}/backend/article/delete/{{$article->id}}" onclick="return confirm('{{trans("messages.cf_delete")}}');"><span class="label label-danger">{{trans('common.button.delete')}}</span></a></td>
                                      </tr>                                      
                                      @endforeach
                                    </tbody>
                                  </table>                                    
                                </div>
                                
                                
                          </div>
                        
                        <!-- action -->
                         <div class="col-lg-3">
                                   <?php echo CommonHelper::createFormAction();?> 
                         </div>                      
                        {{ Form::close() }} 
                    </div>
                    
                </div>
                     <!-- paging -->                
                         <?php echo $listArticles->links(); ?>  
                     <!-- end paging -->  
             </div>   
            </div>
      
</div><!-- end row 2-->               

@stop