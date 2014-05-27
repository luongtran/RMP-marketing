
@section('content')
       
<form enctype="multipart/form-data" method="post" name="fileinfo" id="frmup" action="http://localhost:8000/backend/article/upload1">
  <label>Your email address:</label>
  <input type="email" autocomplete="on" autofocus name="userid" placeholder="email" required size="32" maxlength="64" /><br />
  <label>Custom file label:</label>
  <input type="text" name="filelabel" size="12" maxlength="32" /><br />
  <label>File to stash:</label>
  <input type="file" name="file[]" required multiple/>
  <input name="fileImage[]" type="file" multiple="true" />
  
  
  <input type="submit" value="Stash the file!" />
 </form>
<div id="output"></div>

 <script> 
     
        /* form.addEventListener('submit', function(ev) {
         *  put this before form.add  (var form = document.forms.namedItem("fileinfo");)
          var oOutput = document.getElementById("output"),
            oData = new FormData(document.forms.namedItem("fileinfo"));

          oData.append("CustomField", "This is some extra data");

          var oReq = new XMLHttpRequest();
          oReq.open("POST", "http://localhost:8000/backend/article/upload1", true);
          oReq.onload = function(oEvent) {
            if (oReq.status == 200) {
              oOutput.innerHTML = "Uploaded!"+oEvent;
            } else {
              oOutput.innerHTML = "Error " + oReq.status + " occurred uploading your file.<br \/>";
            }
          };

          oReq.send(oData);
          ev.preventDefault();
        }, false); 
        */
       $( "#frmup").submit(function( event ) {
              oData = new FormData(document.forms.namedItem("fileinfo"));
              var oOutput = document.getElementById("output");
        $.ajax({
            url: 'http://localhost:8000/backend/article/upload1',
            type: 'POST',
            data: oData,
            cache: false,
            dataType: 'html',
            processData: false, // Don't process the files
            contentType: false, // Set content type to false as jQuery will tell the server its a query string request
            success: function(data, textStatus, jqXHR)
            {
            if(typeof data.error === 'undefined')
            {
            // Success so call function to process the form
            //submitForm(event, data);
             oOutput.innerHTML = data;
            }
            else
            {
            // Handle errors here
            oOutput.innerHTML = "Uploaded! "+data.error;
            }
            },
            error: function(jqXHR, textStatus, errorThrown)
            {
            // Handle errors here
            oOutput.innerHTML = "Uploaded! "+textStatus;
            // STOP LOADING SPINNER            
            }
            });
            
            event.preventDefault();
            
        });
</script>
@stop