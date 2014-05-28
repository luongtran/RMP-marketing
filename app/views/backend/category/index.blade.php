@section('content')
<div class="row"
     <div class="col-lg-12">
            <ol class="breadcrumb">
              <li><a href=""><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/category"><i class="fa fa-desktop"></i> Category</a></li>            
            </ol>
    </div>   
</div><!-- end row 1--> 

<div class="row">
            
            <div class="col-lg-12">   
                  <div class="messages_validation">                           
                      {{Session::get('msg_flash')}}
                  </div>
            <div class="col-lg-12"> 
                <div class="col-lg-4">              
                    {{Form::open(array('url'=>'backend/category/add', 'method' => 'post','role'=>'form') )}}               
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title"></h3>
                        </div>
                        <div class="panel-body">                         
                             <div>                            
                                <div class="form-group">                                
                                    <label>Name<span class="star-validation">(*)</span></label>
                                        {{Form::text('name','',array('class' => 'form-control','id'=>'name'))}}       
                                </div>

                                <div class="form-group">
                                    <label>Permalink </label>                                
                                    {{Form::text('permalink','',array('class' => 'form-control','id'=>'permalink'))}}       
                                </div>

                                  <div class="form-group">
                                 <label>Description</label>
                                    {{Form::textarea('description','',array('class' => 'form-control','id'=>'description','rows'=>'2'))}}                                     
                                 </div>
                                 
                                  <div class="form-group">                                      
                                    <label>Parent</label>
                                    <select class="form-control" name="parent">                                        
                                    <option value="0">None</option>
                                    @foreach($parentCategory as $parentItem)                                    
                                     <option value="{{$parentItem->id}}">{{$parentItem->name}}</option>                                         
                                    @endforeach
                                    </select>
                                  </div>
                                 
                                 <div class="form-group">
                                    <label>Status</label>
                                    <div class="radio">
                                      <label>
                                       {{Form::radio('status', 'publish',true )}}
                                       Publish
                                      </label>
                                    </div>
                                   <div class="radio">
                                      <label>
                                        {{Form::radio('status', 'unpublish',false)}}
                                        Upublish
                                      </label>
                                    </div>                            
                                 </div>
                                 <button type="submit" class="btn btn-primary">Save</button>
                             </div>
                           </div>
                            </div>                    
                    {{Form::close()}}
                                 
                </div><!--col4-->
                
                <div class="col-lg-8">
                <div class="col-lg-12">
                <div class="panel panel-success">
                    <div class="panel-heading"> 
                        List category
                    </div>
                    <div class="panel-body"> 
                               
                                <h2></h2>
                                 {{Form::open(array('url'=>'backend/category/action', 'method' => 'post','role'=>'form'))}}               
                                <div class="table-responsive">
                                  <table class="table table-bordered table-hover tablesorter">
                                    <thead>
                                      <tr>
                                        <th><input type="checkbox" id="ckbCheckAll" /></th>  
                                        <th class="header">Name <i class="fa fa-sort"></i></th>
                                        <th class="header">Status <i class="fa fa-sort"></i></th>                                        
                                        <th class="header">Create at<i class="fa fa-sort"></i></th>
                                        <th class="header"><i class="fa fa-sort"></i></th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      @foreach($categories  as $category)                                      
                                      <tr <?php if($category->status == "unpublish"){echo "class='danger'";}?> >
                                          <td><input type="checkbox" value="{{$category->id}}" name="checkID[]" id="" class="checkBoxClass"></td>  
                                        <td>{{$category->name}}</td>                                        
                                        <td>{{$category->status}}</td>
                                        <td>{{$category->created_at}}</td>
                                        <td><a href="{{Request::root()}}/backend/category/update/{{$category->id}}"><span class="label label-primary">Update</span></a>
                                            <a href="{{Request::root()}}/backend/category/delete/{{$category->id}}"><span class="label label-danger">Delete</span></a>
                                        </td>
                                      </tr>                                      
                                      @endforeach
                                    </tbody>
                                  </table> 
                                     
                                   
                                   
                                </div>
                                 
                                <div class="form-group col-lg-3">
                                    <select class="form-control" name="action">
                                      <option value="publish">Publish</option>
                                      <option value="unpublish">Unpublish</option>
                                      <option value="delete">Delete</option>
                                    </select></br>                                         
                                    <button type="submit" class="btn btn-danger">Action</button>
                                  </div>     
                                 
                             {{Form::close()}} 
                             
                             
                          </div>                                
                                <!-- paging -->
                              <div >
                                <?php echo $categories->links(); ?>                            
                                </div> 
                               <!-- end paging -->   
                </div><!--panel -->   
                </div><!-- 12-->   
                  
                            
                
                  
            </div><!--col 8 -->
       </div><!--col 12 -->        
       </div><!--col 12 -->
</div><!-- end row 2-->                
        
@stop