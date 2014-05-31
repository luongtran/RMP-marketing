@section('content')
<div class="row"
     <div class="col-lg-12">
            <ol class="breadcrumb">
              <li><a href="{{Request::root()}}/backend"><i class="fa fa-dashboard"></i>{{trans('common.menu.dashboard')}}</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/category"><i class="fa fa-desktop"></i>{{trans('common.table.category')}}</a></li>            
              <li class="active"><i class="fa fa-desktop"></i>{{trans('common.button.update')}}</li>            
            </ol>
    </div>   
</div><!-- end row 1--> 

<div class="row">
    <div class="col-lg-12">
            <div class="col-lg-6">
                             
                {{Form::open(array('url'=>'backend/category/update/'.$getCategory->id, 'method' => 'post','role'=>'form') )}}               
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title">{{trans('titlepage.update_category')}}</h3>
                        </div>
                        <div class="panel-body">
                            <p>{{Session::get('msg_flash')}}</p>   
                             <div>                            
                                <div class="form-group">                                
                                    <label>{{trans('common.table.name')}}<span class="star-validation">(*)</span></label>
                                        {{Form::text('name',$getCategory->name,array('class' => 'form-control','id'=>'name'))}}       
                                </div>

                                <div class="form-group">
                                    <label>{{trans('common.table.permalink')}}</label>                                
                                    {{Form::text('permalink',$getCategory->permalink,array('class' => 'form-control','id'=>'permalink'))}}       
                                </div>

                                 <div class="form-group">
                                 <label>{{trans('common.table.description')}}</label>
                                    {{Form::textarea('description',$getCategory->description,array('class' => 'form-control','id'=>'description','rows'=>'2'))}}                                     
                                  </div>                               
                                  <div class="form-group">
                                    <label>{{trans('common.table.category')}}<span class="star-validation">(*)</span></label>                                                                 
                                    <select class="form-control" name="parent">
                                     <option value="0" <?php if($getCategory->parent==0){echo "selected='selected'";}?> >None</option>      
                                     @foreach($categories as $ctItem)
                                        @if($getCategory->parent == $ctItem->id)  
                                        <option value="{{$ctItem->id}}" selected="selected">{{$ctItem->name}}</option>   
                                        @elseif
                                        <option value="{{$ctItem->id}}">{{$ctItem->name}}</option>   
                                        @endif
                                     @endforeach                                  
                                    </select>  
                                  </div>    
                                
                                <?php echo CommonHelper::createFormStatus($getCategory->status);?>
                                 
                                 <button type="submit" class="btn btn-primary">{{trans('common.button.update')}}</button>
                                 
                              </div>  
                        </div>        
                    </div>
                {{Form::close()}}
             </div><!-- col 8 -->    
       </div><!-- col 12 -->          
</div><!-- row 2 -->             
@stop