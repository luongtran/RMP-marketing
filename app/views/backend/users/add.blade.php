@section('content')
<script src="{{asset('asset/backend/plusin/tinymce/tinymce.min.js')}}" type="text/javascript"></script>
<script type="text/javascript">
tinymce.init({
     selector: "#content",
     plugins: [
         "advlist autolink link image lists charmap print preview hr anchor pagebreak spellchecker",
         "searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking",
         "save table contextmenu directionality emoticons template paste textcolor"
   ],
   paste_data_images: true,
   image_advtab: true,
   image_list: function(success) {
        success([
             {title: 'Dog', value: 'mydog.jpg'},
             {title: 'Cat', value: 'mycat.gif'}
        ]);
    }

 });
</script>


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
            {{Form::open(array('url'=>'backend/article/add', 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data') )}}               
            <div class="col-lg-6">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">{{trans('titlepage.title.add_user')}}</h3>
                    </div>
                    <div class="panel-body">                         
                         <div>                            
                            <div class="form-group">                                
                                <label>{{trans('common.table.username')}}<span class="star-validation">(*)</span></label>
                                    {{Form::text('username','',array('class' => 'form-control','id'=>'title'))}}       
                            </div>
                            
                            <div class="form-group">
                                <label>{{trans('common.table.password')}}</label>                                
                                {{Form::text('password','',array('class' => 'form-control','id'=>'permalink'))}}       
                            </div> 
                            
                            <div class="form-group">
                                <label>{{trans('common.table.password')}}</label>                                
                                {{Form::text('password_confirm','',array('class' => 'form-control','id'=>'permalink'))}}       
                            </div> 
                             
                            <div class="form-group">
                                <label>{{trans('common.table.email')}}</label>                                
                                {{Form::text('email','',array('class' => 'form-control','id'=>'permalink'))}}       
                            </div> 
                            
                            <div class="form-group">
                                <label>{{trans('common.table.lastname')}}</label>                                
                                {{Form::text('lastname','',array('class' => 'form-control','id'=>'permalink'))}}       
                            </div> 
                             
                              <div class="form-group">
                                <label>{{trans('common.table.firstname')}}</label>                                
                                {{Form::text('firstname','',array('class' => 'form-control','id'=>'permalink'))}}       
                            </div>  
                                                        
                         </div>
                    </div>
                </div>
            </div><!--end col 8-->
    
            <div class="col-lg-6">
                <div class="panel panel-success">                    
                    
                    <div class="panel-heading">
                        <h3 class="panel-title">{{trans('titlepage.title.extends')}}</h3>
                    </div>
                    <div class="panel-body">                                              
                                
                           <div class="form-group">                                 
                                 <label>{{trans('common.table.sex')}}</label>
                                 {{Form::select('sex', array('male' => 'Male', 'female' => 'Female'), 'male',array('class'=>'form-control'))}}                                 
                             </div> 
                             
                            <div class="form-group">                                 
                                 <label>{{trans('common.table.language')}}</label>
                                 {{Form::select('sex', array('male' => 'Language', 'female' => 'Female'), 'male',array('class'=>'form-control'))}}                                 
                             </div> 
                                
                                <div class="form-group">                                 
                                 <label>{{trans('common.table.permission')}}</label>
                                 {{Form::select('sex', array('supper_admin' => 'Supper Admin','male' => 'Admin', 'female' => 'Manager Content'), 'male',array('class'=>'form-control'))}}                                 
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