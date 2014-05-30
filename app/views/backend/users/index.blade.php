@section('content')
<div class="row"
     <div class="col-lg-12">
            <ol class="breadcrumb">
              <li><a href="{{Request::root()}}/backend"><i class="fa fa-dashboard"></i>{{trans('common.menu.dashboard')}}</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/user"><i class="fa fa-desktop"></i> {{trans('common.table.user')}} </a></li>            
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
                        {{trans('titlepage.title.list_article')}}
                    </div>
                    <div class="panel-body">                        
                            <div class="col-lg-12">
                                
                                 <ul class="nav nav-pills">
                                    <li class="active"><a href="{{Request::root()}}/backend/user/add">{{trans('common.button.add')}}</a></li>
                                    <li class="dropdown active">
                                      <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                        {{trans('common.table.category')}} <span class="caret"></span>
                                      </a>                                    
                                    </li>
                                    <li >
                                         {{Form::open(array('url'=>'backend/user/search', 'method' => 'get','role'=>'form') )}}                                                     
                                                {{Form::text('keyfind','',array('class' => 'form-control','id'=>'keyfind','placeholder'=>'Search...'))}}   
                                         {{Form::close()}}                                                    
                                    </li>
                                  </ul>
                               
                                <h2></h2>
                                {{Form::open(array('url'=>'backend/user/action', 'method' => 'post','role'=>'form'))}}               
                                <div class="table-responsive">
                                  <table class="table table-bordered table-hover tablesorter">
                                    <thead>
                                      <tr>
                                          <th><input type="checkbox" id="ckbCheckAll" /></th>  
                                        <th class="header">{{trans('common.table.username')}} <i class="fa fa-sort"></i></th>
                                        <th class="header">{{trans('common.table.permission')}} <i class="fa fa-sort"></i></th>
                                        <th class="header">{{trans('common.table.create_at')}}<i class="fa fa-sort"></i></th>
                                        <th class="header"><i class="fa fa-sort"></i></th>                                        
                                      </tr>
                                    </thead>
                                    <tbody>
                                      @foreach($getUser  as $list)                                      
                                      <tr <?php if($list->status == "unpublish"){echo "class='danger'";}?> >
                                          <td><input type="checkbox" value="{{$list->id}}" name="checkID[]" id="" class="checkBoxClass"></td>  
                                        <td><a href="{{Request::root()}}/backend/article/view/{{$list->id}}">{{$list->username}}</a></td>
                                        <td>{{$list->status}}</td>
                                        <td>{{$list->create_by}}</td>
                                        <td><a href="{{Request::root()}}/backend/article/update/{{$list->id}}" ><span class="label label-primary">{{trans('common.button.update')}}</span></a>
                                            <a href="{{Request::root()}}/backend/article/delete/{{$list->id}}" onclick="return confirm('{{trans("messages.cf_delete")}}');"><span class="label label-danger">{{trans('common.button.delete')}}</span></a></td>
                                      </tr>                                      
                                      @endforeach
                                    </tbody>
                                  </table>                                    
                                </div>
                                
                                
                          </div>
                        
                        <!-- action -->
                         <div class="col-lg-3">
                                  <div class="form-group">
                                      <select class="form-control" name="action">
                                      <option value="publish">{{trans('common.table.publish')}}</option>
                                      <option value="unpublish">{{trans('common.table.unpublish')}}</option>
                                      <option value="delete">{{trans('common.button.delete')}}</option>
                                    </select></br>                                                                          
                                    <button type="submit" class="btn btn-danger">{{trans('common.button.action')}}</button>
                                  </div>  
                         </div>                      
                        {{ Form::close() }} 
                    </div>
                    
                </div>
                     <!-- paging -->                
                         <?php echo $getUser->links(); ?>  
                     <!-- end paging -->  
             </div>   
            </div>
      
</div><!-- end row 2-->               

@stop