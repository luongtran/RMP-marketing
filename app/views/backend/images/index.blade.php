
@section('title')
<div class="row">
                <div id="paper-top">
                    <div class="col-sm-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-media-record"></i> 
                            <span>
                               MODULE UPLOAD                         
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
                                <li>
                                    <a href="{{Request::root()}}/backend/upload">
                                        <span class="entypo-plus-circled margin-iconic"></span>Add New</a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="entypo-heart margin-iconic"></span>Favorite</a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="entypo-cog margin-iconic"></span>Setting</a>
                                </li>
                            </ul>
                        </div>


                    </div>
                </div>
            </div>
@stop
@section('breadcrumb')      
 <ul id="breadcrumb">
                <li>
                    <span class="entypo-home"></span>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="{{Request::root()}}/backend/module" title="Sample page 1">Module</a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="{{Request::root()}}/backend/module" title="Sample page 1">Uploads</a>
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