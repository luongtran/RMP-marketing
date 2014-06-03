@section('content')
<div class="row"
     <div class="col-lg-12">
            <ol class="breadcrumb">
              <li><a href="{{Request::root()}}/backend"><i class="fa fa-dashboard"></i> {{trans('common.menu.dashboard')}}</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/module"><i class="fa fa-desktop"></i> {{trans('common.table.module')}}</a></li>            
            </ol>
    </div>   
</div><!-- end row 1--> 

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
                                    <label>{{trans('common.table.intro')}}</label> 
                                    {{Form::textarea('intro','',array('class' => 'form-control','rows'=>'4'))}}       
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
                       {{trans('titlepage.title.list_module')}}
                    </div>
                    <div class="panel-body"> 
                               
                                <h2></h2>
                                 {{Form::open(array('url'=>'backend/module/action', 'method' => 'post','role'=>'form'))}}               
                                <div class="table-responsive">
                                  <table class="table table-bordered table-hover tablesorter">
                                    <thead>
                                      <tr>
                                        <th><input type="checkbox" id="ckbCheckAll" /></th>  
                                        <th class="header">{{trans('common.table.name')}}<i class="fa fa-sort"></i></th>
                                        <th class="header">{{trans('common.table.mod')}} <i class="fa fa-sort"></i></th>      
                                        <th class="header">{{trans('common.table.position')}} <i class="fa fa-sort"></i></th>      
                                        <th class="header">{{trans('common.table.status')}} <i class="fa fa-sort"></i></th>      
                                        <th class="header"><i class="fa fa-sort"></i></th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      @foreach($module  as $mod)                                      
                                      <tr <?php if($mod->status == "unpublish"){echo "class='danger'";}?> >
                                          <td><input type="checkbox" value="{{$mod->id}}" name="checkID[]" id="" class="checkBoxClass"></td>  
                                        <td>{{$mod->name}}</td>
                                        <td>{{$mod->mod}}</td>
                                                       
                                        <td>{{$mod->position}}</td>                      
                                        <td>{{$mod->status}}</td>          
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
                               
                </div><!--panel -->  
                     <!-- paging -->                
                         <?php echo $module->links(); ?>  
                     <!-- end paging -->  
                </div><!-- 12-->   
                  
                            
                
                  
            </div><!--col 8 -->
       </div><!--col 12 -->        
       </div><!--col 12 -->
</div><!-- end row 2-->  
@stop