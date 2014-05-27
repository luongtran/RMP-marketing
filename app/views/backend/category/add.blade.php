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
            <div class="col-lg-4">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title">Add category</h3>
                    </div>
                    <div class="panel-body"> 
                        <form role="form" id="frm-category">
                            <div class="form-group">
                                <label>Name <span class="star-validation">(*)</span></label>
                                <input class="form-control" type="text" name="name" id="title">                            
                            </div>
                            
                            <div class="form-group">
                                <label>Permalink </label>
                                <input class="form-control" type="text" name="permalink" id="permalink">                            
                            </div>
                            <div class="form-group">
                                    <select class="form-control" name="parent">
                                        <option value="">Public</option>
                                    </select>
                            </div>
                            
                             <button class="btn btn-primary" type="button">Add category</button>
                        </form>    
                        
                    </div>
                </div>
             
            </div><!--end col 4-->
            
             <div class="col-lg-8">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">List categories</h3>
                    </div>
                    <div class="panel-body"> 
                        {{Form::open(array('url'=>'backend/article/action', 'method' => 'post','role'=>'form'))}}               
                                <div class="table-responsive">
                                  <table class="table table-bordered table-hover tablesorter">
                                    <thead>
                                      <tr>
                                        <th></th>  
                                        <th class="header">Title <i class="fa fa-sort"></i></th>
                                        <th class="header">Status <i class="fa fa-sort"></i></th>
                                        <th class="header">Create by<i class="fa fa-sort"></i></th>
                                        <th class="header"><i class="fa fa-sort"></i></th>                                        
                                      </tr>
                                    </thead>
                                    <tbody> 
                                      @foreach($listArticles  as $article)                                      
                                      <tr <?php if($article->status == "unpublish"){echo "class='danger'";}?> >
                                        <td><input type="checkbox" value="{{$article->id}}" id=""></td>  
                                        <td><a href="{{Request::root()}}/backend/article/view/{{$article->id}}">{{$article->title}}</a></td>
                                        <td>{{$article->status}}</td>
                                        <td>{{$article->create_by}}</td>
                                        <td><a href="{{Request::root()}}/backend/article/update/{{$article->id}}"><span class="label label-primary">Edit</span></a>
                                            <a href="{{Request::root()}}/backend/article/delete/{{$article->id}}"><span class="label label-danger">Delete</span></a></td>
                                      </tr>                                      
                                      @endforeach
                                    </tbody>
                                  </table>                                    
                                </div>
                                
                          </div>
                        
                        <!-- action -->
                         <div class="col-lg-3">
                                  <div class="form-group">
                                    <select class="form-control">
                                      <option values="publish">Publish</option>
                                      <option value="unpublish">Unpublish</option>
                                      <option value="delete">Delete</option>
                                    </select></br>                                      
                                    <button type="button" class="btn btn-danger">Action</button>
                                  </div>  
                         </div>                      
                        {{ Form::close() }} 
                        
                    </div>
                </div>
            </div>   
                 <!--end col 8-->
                
         </div>       
      
</div><!-- end row 2-->                



<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
 <script>  
       $("#frm-category").submit(function( event ) {
              oData = new FormData(document.forms.namedItem("#frm-category"));
              var Output = document.getElementById("output");
              var seturl= "{{ Request::root() }}/backend/category/add";
                         
             Output.innerHTML="<div class='progress progress-striped active'><div class='progress-bar' style='width: 100%'></div></div>";
                             
        $.ajax({
            url: seturl,
            type: 'POST',
            data: oData,
            cache: false,
            dataType: 'json',
            processData: false, // Don't process the files
            contentType: false, // Set content type to false as jQuery will tell the server its a query string request
            beforeSubmit: function() {
                        $('#output').html('<img src="http://reg.spblegalforum.ru/spilf2014/lf/img/animatedCircle.gif" />'); //Including a preloader, it loads into the div tag with id uploader               
                    },
            success: function(data, textStatus, jqXHR)
            {    
            if(typeof data.error === 'false')
            {          
             var items = [];           
               for (var j in data.categorisItem) {                    
                    items.push(data.categorisItem[j]);
                  } 
               Output.innerHTML = items;
            }
            else
            {            
               Output.innerHTML = "E error 1! "+data.error;            
            }
            },
            error: function(jqXHR, textStatus, errorThrown)
            {
            // Handle errors here
             Output.innerHTML = "Error "+textStatus;     
            }
            });
            
            event.preventDefault();
            
        });
</script>
@stop