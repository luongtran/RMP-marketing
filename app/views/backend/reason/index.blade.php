@section('content')
<div class="row"
     <div class="col-lg-12">
            <ol class="breadcrumb">
              <li><a href="{{Request::root()}}/backend"><i class="fa fa-dashboard"></i> {{trans('common.menu.dashboard')}}</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/reason"><i class="fa fa-desktop"></i> {{trans('common.table.reason')}}</a></li>            
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
                    {{Form::open(array('url'=>'backend/reason/add', 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data') )}}               
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title">{{trans('titlepage.title.add_reason')}}</h3>
                        </div>
                        <div class="panel-body">                         
                             <div>                            
                                <div class="form-group">                                
                                    <label>{{trans('common.table.title')}}<span class="star-validation">(*)</span></label>
                                        {{Form::text('title','',array('class' => 'form-control','id'=>'name'))}}       
                                </div>   

                                <div class="form-group">
                                 <label>{{trans('common.table.caption')}}</label>
                                    {{Form::textarea('caption','',array('class' => 'form-control','id'=>'description','rows'=>'2'))}}                                     
                                 </div>
                                 
                                  <div class="form-group">                                      
                                    <label>{{trans('common.table.image')}}</label>
                                     {{Form::file('image') }}  
                                  </div>
                                   <div class="form-group">                                
                                    <label>{{trans('common.table.order')}}<span class="star-validation"></span></label>
                                        {{Form::text('order','',array('class' => 'form-control'))}}       
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
                       {{trans('titlepage.title.list_reason')}}
                    </div>
                    <div class="panel-body"> 
                               
                                <h2></h2>
                                 {{Form::open(array('url'=>'backend/reason/action', 'method' => 'post','role'=>'form'))}}               
                                <div class="table-responsive">
                                  <table class="table table-bordered table-hover tablesorter">
                                    <thead>
                                      <tr>
                                        <th><input type="checkbox" id="ckbCheckAll" /></th>  
                                        <th class="header">{{trans('common.table.title')}}<i class="fa fa-sort"></i></th>
                                        <th class="header">{{trans('common.table.status')}} <i class="fa fa-sort"></i></th>                                        
                                        <th class="header">{{trans('common.table.order')}} <i class="fa fa-sort"></i></th>                                        
                                        <th class="header">{{trans('common.table.create_at')}}<i class="fa fa-sort"></i></th>
                                        <th class="header"><i class="fa fa-sort"></i></th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      @foreach($getReason  as $reason)                                      
                                      <tr <?php if($reason->status == "unpublish"){echo "class='danger'";}?> >
                                          <td><input type="checkbox" value="{{$reason->id}}" name="checkID[]" id="" class="checkBoxClass"></td>  
                                        <td>{{$reason->title}}</td>                                        
                                        <td>{{$reason->status}}</td>
                                        <td>{{$reason->order}}</td>
                                        <td>{{$reason->created_at}}</td>
                                        <td><a  href="{{Request::root()}}/backend/reason/update/{{$reason->id}}"><span class="label label-primary">{{trans('common.button.update')}}</span></a>
                                            <a  href="{{Request::root()}}/backend/reason/delete/{{$reason->id}}" onclick="return confirm('{{trans("messages.cf_delete")}}');"><span class="label label-danger">{{trans('common.button.delete')}}</span></a>
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
                         <?php echo $getReason->links(); ?>  
                     <!-- end paging -->  
                </div><!-- 12-->   
                  
                            
                
                  
            </div><!--col 8 -->
       </div><!--col 12 -->        
       </div><!--col 12 -->
</div><!-- end row 2-->                
     
@stop