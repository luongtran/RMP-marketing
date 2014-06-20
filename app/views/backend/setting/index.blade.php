@section('title')
<div class="row">
                <div id="paper-top">
                    <div class="col-sm-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-media-record"></i> 
                            <span>
                              {{trans('common.table.setting')}}    
                            </span>
                        </h2>

                    </div>

                    <div class="col-sm-7">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="tittle-middle-header">     
                        <div class="alert">                       
                               {{Session::get('msg_flash_common')}}
                        </div>       
                        
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
                                    <a href="{{Request::root()}}/backend/setting">
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
                <li><a href="{{Request::root()}}/backend/setting" title="Sample page 1"> {{trans('common.table.setting')}}</a>
                </li>
                <li class="pull-right">
                    <div class="input-group input-widget">

                        <input style="border-radius:15px" type="text" placeholder="Search..." class="form-control">
                    </div>
                </li>
            </ul>
 @stop
@section('content')
<div id="setting"> 
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
                                        <tr class='custom-color'>
                                            <td >
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
               $(".alert").remove();        
              var seturl= "{{ Request::root() }}/backend/setting/update";
               output.show("100");
               output.html(' <div id="loadajax" style="top: 300px;position: fixed;left:400px;z-index: 890;"><img src="{{asset('asset/share/icon/loading_icon.gif')}}" /></div>');    
      
                var request = $.ajax({
                url: seturl,
                type: "POST",
                data: $("#frm-setting").serialize(),
                dataType: "html"
                });
                request.done(function( msg ){ 
                   $("#setting").html(msg); 
                 output.hide("100");
                });
                request.fail(function( jqXHR, textStatus ) {
                alert( "Request failed: " + textStatus );
                });
                
            event.preventDefault();
            
        });
</script>
 </div>    
@stop