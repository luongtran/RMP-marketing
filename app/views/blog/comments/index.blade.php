@section('title')
<div class="row">
                <div id="paper-top">
                    <div class="col-sm-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-media-record"></i> 
                            <span>
                             Blog - {{trans('common.table.comment')}}                       
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
                                <!-- <li>
                                    <a href="{{Request::root()}}/backend/category">
                                        <span class="entypo-plus-circled margin-iconic"></span>  {{trans('common.button.add')}}  </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="entypo-heart margin-iconic"></span>Favorite</a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="entypo-cog margin-iconic"></span>Setting</a>
                                </li> -->
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
                <li><a href="{{Request::root()}}/blog/admin/comment" title="Sample page 1">  {{trans('common.table.comment')}}   </a>
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
                <div class="row">
                <div class="col-lg-12">
                <div class="panel panel-success">
                    <div class="panel-heading"> 
                       {{trans('titlepage.title.list_comment')}}
                    </div>
                    <div class="panel-body"> 
                                 {{Form::open(array('url'=>'blog/admin/comment/action', 'method' => 'post','role'=>'form'))}}               
                                <div class="table-responsive">
                                  <table class="table table-bordered table-hover tablesorter">
                                    <thead>
                                      <tr>
                                        <th><input type="checkbox" id="ckbCheckAll" /></th>  
                                        <th class="">{{trans('common.table.name')}}<i class="fa fa-sort"></i></th>
                                        <th class="">{{trans('common.table.email')}}<i class="fa fa-sort"></i></th>
                                        <th class="">{{trans('common.table.website')}}<i class="fa fa-sort"></i></th>                                       
                                        <th class="">{{trans('common.table.create_at')}}<i class="fa fa-sort"></i></th>
                                        <th class=""><i class="fa fa-sort"></i></th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      @foreach($lComment  as $comment)                                      
                                      <tr <?php if($comment->status == "unpublish"){echo "class='danger'";}?> >
                                          <td><input type="checkbox" value="{{$comment->id}}" name="checkID[]" id="" class="checkBoxClass"></td>  
                                        <td class='custom-color'><a href="{{Request::root()}}/blog/admin/comment/view/{{$comment->id}}">{{$comment->name}}</a></td>                                        
                                        <td class='custom-color'>{{$comment->email}}</td>   
                                        <td class='custom-color'>{{$comment->website}}</td>
                                        <td class='custom-color'>{{$comment->created_at}}</td>
                                        <td class='custom-color'>
                                            <a  href="{{Request::root()}}/blog/admin/comment/delete/{{$comment->id}}" onclick="return confirm('{{trans("messages.cf_delete")}}');"><span class="label label-danger">{{trans('common.button.delete')}}</span></a>
                                        </td>
                                      </tr>                                      
                                      @endforeach
                                    </tbody>
                                  </table> 
                                   </div>   

                                    <div class="row col-lg-3">
                                         <?php echo CommonHelper::createFormAction();?>
                                    </div>   
                      
                                  
                              {{Form::close()}} 
                             
                             
                          </div> 
                            
                </div><!--panel -->   
                 <?php echo $lComment->links(); ?>     
                </div><!-- 12--> 
              
           
       </div><!--col 12 -->        
       </div><!--col 12 -->
</div><!-- end row 2-->                
     
@stop