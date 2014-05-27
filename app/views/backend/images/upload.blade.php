@section('breadcrumb')
<div class="row">
          <div class="col-lg-12">
            <h1>Images <small></small></h1>
            <ol class="breadcrumb">
              <li class="active"><i class="fa fa-dashboard"></i> Upload </li>
            </ol>            
          </div>
</div><!-- /.row -->
@stop

@section('content')
<div class="row" >
    <div class="col-lg-6"> 
    <div class="panel panel-info">
    
      <form enctype="multipart/form-data" method="post" id="frm1" name="frm1" action="{{ Request::root() }}/image/upload" role="form" method="post">
      <div class="form-group">
                <label>Choose file image be upload</label>
                <input name="fileImage[]" type="file" multiple="true"  />  
      </div>      
      
      <input type="submit" value="Upload Multifile" class="btn" />
      
      </form>
      
      
     <div id="output"></div>
     
    </div>
    </div>
    <!-- end p1 -->
    
     <div class="col-lg-6"> 
    <div class="panel panel-info">
      <form enctype="multipart/form-data" method="post" id="frm2" action="" role="form">
      <div class="form-group">
                <label>Choose file image be upload</label>
                <input name="fileImage[]" type="file" multiple="true"  />  
      </div>      
      
      <input type="submit" value="Stash the file!" class="btn" />
      
      </form>
      
     
    </div>
    </div>
    <!-- end p1 -->
    
</div>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
 <script> 
 
 
       $("#frm1").submit(function( event ) {
              oData = new FormData(document.forms.namedItem("frm1"));
              var oOutput = document.getElementById("output");
              var seturl= "{{ Request::root() }}/image/upload";
              
             //oOutput.innerHTML="<img src='http://reg.spblegalforum.ru/spilf2014/lf/img/animatedCircle.gif' >";
             oOutput.innerHTML="<div class='progress progress-striped active'><div class='progress-bar' style='width: 100%'></div></div>";
                             
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
                        $('input[type=file]').attr('disabled', true);
                        $('input[type=submit]').attr('disabled', true);
                    },
            success: function(data, textStatus, jqXHR)
            {
            if(typeof data.error === 'undefined')
            {
            // Success so call function to process the form
            //submitForm(event, data);           
             //oOutput.innerHTML = data;
             var url_img= "{{asset('backend/uploads/images')}}/"
             var items = [];
              //$.each( data, function( key, val ) {
                //items.push( "<img src='"+url_img+val.img+key.img+"'>" );
                            
             // });             
               //var test = $(this).data("msg_file_error",data.msg_file_error);
               for (var j in data.msg_file_error) {                    
                    items.push("<div class='alert alert-danger alert-dismissable'><button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>"+data.msg_file_error[j]+"</div>");
                  }                  
              
               for (var i in data.img) {
                    items.push('<img src=' +url_img+data.img[i] + ' width="100" height="100" >');
                  }
              
              //oOutput.innerHTML= items ;
              $("#output").html(items);
            }
            else
            {
            
               oOutput.innerHTML = "Uploaded error 1! "+data.error;
            
            }
            },
            error: function(jqXHR, textStatus, errorThrown)
            {
            // Handle errors here
            oOutput.innerHTML = "Uploaded error 2! this file have type extend not provide "+textStatus;     
            }
            });
            
            event.preventDefault();
            
        });
</script>
@stop