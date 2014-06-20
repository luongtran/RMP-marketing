@section('title')
<div class="row">
                <div id="paper-top">
                    <div class="col-sm-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-media-record"></i> 
                            <span>
                              Users          
                            </span>
                        </h2>

                    </div>

                    <div class="col-sm-7">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="tittle-middle-header">                            
                               {{Session::get('msg_flash_home')}}
                        
                        </div>

                    </div>
                    <div class="col-sm-2">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="btn-group btn-wigdet pull-right visible-lg">
                            <div class="btn">
                                Widget</div>
                            <button data-toggle="dropdown" class="btn dropdown-toggle" type="button">
                                <span class="caret"></span>
                                <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            <ul role="menu" class="dropdown-menu">
                               
                            </ul>
                        </div>


                    </div>
                </div>
            </div>
@stop
@section('breadcrumb')      
 <ul id="breadcrumb">
                <li>
                    <a href="{{Request::root()}}"><span class="entypo-home"></span></a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="{{Request::root()}}/backend/user" title="Sample page 1">{{trans('common.table.user')}}</a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">{{trans('common.button.update')}}</a>
                </li>
                <li class="pull-right">
                    <div class="input-group input-widget">

                        <input style="border-radius:15px" type="text" placeholder="Search..." class="form-control">
                    </div>
                </li>
 </ul>
 @stop
@section('content')
<div class="row">
            <div class="col-lg-12">
            
            <div class="messages_validation">                           
                            {{Session::get('msg_flash')}}
            </div>
            {{Form::open(array('url'=>'backend/user/update/'.$getUser->id, 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data') )}}               
            <div class="col-lg-6">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">{{trans('titlepage.title.update_user')}}</h3>
                    </div>
                    <div class="panel-body">                         
                         <div>                            
                            <div class="form-group">                                
                                <label>{{trans('common.table.username')}}</label>
                                    {{Form::text('',$getUser->username,array('class' => 'form-control','id'=>'username','disabled'))}}       
                            </div>
                            
                            <div class="form-group">
                                <label>{{trans('common.table.password')}}</label>                                
                                {{Form::password('password',array('class' => 'form-control'))}}       
                            </div> 
                            
                            <div class="form-group">
                                <label>{{trans('common.table.password_confirm')}}</label>                                
                                {{Form::password('password_confirmation',array('class' => 'form-control'))}}       
                            </div> 
                             
                            <div class="form-group">
                                <label>{{trans('common.table.email')}}</label>                                
                                {{Form::email('email',$getUser->email,array('class' => 'form-control','id'=>'email'))}}       
                            </div> 
                            
                            <div class="form-group">
                                <label>{{trans('common.table.lastname')}}</label>                                
                                {{Form::text('lastname',$getUser->last_name,array('class' => 'form-control','id'=>'lastname'))}}       
                            </div> 
                             
                              <div class="form-group">
                                   <label>{{trans('common.table.firstname')}}</label>      
                                {{Form::text('firstname',$getUser->first_name,array('class' => 'form-control','id'=>'firstname'))}}       
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
                                 {{Form::select('sex', array('male' => 'Male', 'female' => 'Female','both' => 'Both'), $getUser->sex,array('class'=>'form-control'))}}                                 
                             </div> 
                             <div class="form-group">                                 
                                 <label>{{trans('common.table.phone')}}</label>
                                 {{Form::text('phone',$getUser->phone,array('class'=>'form-control'))}}                                 
                             </div> 
                            <div class="form-group">                                 
                                 <label>{{trans('common.table.address')}}</label>
                                 {{Form::textarea('address',$getUser->address,array('class'=>'form-control','rows'=>'2'))}}                                 
                             </div> 

                             <div class="form-group">                                 
                                 <label>{{trans('common.table.company')}}</label>
                                 {{Form::text('company',$getUser->company,array('class'=>'form-control'))}}                                 
                             </div>                                
                                
                                <div class="form-group">                                 
                                 <label>{{trans('common.table.permission')}}</label>
                                 {{Form::select('permission', array( '1' => trans('titlepage.title.role_1'),'2' => trans('titlepage.title.role_2'),'3' => trans('titlepage.title.role_3')), $getUser->permission,array('class'=>'form-control'))}}                                 
                             </div>                         
                                
                              <?php echo CommonHelper::createFormStatus($getUser->status);?>

                            <button type="submit" class="btn btn-primary">{{trans('common.button.update')}}</button>
                         
                    </div>
                </div>
             
            </div><!--end col 4-->
            {{ Form::close() }} 
            
            
            </div>   <!-- end col 12->                   
      
</div><!-- end row 2-->                

@stop