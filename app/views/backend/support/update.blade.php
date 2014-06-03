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
              <li><a href="{{Request::root()}}/backend"><i class="fa fa-dashboard"></i> {{trans('common.menu.dashboard')}}</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/support"><i class="fa fa-desktop"></i> {{trans('common.table.support')}}</a></li>
              <li class="active"><i class="fa fa-desktop"></i>{{trans('common.button.update')}}</li>
            </ol>
    </div>   
</div><!-- end row 1--> 

<div class="row">
            <div class="col-lg-12">
            
            <div class="messages_validation">                           
                            {{Session::get('msg_flash')}}
            </div>
            {{Form::open(array('url'=>'backend/support/update/'.$getSupport->id, 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data') )}}               
             <div class="col-lg-8">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">{{trans('titlepage.title.add_support')}}</h3>
                    </div>
                    <div class="panel-body">                         
                         <div>                            
                            <div class="form-group">                                
                                <label>{{trans('common.table.name')}}<span class="star-validation">(*)</span></label>
                                    {{Form::text('name',$getSupport->name,array('class' => 'form-control','id'=>'title'))}}       
                            </div>                            
                                                  
                             <div class="form-group">
                             <label>{{trans('common.table.detail')}}<span class="star-validation">(*)</span></label>
                                {{Form::textarea('detail',$getSupport->detail,array('class' => 'form-control','id'=>'ckeditor'))}}                                     
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
                              <label>{{trans('common.table.description')}}<span class="star-validation">(*)</span></label>
                               {{Form::textarea('description',$getSupport->description,array('class' => 'form-control','rows'=>'2'))}}                                                
                            </div>
                        
                             <div class="form-group">                                
                                <label>{{trans('common.table.cost')}}<span class="star-validation">($)</span></label>
                                    {{Form::text('cost',$getSupport->cost,array('class' => 'form-control'))}}       
                             </div>
                             <div class="form-group">                                
                                <label>{{trans('common.table.package_type')}}</label>
                                    {{Form::text('package_type',$getSupport->package_type,array('class' => 'form-control'))}}       
                             </div>  
                              <div class="form-group">                                
                                <label>{{trans('common.table.order')}}</label>
                                    {{Form::text('order',$getSupport->order,array('class' => 'form-control'))}}       
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