@section('title')
<div class="row">
                <div id="paper-top">
                    <div class="col-sm-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-media-record"></i> 
                            <span>
                               MODULE                             
                            </span>
                        </h2>

                    </div>

                    <div class="col-sm-7">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="tittle-middle-header">

                            <div class="alert">
                               {{Session::get('msg_flash_common')}}
                            </div>


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
                                    <a href="{{Request::root()}}/backend/module/add">
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
                <li><a href="#" title="Sample page 1">Module</a>
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
                    {{Form::open(array('url'=>'backend/module/add', 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data','id'=>'frm-setting') )}}               
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title">{{trans('titlepage.title.add_module')}}</h3>
                        </div>
                        <div class="panel-body">                         
                             <div>                            
                                <div class="form-group">                                
                                    <label>{{trans('common.table.name')}}<span class="star-validation">(*)</span></label>
                                        {{Form::text('name','',array('class' => 'form-control','id'=>'name'))}}       
                                </div>
                                 

                                <div class="form-group">
                                    <label>{{trans('common.table.mod')}}</label> 
                                    {{Form::text('mod','',array('class' => 'form-control'))}}       
                                </div>

                                <div class="form-group">
                                    <label>{{trans('common.table.position')}}</label> 
                                    <select class="form-control" name="position">
                                        <option value="">None</option>
                                       @foreach($position as $otp)
                                       <option value="{{$otp->name}}">{{$otp->name}}</option>
                                       @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label>{{trans('common.table.order')}}</label> 
                                    {{Form::text('order','',array('class' => 'form-control'))}}       
                                </div>

                                <div class="form-group">
                                    <label>{{trans('common.table.icon')}}</label> 
                                    {{Form::textarea('icon','',array('class' => 'form-control','rows'=>'4'))}}       
                                </div>
                                 <?php echo CommonHelper::createFormStatus();?>
                                
                                 <button type="submit" class="btn btn-primary">{{trans('common.button.save')}}</button>
                             </div>
                           </div>
                            </div>                    
                    {{Form::close()}}
                                 
                </div><!--col4-->
                
                <div class="col-lg-8">
                <div class="col-lg-12">
                <div class="panel panel-success">
                    <div class="panel-heading"> 
                       <h3 class="panel-title"> {{trans('titlepage.title.list_module')}}</h3>
                    </div>
                    <div class="panel-body"> 
                               
                                <h2></h2>
                                 {{Form::open(array('url'=>'backend/module/action', 'method' => 'post','role'=>'form'))}}               
                                <div class="table-responsive">
                                  <table class="table table-bordered table-hover tablesorter">
                                    <thead>
                                      <tr>
                                        <th><input type="checkbox" id="ckbCheckAll" /></th>  
                                        <th class='custom-color'>{{trans('common.table.name')}}<i class="fa fa-sort"></i></th>
                                        <th class='custom-color'>{{trans('common.table.mod')}} <i class="fa fa-sort"></i></th>      
                                        <th class='custom-color'>{{trans('common.table.position')}} <i class="fa fa-sort"></i></th>      
                                        <th class='custom-color'>{{trans('common.table.order')}} <i class="fa fa-sort"></i></th>      
                                        <th class='custom-color'><i class="fa fa-sort"></i></th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      @foreach($module  as $mod)                                      
                                      <tr <?php if($mod->status == "unpublish"){echo "class='danger'";}?> >
                                          <td><input type="checkbox" value="{{$mod->id}}" name="checkID[]" id="" class="checkBoxClass"></td>  
                                        <td>{{$mod->name}}</td>
                                        <td>{{$mod->mod}}</td>
                                                       
                                        <td>{{$mod->position}}</td>                      
                                        <td>{{$mod->order}}</td>          
                                        <td><a  href="{{Request::root()}}/backend/module/update/{{$mod->id}}"><span class="label label-primary">{{trans('common.button.update')}}</span></a>
                                            <a  href="{{Request::root()}}/backend/module/delete/{{$mod->id}}" onclick="return confirm('{{trans("messages.cf_delete")}}');"><span class="label label-danger">{{trans('common.button.delete')}}</span></a>
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

                               <!-- paging -->                
                         <?php echo $module->links(); ?>  
                     <!-- end paging -->  
                               
                </div><!--panel -->  
                   
                </div><!-- 12-->   
                  
                            
                
                  
            </div><!--col 8 -->
       </div><!--col 12 -->        
       </div><!--col 12 -->
</div><!-- end row 2-->  
@stop