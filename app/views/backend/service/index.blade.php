@section('content')
<div class="row"
     <div class="col-lg-12">
            <ol class="breadcrumb">
              <li><a href="{{Request::root()}}/backend"><i class="fa fa-dashboard"></i>{{trans('common.menu.dashboard')}}</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/service"><i class="fa fa-desktop"></i> {{trans('common.table.service')}} </a></li>            
            </ol>
    </div>   
</div><!-- end row 1--> 

<div class="row">
            
            <div class="col-lg-12">            
            <div class="col-lg-12"> 
                <div class="messages_validation">                           
                      {{Session::get('msg_flash')}}
                </div>
                <div class="panel panel-success">
                    <div class="panel-heading"> 
                        {{trans('titlepage.title.list_service')}}
                    </div>
                    <div class="panel-body">                        
                            <div class="col-lg-12">
                                
                                 <ul class="nav nav-pills">
                                    <li class="active"><a href="{{Request::root()}}/backend/service/add">{{trans('common.button.add')}}</a></li>                                   
                                  </ul>
                               
                                <h2></h2>
                                {{Form::open(array('url'=>'backend/service/action', 'method' => 'post','role'=>'form'))}}               
                                <div class="table-responsive">
                                  <table class="table table-bordered table-hover tablesorter">
                                    <thead>
                                      <tr>
                                          <th><input type="checkbox" id="ckbCheckAll" /></th>  
                                        <th class="header">{{trans('common.table.title')}} <i class="fa fa-sort"></i></th>
                                        <th class="header">{{trans('common.table.status')}} <i class="fa fa-sort"></i></th>
                                        <th class="header">{{trans('common.table.create_at')}}<i class="fa fa-sort"></i></th>
                                        <th class="header"><i class="fa fa-sort"></i></th>                                        
                                      </tr>
                                    </thead>
                                    <tbody>
                                      @foreach($listService  as $service)                                      
                                      <tr <?php if($service->status == "unpublish"){echo "class='danger'";}?> >
                                          <td><input type="checkbox" value="{{$service->id}}" name="checkID[]" id="" class="checkBoxClass"></td>  
                                        <td><a href="{{Request::root()}}/backend/service/view/{{$service->id}}">{{$service->title}}</a></td>
                                        <td>{{$service->status}}</td>
                                        <td>{{$service->created_at}}</td>
                                        <td><a href="{{Request::root()}}/backend/service/update/{{$service->id}}" ><span class="label label-primary">{{trans('common.button.update')}}</span></a>
                                            <a href="{{Request::root()}}/backend/service/delete/{{$service->id}}" onclick="return confirm('{{trans("messages.cf_delete")}}');"><span class="label label-danger">{{trans('common.button.delete')}}</span></a></td>
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
                         <?php echo $listService->links(); ?>  
                     <!-- end paging -->  
             </div>   
            </div>
      
</div><!-- end row 2-->               

@stop