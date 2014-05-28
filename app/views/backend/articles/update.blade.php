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
              <li class="active"><i class="fa fa-desktop"></i>Update</li>
            </ol>
    </div>   
</div><!-- end row 1--> 

<div class="row">
            <div class="col-lg-12">
            
            <div class="messages_validation">                           
                            {{Session::get('msg_flash')}}
            </div>
            {{Form::open(array('url'=>'backend/article/update/'.$article->id, 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data') )}}               
            <div class="col-lg-8">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">Update article</h3>
                    </div>
                    <div class="panel-body">                         
                         <div>                            
                            <div class="form-group">                                
                                <label>Title <span class="star-validation">(*)</span></label>
                                    {{Form::text('title',$article->title,array('class' => 'form-control','id'=>'title'))}}       
                            </div>
                            
                            <div class="form-group">
                                <label>Permalink </label>                                
                                {{Form::text('permalink',$article->permalink,array('class' => 'form-control','id'=>'permalink'))}}       
                            </div>
                            
                              <div class="form-group">
                             <label>Content</label>
                                {{Form::textarea('content',$article->content,array('class' => 'form-control ckeditor','id'=>'content'))}}                                     
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
                               {{Form::textarea('description',$article->description,array('class' => 'form-control','id'=>'description','rows'=>'2'))}}                                                
                            </div>
                                
                            <div class="form-group">
                                <label>Keywords</label>
                                {{Form::text('keyword',$article->keyword,array('class' => 'form-control','id'=>'keyword'))}}                           
                            </div>

                            <div class="form-group">
                              <label>Images</label>
                                 {{Form::file('fileimages[]',array('class' => 'form-control','id'=>'description','multiple'=>'on'))}}  
                                 <div class="overflow-scroll">
                                  @foreach($getImages as $lImage)
                                  <a><img src="{{asset('asset/share/uploads/images/'.$lImage->name)}}" alt="{{$lImage->name}}" title="{{$lImage->name}}" width="50" height="50" /></a>
                                  @endforeach   
                                  </div>
                            </div>  
                                
                            <div class="form-group">
                                <label>Category <span class="star-validation">(*)</span></label>
                                    <div class="overflow-scroll">
                                     
                                    @foreach($categories as $ctItem)
                                        <?php $active=false;?>
                                        @foreach($category as $ctSub)
                                        @if($ctSub->id == $ctItem->id)
                                        <?php $active=true;?>
                                        @endif                                       
                                        @endforeach                                      
                                      <div class="checkbox">
                                      <label>                                       
                                       {{Form::checkbox('category[]',$ctItem->id,$active)}}                                      
                                       {{$ctItem->name}} 
                                       </label>
                                      </div>
                                       
                                   @endforeach
                                    </div>
                                   
                            </div>    

                            <div class="form-group">
                              <label>Status</label>
                              <div class="radio">
                                <label>
                                 {{Form::radio('status', 'publish',($article->status=='publish')?true:false )}}
                                 Publish
                                </label>
                              </div>
                             <div class="radio">
                                <label>
                                  {{Form::radio('status', 'unpublish',($article->status=='unpublish')?true:false)}}
                                  Upublish
                                </label>
                              </div>                            
                            </div>

                            <button type="submit" class="btn btn-primary">Update</button>
                            <button type="reset" class="btn btn-warning">Reset</button>  
                         
                    </div>
                </div>
             
            </div><!--end col 4-->
            {{ Form::close() }} 
         </div>       
      
</div><!-- end row 2-->                

@stop