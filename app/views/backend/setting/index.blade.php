
@section('content')

     <div class="col-lg-12">
            <ol class="breadcrumb">
              <li><a href="{{Request::root()}}/backend"><i class="fa fa-dashboard"></i> {{trans('common.menu.dashboard')}}</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/setting"><i class="fa fa-desktop"></i> {{trans('common.table.setting')}}</a></li>            
            </ol>
    </div>  

                      
                <div class="messages_validation col-lg-12">                           
                      {{Session::get('msg_flash')}}             
                    {{Form::open(array('url'=>'backend/setting/update', 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data') )}}               
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
                                        <th class="header">{{trans('common.table.name')}} <i class="fa fa-sort"></i></th>
                                        <th class="header">{{trans('common.table.value')}}<i class="fa fa-sort"></i></th>                                                                          
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
                                                    {{Form::text($setting->name,$setting->value,array('class' => 'form-control'))}}       
                                            </div>   
                                            </td>
                                            
                                        </tr>                                      
                                      @endforeach
                                    </tbody>
                                  </table>
                                <button type="submit" class="btn btn-primary">{{trans('common.button.update')}}</button>
                            </div>                                                        
                        </div>    
                     </div>
                    {{Form::close()}}   
                    
            <p style="text-align:right;"><a href="{{Request::root()}}/backend/setting/create-data" onclick="return confirm('Are you want reset and create new data setting?')"><span class="label label-danger">Create data setting</span></a>     
            </p>              
          </div>        
              

@stop