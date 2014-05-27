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
              <li><a href=""><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/article"><i class="fa fa-desktop"></i> Article</a></li>
              <li class="active"><i class="fa fa-desktop"></i>Add</li>
            </ol>
    </div>   
</div><!-- end row 1--> 

<div class="row">
            <div class="col-lg-12">
            
            <div class="messages_validation">                           
                            {{Session::get('msg_flash')}}
            </div>
            {{Form::open(array('url'=>'backend/article/add', 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data') )}}               
            <div class="col-lg-8">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">New article</h3>
                    </div>
                    <div class="panel-body">                         
                         <div>                            
                            <div class="form-group">                                
                                <label>Title <span class="star-validation">(*)</span></label>
                                    {{Form::text('title','',array('class' => 'form-control','id'=>'title'))}}       
                            </div>
                            
                            <div class="form-group">
                                <label>Permalink </label>                                
                                {{Form::text('permalink','',array('class' => 'form-control','id'=>'permalink'))}}       
                            </div>
                            
                              <div class="form-group">
                             <label>Content</label>
                                {{Form::textarea('content','',array('class' => 'form-control ckeditor','id'=>'content'))}}                                     
                             </div>
                         </div>
                    </div>
                </div>
            </div><!--end col 8-->
    
            <div class="col-lg-4">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">Extends</h3>
                    </div>
                    <div class="panel-body">                                              
                                
                            <div class="form-group">
                              <label>Description</label>
                               {{Form::textarea('description','',array('class' => 'form-control','id'=>'description','rows'=>'2'))}}                                                
                            </div>
                                
                            <div class="form-group">
                                <label>Keywords</label>
                                {{Form::text('keyword','',array('class' => 'form-control','id'=>'keyword'))}}                           
                            </div>

                            <div class="form-group">
                              <label>Images</label>
                                 {{Form::file('fileimages[]',array('class' => 'fileimages','multiple'=>'on')) }}  
                            </div>  
                                
                            <div class="form-group">
                                <label>Category <span class="star-validation">(*)</span></label>
                                <div class="overflow-scroll">
                                @foreach($categories as $category)
                                <div class="checkbox">
                                  <label>
                                      {{Form::checkbox('category[]',$category->id, false)}}                                      
                                   {{$category->name}}
                                  </label>
                                </div>  
                                @endforeach
                                </div>
                            </div>    

                            <div class="form-group">
                              <label>Status</label>
                              <div class="radio">
                                <label>
                                 {{Form::radio('status', 'publish', true)}}
                                 Publish
                                </label>
                              </div>
                             <div class="radio">
                                <label>
                                  {{Form::radio('status', 'unpublish', false)}}
                                  Unpublish
                                </label>
                              </div>                            
                            </div>

                            <button type="submit" class="btn btn-primary">Save</button>
                            <button type="reset" class="btn btn-warning">Reset</button>  
                         
                    </div>
                </div>
             
            </div><!--end col 4-->
            {{ Form::close() }} 
         </div>       
      
</div><!-- end row 2-->                

@stop