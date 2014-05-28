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
            <div class="col-lg-6">
                             
                {{Form::open(array('url'=>'backend/category/update/'.$getCategory->id, 'method' => 'post','role'=>'form') )}}               
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title">Update category</h3>
                        </div>
                        <div class="panel-body">
                            <p>{{Session::get('msg_flash')}}</p>   
                             <div>                            
                                <div class="form-group">                                
                                    <label>Name<span class="star-validation">(*)</span></label>
                                        {{Form::text('name',$getCategory->name,array('class' => 'form-control','id'=>'name'))}}       
                                </div>

                                <div class="form-group">
                                    <label>Permalink </label>                                
                                    {{Form::text('permalink',$getCategory->permalink,array('class' => 'form-control','id'=>'permalink'))}}       
                                </div>

                                 <div class="form-group">
                                 <label>Description</label>
                                    {{Form::textarea('description',$getCategory->description,array('class' => 'form-control','id'=>'description','rows'=>'2'))}}                                     
                                  </div>                               
                                  <div class="form-group">
                                    <label>Category <span class="star-validation">(*)</span></label>                                                                 
                                    <select class="form-control" name="parent">
                                     <option value="0" <?php if($getCategory->parent==0){echo "selected='selected'";}?>>None</option>      
                                     @foreach($categories as $ctItem)
                                        @if($getCategory->parent == $ctItem->id)  
                                        <option value="{{$ctItem->id}}" selected="selected">{{$ctItem->name}}</option>   
                                        @elseif
                                        <option value="{{$ctItem->id}}">{{$ctItem->name}}</option>   
                                        @endif
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
             </div><!-- col 8 -->    
</div><!-- row 2 -->             
@stop