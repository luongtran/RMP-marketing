@section('title')
<div class="row">
                <div id="paper-top">
                    <div class="col-sm-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-media-record"></i> 
                            <span>
                             {{trans('common.table.category')}}                       
                            </span>
                        </h2>

                    </div>

                    <div class="col-sm-7">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="tittle-middle-header">   
                              <div clas="alert">                         
                               {{Session::get('msg_flash_common')}}
                             </div>
                        
                        </div>

                    </div>
                    <div class="col-sm-2">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="btn-group btn-wigdet pull-right visible-lg">
                            <div class="btn">
                                Action</div>
                            <button data-toggle="dropdown" class="btn dropdown-toggle" type="button">
                                <span class="caret"></span>
                                <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            <ul role="menu" class="dropdown-menu">
                                <li>
                                    <a href="{{Request::root()}}/backend/category">
                                        <span class="entypo-plus-circled margin-iconic"></span>  {{trans('common.button.add')}}  </a>
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
                <li><a href="{{Request::root()}}/backend">
                    <span class="entypo-home"></span></a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="{{Request::root()}}/backend/category" title="Sample page 1">  {{trans('common.table.category')}}   </a>
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
                  <div class="messages_validation">                           
                      {{Session::get('msg_flash')}}
                  </div>
            <div class="col-lg-12"> 
                <div class="col-lg-4">              
                    {{Form::open(array('url'=>'backend/category/add', 'method' => 'post','role'=>'form') )}}               
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title">{{trans('titlepage.title.add_category')}}</h3>
                        </div>
                        <div class="panel-body">                         
                             <div>                            
                                <div class="form-group">                                
                                    <label>{{trans('common.table.name')}}<span class="star-validation">(*)</span></label>
                                        {{Form::text('name','',array('class' => 'form-control','id'=>'name'))}}       
                                </div>

                                <div class="form-group">
                                    <label>{{trans('common.table.permalink')}}</label>                                
                                    {{Form::text('permalink','',array('class' => 'form-control','id'=>'permalink'))}}       
                                </div>

                                  <div class="form-group">
                                 <label>{{trans('common.table.description')}}</label>
                                    {{Form::textarea('description','',array('class' => 'form-control','id'=>'description','rows'=>'2'))}}                                     
                                 </div>
                                 
                                  <div class="form-group">                                      
                                    <label>{{trans('common.table.parent')}}</label>
                                    <select class="form-control" name="parent">                                        
                                        <option value="0">None</option>
                                        {{$listParent}}                                                                  
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
                       {{trans('titlepage.title.list_category')}}
                    </div>
                    <div class="panel-body"> 
                               
                                <h2></h2>
                                 {{Form::open(array('url'=>'backend/category/action', 'method' => 'post','role'=>'form'))}}               
                                <div class="table-responsive">
                                  <table class="table table-bordered table-hover tablesorter">
                                    <thead>
                                      <tr>
                                        <th><input type="checkbox" id="ckbCheckAll" /></th>  
                                        <th class="">{{trans('common.table.name')}}<i class="fa fa-sort"></i></th>
                                        <th class="">{{trans('common.table.status')}} <i class="fa fa-sort"></i></th>                                        
                                        <th class="">{{trans('common.table.create_at')}}<i class="fa fa-sort"></i></th>
                                        <th class=""><i class="fa fa-sort"></i></th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      @foreach($categories  as $category)                                      
                                      <tr <?php if($category->status == "unpublish"){echo "class='danger'";}?> >
                                          <td><input type="checkbox" value="{{$category->id}}" name="checkID[]" id="" class="checkBoxClass"></td>  
                                        <td class='custom-color'>{{$category->name}}</td>                                        
                                        <td class='custom-color'>{{$category->status}}</td>
                                        <td class='custom-color'>{{$category->created_at}}</td>
                                        <td class='custom-color'><a  href="{{Request::root()}}/backend/category/update/{{$category->id}}"><span class="label label-primary">{{trans('common.button.update')}}</span></a>
                                            <a  href="{{Request::root()}}/backend/category/delete/{{$category->id}}" onclick="return confirm('{{trans("messages.cf_delete")}}');"><span class="label label-danger">{{trans('common.button.delete')}}</span></a>
                                        </td>
                                      </tr>                                      
                                      @endforeach
                                    </tbody>
                                  </table> 
                                     
                                     <div class="row col-lg-3">
                                         <?php echo CommonHelper::createFormAction();?>
                                    </div>   
                                   
                                </div>                               
                                  
                              {{Form::close()}} 
                             
                             
                          </div> 
                      
                       
                              <div class="row col-lg-3">
                                  <?php echo $categories->links(); ?>      
                              </div> 
                </div><!--panel -->   
                </div><!-- 12-->   
                  
                            
                
                  
            </div><!--col 8 -->
       </div><!--col 12 -->        
       </div><!--col 12 -->
</div><!-- end row 2-->                
     
@stop