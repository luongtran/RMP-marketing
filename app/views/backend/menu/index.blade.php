@section('title')
<div class="row">
                <div id="paper-top">
                    <div class="col-sm-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-media-record"></i> 
                            <span>
                              PAGE                       
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
                                    <a href="#">
                                        <span class="entypo-heart margin-iconic"></span></a>
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
                <li><a href="#" title="Sample page 1">{{trans('common.table.menu')}}</a>
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

                                 <div class="form-group">
                                            <label for="">{{trans('common.table.language')}}</label>    
                                            <select name="lang_id" class="form-control">                                              
                                                @foreach($language as $lang)
                                                <option value="{{$lang->code}}">{{$lang->name}}</option>
                                                @endforeach
                                            </select>
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
                                        <th class='custom-color'>{{trans('common.table.name')}}<i class="fa fa-sort"></i></th>
                                        <th class='custom-color'>{{trans('common.table.parent')}} <i class="fa fa-sort"></i></th>      
                                        <th class='custom-color' >{{trans('common.table.order')}} <i class="fa fa-sort"></i></th>      
                                        <th class='custom-color'>{{trans('common.table.icon')}} <i class="fa fa-sort"></i></th>      
                                        <th ><i class="fa fa-sort"></i></th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      @foreach($getMenu  as $menu)                                      
                                      <tr <?php if($menu->status == "unpublish"){echo "class='danger'";}?> >
                                          <td><input type="checkbox" value="{{$menu->id}}" name="checkID[]" id="" class="checkBoxClass"></td>  
                                        <td class='custom-color'>{{$menu->title}}</td>
                                        <td class='custom-color'>
                                            @foreach($getP as $parent)
                                              @if($parent->id == $menu->parent)
                                              {{$parent->title}}
                                              @endif
                                            @endforeach               
                                        <td class='custom-color'>{{$menu->order}}</td>                      
                                        <td class='custom-color'>{{$menu->icon}}</td>          
                                        <td class='custom-color'><a  href="{{Request::root()}}/backend/menu/update/{{$menu->id}}"><span class="label label-primary">{{trans('common.button.update')}}</span></a>
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