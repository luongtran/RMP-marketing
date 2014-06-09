                <div class="messages_validation col-lg-12">                           
                      {{Session::get('msg_flash')}}             
                    {{Form::open(array('url'=>'backend/setting/update', 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data','id'=>'frm-setting') )}}               
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title">{{trans('common.table.setting')}}</h3>
                        </div>
                        <div class="panel-body"> 
                            <p><button type="submit" class="btn btn-primary">{{trans('common.button.update')}}</button></p>
                            <div class="table-responsive">
                                  <table class="table table-bordered table-hover tablesorter">
                                    <thead>
                                      <tr> 
                                        <th class="">{{trans('common.table.name')}} <i class="fa fa-sort"></i></th>
                                        <th class="">{{trans('common.table.value')}}<i class="fa fa-sort"></i></th>                                                                          
                                      </tr>
                                    </thead>
                                    <tbody>
                                         @foreach($getSetting  as $setting)                                      
                                        <tr>
                                            <td>
                                            <div class="form-group"> 
                                                   {{$setting->description}}
                                            </div>   
                                            </td>
                                                                              
                                            <td @if($setting->value=="") {{'class="danger"'}}   @endif >
                                            <div class="form-group">   
                                                 {{Form::text($setting->name,$setting->value,array('class' => 'form-control','id'=>$setting->name))}}
                                            </div>   
                                            </td>
                                            
                                        </tr>                                      
                                      @endforeach
                                    </tbody>
                                  </table>                                
                                <button type="submit" class="btn btn-primary">{{trans('common.button.update')}}</button>
                                <div id="output"></div>
                            </div>                                                        
                        </div>    
                     </div>
                    {{Form::close()}}   
                    
            <p style="text-align:right;"><a href="{{Request::root()}}/backend/setting/create-data" onclick="return confirm('Are you want reset and create new data setting?')"><span class="label label-danger">Create data setting</span></a>     
            </p>              
          </div>        
         

 <script> 
$( document ).ready(function() {
    // var urlload= "{{ Request::root() }}/backend/setting/list";
     //$("#setting").load('setting/list');
}); 
       $("#frm-setting").submit(function( event ) {
              
              var output = $("#output");              
              var seturl= "{{ Request::root() }}/backend/setting/update";
               output.html(' <div id="loadajax" style="top: 300px;position: fixed;left:400px;z-index: 890;"><img src="http://reg.spblegalforum.ru/spilf2014/lf/img/animatedCircle.gif" /></div>');    
      
                var request = $.ajax({
                url: seturl,
                type: "POST",
                data: $("#frm-setting").serialize(),
                dataType: "html"
                });
                request.done(function( msg ){ 
                   $("#setting").html(msg); 
                   output.html("");
                });
                request.fail(function( jqXHR, textStatus ) {
                alert( "Request failed: " + textStatus );
                });
                
            event.preventDefault();
            
        });
</script>

