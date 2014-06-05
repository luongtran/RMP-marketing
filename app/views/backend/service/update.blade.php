@section('content')
<div class="row"
     <div class="col-lg-12">
            <ol class="breadcrumb">
              <li><a href="{{Request::root()}}/backend"><i class="fa fa-dashboard"></i> {{trans('common.menu.dashboard')}}</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/service"><i class="fa fa-desktop"></i> {{trans('common.table.service')}}</a></li>
              <li class="active"><i class="fa fa-desktop"></i>{{trans('common.button.update')}}</li>
            </ol>
    </div>   
</div><!-- end row 1--> 

<div class="row">
            <div class="col-lg-12">
            
            <div class="messages_validation">                           
                            {{Session::get('msg_flash')}}
            </div>
            {{Form::open(array('url'=>'backend/service/update/'.$getService->id, 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data') )}}               
            <div class="col-lg-8">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">{{trans('titlepage.title.update_service')}}</h3>
                    </div>
                    <div class="panel-body">                         
                         <div>                            
                            <div class="form-group">                                
                                <label>{{trans('common.table.title')}} <span class="star-validation">(*)</span></label>
                                    {{Form::text('title',$getService->title,array('class' => 'form-control'))}}       
                            </div>
                                                      
                            
                              <div class="form-group">
                             <label>{{trans('common.table.content')}}<span class="star-validation">(*)</span></label>
                                {{Form::textarea('text',$getService->text,array('class' => 'form-control ckeditor'))}}                                     
                             </div>                             
                         </div>
                    </div>
                </div>
            </div><!--end col 8-->
    
            <div class="col-lg-4">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">{{trans('titlepage.title.extends')}}</h3>
                    </div>
                    <div class="panel-body">                                              
                                
                            <div class="form-group">
                              <label>{{trans('common.table.sumary')}}</label>
                               {{Form::textarea('sumary',$getService->sumary,array('class' => 'form-control','rows'=>'2'))}}                                                
                            </div>
                                
                            <div class="form-group">
                                <label>{{trans('common.table.icon')}}</label>
                                {{Form::text('icon',$getService->icon,array('class' => 'form-control'))}}                           
                            </div>
                            <div class="form-group">
                                <label>{{trans('common.table.order')}}</label>
                                {{Form::text('order',$getService->order,array('class' => 'form-control'))}}                           
                            </div>    
                        
                            <?php echo CommonHelper::createFormStatus($getService->status);?>

                            <button type="submit" class="btn btn-primary">{{trans('common.button.update')}}</button>
                         
                    </div>
                </div>
             
            </div><!--end col 4-->
            {{ Form::close() }} 
         </div>       
      
</div><!-- end row 2-->                

@stop