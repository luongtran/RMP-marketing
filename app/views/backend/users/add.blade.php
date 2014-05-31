@section('content')
<div class="row"
     <div class="col-lg-12">
            <ol class="breadcrumb">
              <li><a href="{{Request::root()}}/backend"><i class="fa fa-dashboard"></i>{{trans('common.menu.dashboard')}}</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/user"><i class="fa fa-desktop"></i> {{trans('common.table.user')}}</a></li>
              <li class="active"><i class="fa fa-desktop"></i>{{trans('common.button.add')}}</li>
            </ol>
    </div>   
</div><!-- end row 1--> 

<div class="row">
            <div class="col-lg-12">
            
            <div class="messages_validation">                           
                            {{Session::get('msg_flash')}}
            </div>
            {{Form::open(array('url'=>'backend/user/add', 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data') )}}               
            <div class="col-lg-6">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">{{trans('titlepage.title.add_user')}}</h3>
                    </div>
                    <div class="panel-body">                         
                         <div>                            
                            <div class="form-group">                                
                                <label>{{trans('common.table.username')}}<span class="star-validation">(*)</span></label>
                                    {{Form::text('username','',array('class' => 'form-control','id'=>'username','required'))}}       
                            </div>
                            
                            <div class="form-group">
                                <label>{{trans('common.table.password')}}<span class="star-validation">(*)</span></label>                                
                                {{Form::password('password',array('class' => 'form-control','id'=>'password','required'))}}       
                            </div> 
                            
                            <div class="form-group">
                                <label>{{trans('common.table.password_confirm')}}<span class="star-validation">(*)</span></label>                                
                                {{Form::password('password_confirmation',array('class' => 'form-control','id'=>'password_confirm','required'))}}       
                            </div> 
                             
                            <div class="form-group">
                                <label>{{trans('common.table.email')}}<span class="star-validation">(*)</span></label>                                
                                {{Form::email('email','',array('class' => 'form-control','id'=>'email','required'))}}       
                            </div> 
                            
                            <div class="form-group">
                                <label>{{trans('common.table.lastname')}}</label>                                
                                {{Form::text('lastname','',array('class' => 'form-control','id'=>'lastname'))}}       
                            </div> 
                             
                              <div class="form-group">
                                <label>{{trans('common.table.firstname')}}</label>                                
                                {{Form::text('firstname','',array('class' => 'form-control','id'=>'firstname'))}}       
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
                                 <label>{{trans('common.table.sex')}}</label>
                                 {{Form::select('sex', array('male' => 'Male', 'female' => 'Female','both' => 'Both'), 'male',array('class'=>'form-control'))}}                                 
                             </div> 
                             <div class="form-group">                                 
                                 <label>{{trans('common.table.phone')}}</label>
                                 {{Form::text('phone','',array('class'=>'form-control'))}}                                 
                             </div> 
                            <div class="form-group">                                 
                                 <label>{{trans('common.table.address')}}</label>
                                 {{Form::textarea('address','',array('class'=>'form-control','rows'=>'2'))}}                                 
                             </div> 
                                
                                <div class="form-group">                                 
                                 <label>{{trans('common.table.permission')}}</label>
                                 {{Form::select('permission', array( '1' => trans('titlepage.title.role_1'),'2' => trans('titlepage.title.role_2'),'3' => trans('titlepage.title.role_3')), '1',array('class'=>'form-control'))}}                                 
                             </div> 

                        
                                
                            <?php echo CommonHelper::createFormStatus();?>

                            <button type="submit" class="btn btn-primary">{{trans('common.button.save')}}</button>
                         
                    </div>
                </div>
             
            </div><!--end col 4-->
            {{ Form::close() }} 
         </div>       
      
</div><!-- end row 2-->                

@stop