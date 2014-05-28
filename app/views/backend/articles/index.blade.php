@section('content')
<div class="row"
     <div class="col-lg-12">
            <ol class="breadcrumb">
              <li><a href=""><i class="fa fa-dashboard"></i>{{trans('common.menu.dashboard')}}</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/article"><i class="fa fa-desktop"></i> {{trans('common.table.article')}} </a></li>            
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
                     
                    </div>
                    <div class="panel-body">                        
                            <div class="col-lg-12">
                                
                                 <ul class="nav nav-pills">
                                    <li class="active"><a href="{{Request::root()}}/backend/article/add">{{trans('common.button.add')}}</a></li>
                                    <li class="dropdown active">
                                      <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                        {{trans('common.table.category')}} <span class="caret"></span>
                                      </a>
                                      <ul class="dropdown-menu">
                                        @foreach($filterCategory as $ct)
                                        <li><a href="{{Request::root()}}/backend/article/filter/{{$ct->id}}">{{$ct->name}}</a></li>
                                        @endforeach                                        
                                      </ul>
                                    </li>
                                  </ul>
                               
                                <h2></h2>
                                {{Form::open(array('url'=>'backend/article/action', 'method' => 'post','role'=>'form'))}}               
                                <div class="table-responsive">
                                  <table class="table table-bordered table-hover tablesorter">
                                    <thead>
                                      <tr>
                                          <th><input type="checkbox" id="ckbCheckAll" /></th>  
                                        <th class="header">{{trans('common.table.title')}} <i class="fa fa-sort"></i></th>
                                        <th class="header">{{trans('common.table.status')}} <i class="fa fa-sort"></i></th>
                                        <th class="header">{{trans('common.table.create_by')}}<i class="fa fa-sort"></i></th>
                                        <th class="header"><i class="fa fa-sort"></i></th>                                        
                                      </tr>
                                    </thead>
                                    <tbody>
                                      @foreach($listArticles  as $article)                                      
                                      <tr <?php if($article->status == "unpublish"){echo "class='danger'";}?> >
                                          <td><input type="checkbox" value="{{$article->id}}" name="checkID[]" id="" class="checkBoxClass"></td>  
                                        <td><a href="{{Request::root()}}/backend/article/view/{{$article->id}}">{{$article->title}}</a></td>
                                        <td>{{$article->status}}</td>
                                        <td>{{$article->create_by}}</td>
                                        <td><a href="{{Request::root()}}/backend/article/update/{{$article->id}}"><span class="label label-primary">{{trans('common.button.update')}}</span></a>
                                            <a href="{{Request::root()}}/backend/article/delete/{{$article->id}}"><span class="label label-danger">{{trans('common.button.delete')}}</span></a></td>
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
                         <?php echo $listArticles->links(); ?>  
                     <!-- end paging -->  
             </div>   
            </div>
      
</div><!-- end row 2-->               

@stop