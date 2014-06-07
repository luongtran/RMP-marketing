@section('breadcrumb')
<div class="row"
     <div class="col-lg-12">
            <ol class="breadcrumb">
              <li><a href="{{Request::root()}}/backend"><i class="fa fa-dashboard"></i> {{trans('common.menu.dashboard')}}</a></li>
              <li ><a href="{{Request::root()}}/backend/module"><i class="fa fa-desktop"></i> {{trans('common.table.module')}}</a></li>            
              <li class="active">{{trans('common.button.add')}}</li>
            </ol>
    </div>   
</div><!-- end row breadcrumb--> 
@stop

@section('content')
<div class="row">            
    <div class="col-lg-12">             
        <div class="col-lg-12">   
                         
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title">{{trans('titlepage.title.add_module')}}</h3>
                </div>
                <div class="panel-body">
                <!-- begin validation messages -->
                <div class="messages_validation">                           
                {{Session::get('msg_flash')}}
                </div> 
                <!-- end validation messages -->                    
                {{Form::open(array('url'=>'backend/module/add', 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data','id'=>'frm-setting') )}}               
                        <div class='col-lg-6'>                            
                                <div class="form-group">                                
                                    <label>{{trans('common.table.name')}}<span class="star-validation">(*)</span></label>
                                        {{Form::text('name','',array('class' => 'form-control'))}}       
                                </div>                                 
                                <div class="form-group">
                                    <label>{{trans('common.table.mod')}}</label> 
                                    {{Form::text('mod','',array('class' => 'form-control'))}}       
                                </div>
                                <div class="form-group">
                                    <label>{{trans('common.table.position')}}</label> 
                                    <select class="form-control" name="position">
                                        <option value="">None</option>
                                       @foreach($position as $otp)
                                       <option value="{{$otp->name}}">{{$otp->name}}</option>
                                       @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>{{trans('common.table.controller')}}<span class="star-validation">(*)</span></label> 
                                    {{Form::text('order','',array('class' => 'form-control'))}}       
                                </div> 
                                <div class="form-group">
                                    <label>{{trans('common.table.order')}}</label> 
                                    {{Form::text('order','',array('class' => 'form-control'))}}       
                                </div>                              
                                 <?php echo CommonHelper::createFormStatus();?>                                
                                 <button type="submit" class="btn btn-primary">{{trans('common.button.save')}}</button>
                             </div>
                             <!-- end col 6 -1-->
                             <div class='col-lg-6'> 
                                 
                             </div>
                              <!-- end col 6 -2-->
                     </div>                         
                    <!-- end body content-->                
                    {{Form::close()}}
                 </div>   
                 <!-- end panel panel-success-->   
      </div><!-- end col 12 -1-->    
      </div><!-- end col 12 -2-->    
</div><!-- end row 2-->  
@stop