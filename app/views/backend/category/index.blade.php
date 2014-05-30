@section('content')
<div class="row"
     <div class="col-lg-12">
            <ol class="breadcrumb">
              <li><a href="{{Request::root()}}/backend"><i class="fa fa-dashboard"></i> {{trans('common.menu.dashboard')}}</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/category"><i class="fa fa-desktop"></i> {{trans('common.table.category')}}</a></li>            
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
                            <h3 class="panel-title">{{trans('titlepage.title.add_category')}}</h3>
                        </div>
                        <div class="panel-body">                         
                             <div>                            
                                <div class="form-group">                                
                                    <label>{{trans('common.table.name')}}<span class="star-validation">(*)</span></label>
                                        {{Form::text('name','',array('class' => 'form-control','id'=>'name'))}}       
                                </div>

                                <div class="form-group">
                                    <label>{{trans('common.table.permalink')}}</label>                                
                                    {{Form::text('permalink','',array('class' => 'form-control','id'=>'permalink'))}}       
                                </div>

                                  <div class="form-group">
                                 <label>{{trans('common.table.description')}}</label>
                                    {{Form::textarea('description','',array('class' => 'form-control','id'=>'description','rows'=>'2'))}}                                     
                                 </div>
                                 
                                  <div class="form-group">                                      
                                    <label>{{trans('common.table.parent')}}</label>
                                    <select class="form-control" name="parent">                                        
                                        <option value="0">None</option>
                                        {{$listParent}}                                                                  
                                    </select>
                                  </div>
                                 
                                 <div class="form-group">
                                    <label>{{trans('common.table.status')}}</label>
                                    <div class="radio">
                                      <label>
                                       {{Form::radio('status', 'publish',true )}}
                                       {{trans('common.table.publish')}}
                                      </label>
                                    </div>
                                   <div class="radio">
                                      <label>
                                        {{Form::radio('status', 'unpublish',false)}}
                                        {{trans('common.table.unpublish')}}
                                      </label>
                                    </div>                            
                                 </div>
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
                       {{trans('titlepage.title.list_category')}}
                    </div>
                    <div class="panel-body"> 
                               
                                <h2></h2>
                                 {{Form::open(array('url'=>'backend/category/action', 'method' => 'post','role'=>'form'))}}               
                                <div class="table-responsive">
                                  <table class="table table-bordered table-hover tablesorter">
                                    <thead>
                                      <tr>
                                        <th><input type="checkbox" id="ckbCheckAll" /></th>  
                                        <th class="header">{{trans('common.table.name')}}<i class="fa fa-sort"></i></th>
                                        <th class="header">{{trans('common.table.status')}} <i class="fa fa-sort"></i></th>                                        
                                        <th class="header">{{trans('common.table.create_at')}}<i class="fa fa-sort"></i></th>
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
                                        <td><a  href="{{Request::root()}}/backend/category/update/{{$category->id}}"><span class="label label-primary">{{trans('common.button.update')}}</span></a>
                                            <a  href="{{Request::root()}}/backend/category/delete/{{$category->id}}" onclick="return confirm('{{trans("messages.cf_delete")}}');"><span class="label label-danger">{{trans('common.button.delete')}}</span></a>
                                        </td>
                                      </tr>                                      
                                      @endforeach
                                    </tbody>
                                  </table> 
                                     
                                     <div class="row col-lg-3">
                                        <div class="form-group">
                                        <select class="form-control " name="action">
                                          <option value="publish">{{trans('common.table.publish')}}</option>
                                          <option value="unpublish">{{trans('common.table.unpublish')}}</option>
                                          <option value="delete">{{trans('common.button.delete')}}</option>
                                        </select></br>                                         
                                        <button type="submit" class="btn btn-danger">{{trans('common.button.action')}}</button>                                   
                                        </div>
                                    </div>   
                                   
                                </div>                               
                                  
                              {{Form::close()}} 
                             
                             
                          </div> 
                      
                       
                              <div class="row col-lg-3">
                                  <?php echo $categories->links(); ?>      
                              </div> 
                </div><!--panel -->   
                </div><!-- 12-->   
                  
                            
                
                  
            </div><!--col 8 -->
       </div><!--col 12 -->        
       </div><!--col 12 -->
</div><!-- end row 2-->                
     
@stop