@section('content')
<div class="row">
     <div class="col-lg-12">
            <ol class="breadcrumb">
              <li><a href="{{Request::root()}}/backend"><i class="fa fa-dashboard"></i>{{trans('common.menu.dashboard')}}</a></li>
              <li class="active"><i class="fa fa-desktop"></i> {{trans('common.table.upload')}}</a></li>              
            </ol>
    </div>   
</div><!-- end row 1--> 

<div class="row">
          <div class="col-lg-12">
            <div class="panel panel-info">
              <div class="panel-heading">
                Upload Image
              </div>
              <div class="panel-body">
                   <!-- upload form -->
                  <div class="col-lg-6"> 
                  <div class="panel panel-info">
                  
                    <form enctype="multipart/form-data" method="post" id="frm1" name="frm1" action="{{ Request::root() }}/image/upload" role="form" method="post">
                    <div class="form-group">
                              <label>Choose file image be upload</label>
                              <input name="fileImage[]" type="file" multiple="true" />  
                    </div>      
                    
                    <input type="submit" value="Upload Multifile" class="btn btn-primary" />
                    
                    </form>
                    
                    
                   <div id="output"></div>
                   
                  </div>
                  </div>
                   <!-- upload form -->
              </div>
              
            </div>
          </div>
        </div><!-- /.row -->
  <div class="row">     
                  <div class="col-lg-12"> 
                  <div class="panel panel-info">
                      <div class="panel-heading">
                        List Image
                      </div>
                      <div class="panel-body">
                        <div id="loadImg"></div>
                      </div>  
                  </div>
                  </div>
  </div>  


 <script> 
 
 
       $("#frm1").submit(function( event ) {
              Data = new FormData(document.forms.namedItem("frm1"));
              var Output = document.getElementById("output");
              var seturl= "{{ Request::root() }}/backend/upload/add";
              
             //oOutput.innerHTML="<img src='http://reg.spblegalforum.ru/spilf2014/lf/img/animatedCircle.gif' >";
             Output.innerHTML="<div class='progress progress-striped active'><div class='progress-bar' style='width: 100%'></div></div>";
                             
        $.ajax({
            url: seturl,
            type: 'POST',
            data: Data,
            cache: false,
            dataType: 'json',
            processData: false, // Don't process the files
            contentType: false, // Set content type to false as jQuery will tell the server its a query string request
            beforeSubmit: function() {
                        //Output.innerHTML="<div class='progress progress-striped active'><div class='progress-bar' style='width: 100%'></div></div>";
                        $('input[type=file]').attr('disabled', true);
                        $('input[type=submit]').attr('disabled', true);
                    },
            success: function(data, textStatus, jqXHR)
            {
            if(typeof data.error === 'undefined')
            {
             var url_img= "{{asset('asset/share/uploads/images')}}/"
             var items = [];

               for (var j in data.msg_file_error) {                    
                    items.push("<div class='alert alert-danger alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>"+data.msg_file_error[j]+"</div>");
                  }                  
              
               for (var i in data.img) {
                    items.push('<img src=' +url_img+data.img[i] + ' width="100" height="100" >');
                  }

              $("#output").html(items);

              loadListImage();
            }
            else
            {
            
               Output.innerHTML = "Uploaded error 1! "+data.error;
            
            }
            },
            error: function(jqXHR, textStatus, errorThrown)
            {
            // Handle errors here
            Output.innerHTML = "Uploaded error 2! this file have type extend not provide "+textStatus;     
            }
            });
            
            event.preventDefault();

            

            
        });

      $( document ).ready(function() {
          loadListImage();
      });

      function loadListImage()
      {
        $("#loadImg").load("{{Request::root()}}/backend/upload/list");
      }


</script>


</head>
<body>
 


@stop        