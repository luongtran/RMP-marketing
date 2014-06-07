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

                            <div class="alert">
                               {{Session::get('msg_flash_home')}}
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
                                    <a href="{{Request::root()}}/backend/page/add">
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
                <li><a href="#" title="Sample page 1">Pages</a>
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
    <div class="col-lg-4">
          <div class="row">
         {{Form::open(array('url'=>'backend/page/add', 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data') )}}                                 
        <div id="basicClose" class="nest">
                            <div class="title-alt">
                                <h6>Add page</h6>
                                <div class="titleClose">
                                    <a href="#basicClose" class="gone">
                                        <span class="entypo-cancel"></span>
                                    </a>
                                </div>
                                <div class="titleToggle">
                                    <a href="#basic" class="nav-toggle-alt">
                                        <span class="entypo-up-open"></span>
                                    </a>
                                </div>

                            </div>

                            <div id="basic" class="body-nest">                              
                                  <div class="form_center">

                                    <div class="form-group">                                
                                      <label>{{trans('common.table.name')}}<span class="star-validation">(*)</span></label>
                                          {{Form::text('name','',array('class' => 'form-control','id'=>'name'))}}       
                                  </div>

                                  <div class="form-group">
                                      <label>{{trans('common.table.link')}}</label>                                
                                      {{Form::text('link','',array('class' => 'form-control','id'=>'permalink'))}}       
                                  </div>
                                   
                                  <?php echo CommonHelper::createFormStatus();?>
                                   
                                   <button type="submit" class="btn btn-info">{{trans('common.button.save')}}</button>                                                                          
                                  </div>
                              </div>  
                        
                     
      </div>
     {{Form::close()}}  
     </div>
      </div>
    <!--col 4-->         
    <div class="col-lg-8">      
                           
                    {{Form::open(array('url'=>'backend/page/action', 'method' => 'post','role'=>'form'))}}            
                <div id="basicClose" class="nest">      
                    <div class="title-alt">
                       {{trans('titlepage.title.list_page')}}
                    </div>
                     {{Session::get('msg_flash')}}
                    <div id="basic" class="body-nest"> 
                                           
                                  <section id="flip-scroll">
                               <table class="table table-bordered table-striped cf">
                                     <thead class="cf">
                                      <tr>
                                        <th><input type="checkbox" id="ckbCheckAll" /></th>  
                                        <th class="header">{{trans('common.table.name')}}<i class="fa fa-sort"></i></th>
                                        <th class="header">{{trans('common.table.link')}} <i class="fa fa-sort"></i></th>                                        
                                        <th class="header">{{trans('common.table.create_at')}}<i class="fa fa-sort"></i></th>
                                        <th class="header"><i class="fa fa-sort"></i></th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      @foreach($getPage  as $pages)                                      
                                      <tr <?php if($pages->status=='unpublish') echo "class='danger'";?> >
                                          <td><input type="checkbox" value="{{$pages->id}}" name="checkID[]" id="" class="checkBoxClass"></td>  
                                        <td>{{$pages->name}}</td>                                        
                                        <td>{{$pages->link}}</td>
                                        <td>{{$pages->created_at}}</td>
                                        <td><a  href="{{Request::root()}}/backend/page/update/{{$pages->id}}"><span class="label label-primary">{{trans('common.button.update')}}</span></a>
                                            <a  href="{{Request::root()}}/backend/page/delete/{{$pages->id}}" onclick="return confirm('{{trans("messages.cf_delete")}}');"><span class="label label-danger">{{trans('common.button.delete')}}</span></a>
                                        </td>
                                      </tr>                                      
                                      @endforeach
                                    </tbody>
                                  </table> 
                               </section>  
                                  <div class="col-sm-3">
                                         <?php echo CommonHelper::createFormAction();?>
                                    </div>
                           
                     </div>   
                  </div>      
                  {{Form::close()}}                           
                 </div>                                                        
                               
                     <!-- paging -->                
                         <?php echo $getPage->links(); ?>  
                     <!-- end paging -->  
                
          
</div><!--col 12-->         
</div><!--row -->   
@stop