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
              <li><a href="{{Request::root()}}/backend"><i class="fa fa-dashboard"></i> {{trans('common.menu.dashboard')}}</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/article"><i class="fa fa-desktop"></i> {{trans('common.table.article')}}</a></li>
              <li class="active"><i class="fa fa-desktop"></i>{{trans('common.button.update')}}</li>
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
                        <h3 class="panel-title">{{trans('titlepage.title.update_article')}}</h3>
                    </div>
                    <div class="panel-body">                         
                         <div>                            
                            <div class="form-group">                                
                                <label>{{trans('common.table.title')}} <span class="star-validation">(*)</span></label>
                                    {{Form::text('title',$article->title,array('class' => 'form-control','id'=>'title'))}}       
                            </div>
                            
                            <div class="form-group">
                                <label>{{trans('common.table.permalink')}} </label>                                
                                {{Form::text('permalink',$article->permalink,array('class' => 'form-control','id'=>'permalink'))}}       
                            </div>
                            
                              <div class="form-group">
                             <label>{{trans('common.table.content')}}</label>
                                {{Form::textarea('content',$article->content,array('class' => 'form-control ckeditor','id'=>'content'))}}                                     
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
                              <label>{{trans('common.table.description')}}</label>
                               {{Form::textarea('description',$article->description,array('class' => 'form-control','id'=>'description','rows'=>'2'))}}                                                
                            </div>
                                
                            <div class="form-group">
                                <label>{{trans('common.table.keywords')}}</label>
                                {{Form::text('keyword',$article->keyword,array('class' => 'form-control','id'=>'keyword'))}}                           
                            </div>

                            <div class="form-group">
                              <label>{{trans('common.table.images')}}</label>
                                 {{Form::file('fileimages[]',array('class' => '','id'=>'description','multiple'=>'on'))}}                                   
                              <div class="clear">
                                  @foreach($getImages as $lImage)
                                  <div style='padding:5px;border:1px solid #dedede;float:left;'><img src="{{asset('asset/share/uploads/images/'.$lImage->name)}}" alt="{{$lImage->name}}" title="{{$lImage->name}}" width="60" height="60" /></div>
                                  @endforeach   
                              </div><div class='clear'></div>     
                            </div>  
                                
                            <div class="form-group">
                                <label>{{trans('common.table.category')}} <span class="star-validation">(*)</span></label>
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
                              <label>{{trans('common.table.status')}}</label>
                              <div class="radio">
                                <label>
                                 {{Form::radio('status', 'publish',($article->status=='publish')?true:false )}}
                                 {{trans('common.table.publish')}}
                                </label>
                              </div>
                             <div class="radio">
                                <label>
                                  {{Form::radio('status', 'unpublish',($article->status=='unpublish')?true:false)}}
                                  {{trans('common.table.unpublish')}}
                                </label>
                              </div>                            
                            </div>

                            <button type="submit" class="btn btn-primary">{{trans('common.button.update')}}</button>
                         
                    </div>
                </div>
             
            </div><!--end col 4-->
            {{ Form::close() }} 
         </div>       
      
</div><!-- end row 2-->                

@stop