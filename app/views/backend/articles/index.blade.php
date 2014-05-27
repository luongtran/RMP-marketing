@section('content')
<div class="row"
     <div class="col-lg-12">
            <ol class="breadcrumb">
              <li><a href=""><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/article"><i class="fa fa-desktop"></i> Article</a></li>            
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
                        List article
                    </div>
                    <div class="panel-body">                        
                            <div class="col-lg-12">
                                
                                 <ul class="nav nav-pills">
                                    <li class="active"><a href="{{Request::root()}}/backend/article/add">Add</a></li>
                                    <li class="dropdown active">
                                      <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                        Category <span class="caret"></span>
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
                                        <th></th>  
                                        <th class="header">Title <i class="fa fa-sort"></i></th>
                                        <th class="header">Status <i class="fa fa-sort"></i></th>
                                        <th class="header">Create by<i class="fa fa-sort"></i></th>
                                        <th class="header"><i class="fa fa-sort"></i></th>                                        
                                      </tr>
                                    </thead>
                                    <tbody>
                                      @foreach($listArticles  as $article)                                      
                                      <tr <?php if($article->status == "unpublish"){echo "class='danger'";}?> >
                                        <td><input type="checkbox" value="{{$article->id}}" id=""></td>  
                                        <td><a href="{{Request::root()}}/backend/article/view/{{$article->id}}">{{$article->title}}</a></td>
                                        <td>{{$article->status}}</td>
                                        <td>{{$article->create_by}}</td>
                                        <td><a href="{{Request::root()}}/backend/article/update/{{$article->id}}"><span class="label label-primary">Edit</span></a>
                                            <a href="{{Request::root()}}/backend/article/delete/{{$article->id}}"><span class="label label-danger">Delete</span></a></td>
                                      </tr>                                      
                                      @endforeach
                                    </tbody>
                                  </table>                                    
                                </div>
                                
                                
                          </div>
                        
                        <!-- action -->
                         <div class="col-lg-3">
                                  <div class="form-group">
                                    <select class="form-control">
                                      <option values="publish">Publish</option>
                                      <option value="unpublish">Unpublish</option>
                                      <option value="delete">Delete</option>
                                    </select></br>                                      
                                    <button type="button" class="btn btn-danger">Action</button>
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