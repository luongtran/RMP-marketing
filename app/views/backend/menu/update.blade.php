@section('content')
<div class="row"
     <div class="col-lg-12">
            <ol class="breadcrumb">
              <li><a href="{{Request::root()}}/backend"><i class="fa fa-dashboard"></i>{{trans('common.menu.dashboard')}}</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/menu"><i class="fa fa-desktop"></i>{{trans('common.table.menu')}}</a></li>            
              <li class="active"><i class="fa fa-desktop"></i>{{trans('common.button.update')}}</li>            
            </ol>
    </div>   
</div><!-- end row 1--> 

<div class="row">
    <div class="col-lg-12">
            <div class="col-lg-6">
                             
                {{Form::open(array('url'=>'backend/menu/update/'.$getMenu->id, 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data') )}}               
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title">{{trans('titlepage.title.update_menu')}}</h3>
                        </div>
                        <div class="panel-body">
                            <p>{{Session::get('msg_flash')}}</p>   
                             <div>                            
                                <div class="form-group">                                
                                    <label>{{trans('common.table.title')}}<span class="star-validation">(*)</span></label>
                                        {{Form::text('title',$getMenu->title,array('class' => 'form-control','id'=>'name'))}}       
                                </div>

                                <div class="form-group">
                                    <label>{{trans('common.table.link')}}</label>                                
                                    {{Form::text('link',$getMenu->link,array('class' => 'form-control','id'=>'permalink'))}}       
                                </div>
                                 <div class="form-group">
                                     <label>{{trans('common.table.parent')}}</label>       
                                     <select name="parent" class="form-control">
                                         <option value="0">None</option>
                                         {{$getParent}}
                                     </select>
                                 </div>     
                                 
                                 <div class="form-group">
                                    <label>{{trans('common.table.order')}} </label>                                
                                    {{Form::text('order',$getMenu->order,array('class' => 'form-control','id'=>'order'))}}       
                                </div>
                                 
                                <div class="form-group">
                                    <label>{{trans('common.table.icon')}}(Ex: icon-home)</label>                                
                                    {{Form::text('icon',$getMenu->icon,array('class' => 'form-control','id'=>'icon'))}}       
                                </div>
                                 
                                <?php echo CommonHelper::createFormStatus($getMenu->status);?>
                                 
                                 <button type="submit" class="btn btn-primary">{{trans('common.button.update')}}</button>
                                 
                              </div>  
                        </div>        
                    </div>
                {{Form::close()}}
             </div><!-- col 8 -->    
       </div><!-- col 12 -->          
</div><!-- row 2 -->             
@stop