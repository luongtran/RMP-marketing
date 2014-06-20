@section('title')
<div class="row">
                <div id="paper-top">
                    <div class="col-sm-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-media-record"></i> 
                            <span>
                              {{trans('common.table.language')}}                           
                            </span>
                        </h2>

                    </div>

                    <div class="col-sm-7">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="tittle-middle-header">                         
                               {{Session::get('msg_flash_common')}}
                          
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
                                    <a href="{{Request::root()}}/backend/language/add">
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
                <li><a href="{{Request::root()}}/backend/language" title="Sample page 1">{{trans('common.table.language')}}</a>
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
            <div class="col-lg-12">
                <div class="messages_validation col-lg-12">                           
                      {{Session::get('msg_flash')}}
                </div>
                <div class="col-lg-4">
                <div class='row'>              
                    {{Form::open(array('url'=>'backend/language/add', 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data','id'=>'frm-setting') )}}               
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title">{{trans('titlepage.title.add_language')}}</h3>
                        </div>
                        <div class="panel-body">                         
                             <div>                            
                                <div class="form-group">                                
                                    <label>{{trans('common.table.name')}}<span class="star-validation">(*)</span></label>
                                        {{Form::text('name','',array('class' => 'form-control','id'=>'name'))}}       
                                </div>
                                                         
                                
                                <div class="form-group">
                                    <label>{{trans('common.table.code')}} </label>                                
                                    {{Form::text('code','',array('class' => 'form-control'))}}       
                                </div>
                                 
                                <div class="form-group">
                                    <label>{{trans('common.table.icon')}}(Ex: icon-home)</label>                                
                                    {{Form::text('icon','',array('class' => 'form-control','id'=>'icon'))}}       
                                </div>
                          
                                 <?php echo CommonHelper::createFormStatus();?>
                                
                                 <button type="submit" class="btn btn-primary">{{trans('common.button.save')}}</button>
                             </div>
                           </div>
                            </div>                    
                    {{Form::close()}}
                   </div>              
                </div><!--col4-->
                
                <div class="col-lg-8">
                <div class='row'>       
                <div class="col-lg-12">
                <div class="panel panel-success">
                    <div class="panel-heading"> 
                       {{trans('titlepage.title.list_language')}}
                    </div>
                    <div class="panel-body"> 
                               
                                <h2></h2>
                                 {{Form::open(array('url'=>'backend/language/action', 'method' => 'post','role'=>'form'))}}               
                                <div class="table-responsive">
                                  <table class="table table-bordered table-hover tablesorter">
                                    <thead>
                                      <tr>
                                        <th><input type="checkbox" id="ckbCheckAll" /></th>  
                                        <th class="">{{trans('common.table.name')}}<i class="fa fa-sort"></i></th>
                                        <th class="">{{trans('common.table.code')}} <i class="fa fa-sort"></i></th>                                              
                                        <th class="">{{trans('common.table.icon')}} <i class="fa fa-sort"></i></th>      
                                        <th class=""><i class="fa fa-sort"></i></th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      @foreach($getLang  as $prList)                                      
                                      <tr <?php if($prList->status == "unpublish"){echo "class='danger'";}?> >
                                        <td><input type="checkbox" value="{{$prList->id}}" name="checkID[]" id="" class="checkBoxClass"></td>  
                                        <td>{{$prList->name}}</td>                                                        
                                        <td>{{$prList->code}}</td> 
                                        <td>{{$prList->icon}}</td>          
                                        <td><a  href="{{Request::root()}}/backend/language/update/{{$prList->id}}"><span class="label label-primary">{{trans('common.button.update')}}</span></a>
                                            <a  href="{{Request::root()}}/backend/language/delete/{{$prList->id}}" onclick="return confirm('{{trans("messages.cf_delete")}}');"><span class="label label-danger">{{trans('common.button.delete')}}</span></a>
                                        </td>
                                      </tr>                                      
                                      @endforeach
                                    </tbody>
                                  </table> 
                                </div>
                                
                                    
                                    <div class="row col-lg-3">
                                          <?php echo CommonHelper::createFormAction();?>
                                    </div>
                                 
                                 
                          </div>                                
                                                                    
                              
                                 
                             {{Form::close()}} 
                               
                </div><!--panel -->  
                     <!-- paging -->                
                         <?php echo $getLang->links(); ?>  
                     <!-- end paging -->  
                </div><!-- 12-->  
                </div> 
                  
                            
                
                  
            </div><!--col 8 -->
       </div><!--col 12 -->        
       </div><!--col 12 -->
</div><!-- end row 2-->  
@stop