@section('content')
<div class="row"
     <div class="col-lg-12">
            <ol class="breadcrumb">
              <li><a href="{{Request::root()}}/backend"><i class="fa fa-dashboard"></i> {{trans('common.menu.dashboard')}}</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/menu"><i class="fa fa-desktop"></i> {{trans('common.table.menu')}}</a></li>            
            </ol>
    </div>   
</div><!-- end row 1--> 

<div class="row">
            
            <div class="col-lg-12"> 
            <div class="col-lg-12">
                <div class="messages_validation col-lg-12">                           
                      {{Session::get('msg_flash')}}
                </div>
                <div class="col-lg-4">              
                    {{Form::open(array('url'=>'backend/menu/add', 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data','id'=>'frm-setting') )}}               
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title">{{trans('titlepage.title.add_menu')}}</h3>
                        </div>
                        <div class="panel-body">                         
                             <div>                            
                                <div class="form-group">                                
                                    <label>{{trans('common.table.title')}}<span class="star-validation">(*)</span></label>
                                        {{Form::text('title','',array('class' => 'form-control','id'=>'name'))}}       
                                </div>

                                <div class="form-group">
                                    <label>{{trans('common.table.link')}} page</label>                                
                                    <select class="form-control" name="page_id">
                                        <option>None</option>
                                        @foreach($listPage as $page)
                                        <option value="{{$page->id}}">{{$page->name}}</option>
                                        @endforeach
                                    </select>      
                                </div>

                                <div class="form-group">
                                    <label>{{trans('common.table.parent')}}</label> 
                                    <select class="form-control" name="parent">
                                        <option value="0">None</option>
                                    {{$parent}}
                                    </select>
                                </div>                                 
                                
                                <div class="form-group">
                                    <label>{{trans('common.table.order')}} </label>                                
                                    {{Form::text('order','0',array('class' => 'form-control','id'=>'order'))}}       
                                </div>
                                 
                                <div class="form-group">
                                    <label>{{trans('common.table.icon')}}(Ex: icon-home)</label>                                
                                    {{Form::text('icon','',array('class' => 'form-control','id'=>'icon'))}}       
                                </div>
                          
                                 <?php echo CommonHelper::createFormStatus();?>
                                
                                 <button type="submit" class="btn btn-primary">{{trans('common.button.save')}}</button>
                             </div>
                           </div>
                            </div>                    
                    {{Form::close()}}
                                 
                </div><!--col4-->
                
                <div class="col-lg-8">
                <div class="col-lg-12">
                <div class="panel panel-success">
                    <div class="panel-heading"> 
                       {{trans('titlepage.title.list_menu')}}
                    </div>
                    <div class="panel-body"> 
                               
                                <h2></h2>
                                 {{Form::open(array('url'=>'backend/menu/action', 'method' => 'post','role'=>'form'))}}               
                                <div class="table-responsive">
                                  <table class="table table-bordered table-hover tablesorter">
                                    <thead>
                                      <tr>
                                        <th><input type="checkbox" id="ckbCheckAll" /></th>  
                                        <th class="header">{{trans('common.table.name')}}<i class="fa fa-sort"></i></th>
                                        <th class="header">{{trans('common.table.parent')}} <i class="fa fa-sort"></i></th>      
                                        <th class="header">{{trans('common.table.order')}} <i class="fa fa-sort"></i></th>      
                                        <th class="header">{{trans('common.table.icon')}} <i class="fa fa-sort"></i></th>      
                                        <th class="header"><i class="fa fa-sort"></i></th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      @foreach($getMenu  as $menu)                                      
                                      <tr <?php if($menu->status == "unpublish"){echo "class='danger'";}?> >
                                          <td><input type="checkbox" value="{{$menu->id}}" name="checkID[]" id="" class="checkBoxClass"></td>  
                                        <td>{{$menu->title}}</td>
                                        <td>
                                            @foreach($getP as $parent)
                                              @if($parent->id == $menu->parent)
                                              {{$parent->title}}
                                              @endif
                                            @endforeach               
                                        <td>{{$menu->order}}</td>                      
                                        <td>{{$menu->icon}}</td>          
                                        <td><a  href="{{Request::root()}}/backend/menu/update/{{$menu->id}}"><span class="label label-primary">{{trans('common.button.update')}}</span></a>
                                            <a  href="{{Request::root()}}/backend/menu/delete/{{$menu->id}}" onclick="return confirm('{{trans("messages.cf_delete")}}');"><span class="label label-danger">{{trans('common.button.delete')}}</span></a>
                                        </td>
                                      </tr>                                      
                                      @endforeach
                                    </tbody>
                                  </table> 
                                </div>
                                
                                    
                                    <div class="row col-lg-3">
                                          <?php echo CommonHelper::createFormAction();?>
                                    </div>
                                 
                                 
                          </div>                                
                                                                    
                              
                                 
                             {{Form::close()}} 
                               
                </div><!--panel -->  
                     <!-- paging -->                
                         <?php echo $getMenu->links(); ?>  
                     <!-- end paging -->  
                </div><!-- 12-->   
                  
                            
                
                  
            </div><!--col 8 -->
       </div><!--col 12 -->        
       </div><!--col 12 -->
</div><!-- end row 2-->  
@stop