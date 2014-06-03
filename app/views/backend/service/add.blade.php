@section('content')
<script src="{{asset('asset/backend/plusin/tinymce/tinymce.min.js')}}" type="text/javascript"></script>
<script type="text/javascript">
tinymce.init({
     selector: "#ckeditor",
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
              <li class="active"><a href="{{Request::root()}}/backend/service"><i class="fa fa-desktop"></i> {{trans('common.table.service')}}</a></li>
              <li class="active"><i class="fa fa-desktop"></i>{{trans('common.button.add')}}</li>
            </ol>
    </div>   
</div><!-- end row 1--> 

<div class="row">
            <div class="col-lg-12">
            
            <div class="messages_validation">                           
                            {{Session::get('msg_flash')}}
            </div>
            {{Form::open(array('url'=>'backend/service/add', 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data') )}}               
            <div class="col-lg-8">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">{{trans('titlepage.title.add_service')}}</h3>
                    </div>
                    <div class="panel-body">                         
                         <div>                            
                            <div class="form-group">                                
                                <label>{{trans('common.table.title')}}<span class="star-validation">(*)</span></label>
                                    {{Form::text('title','',array('class' => 'form-control','id'=>'title'))}}       
                            </div>                            
                                                  
                              <div class="form-group">
                             <label>{{trans('common.table.text')}}<span class="star-validation">(*)</span></label>
                                {{Form::textarea('text','',array('class' => 'form-control','id'=>'ckeditor'))}}                                     
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
                              <label>{{trans('common.table.sumary')}}<span class="star-validation">(*)</span></label>
                               {{Form::textarea('sumary','',array('class' => 'form-control','id'=>'description','rows'=>'2'))}}                                                
                            </div>
                        
                             <div class="form-group">                                
                                <label>{{trans('common.table.icon')}}<span class="star-validation">(*)</span></label>
                                    {{Form::text('icon','',array('class' => 'form-control'))}}       
                             </div>
                             <div class="form-group">                                
                                <label>{{trans('common.table.order')}}</label>
                                    {{Form::text('order','',array('class' => 'form-control'))}}       
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