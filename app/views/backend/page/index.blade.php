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
<div class="col-sm-12">   
   {{Session::get('msg_flash')}}
    <div class="col-sm-4">           
         {{Form::open(array('url'=>'backend/page/add', 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data') )}}                                 
            <div id="headerClose" class="nest">    
                            <div class="title-alt">
                                <h6>Add page</h6>
                            </div>

                           <div id="header" class="body-nest">                          
                                 

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
                        
                 
     {{Form::close()}}  
    
      </div>
    <!--col 4-->         
    <div class="col-sm-8">  
                         
                <div id="headerClose" class="nest">        
                  <div class="title-alt">
                      <h6>
                       {{trans('titlepage.title.list_page')}}
                     </h6>
                  </div>                    
                    <div id="header" class="body-nest">
                    {{Form::open(array('url'=>'backend/page/action', 'method' => 'post','role'=>'form'))}}                          
                                  <section id="flip-scroll">
                               <table class="table table-bordered table-striped cf">
                                     <thead class="cf">
                                      <tr>
                                        <th><input type="checkbox" id="ckbCheckAll" /></th>  
                                        <th>{{trans('common.table.name')}}<i class="fa fa-sort"></i></th>
                                        <th>{{trans('common.table.link')}} <i class="fa fa-sort"></i></th>                                        
                                        <th>{{trans('common.table.create_at')}}<i class="fa fa-sort"></i></th>
                                        <th ><i class="fa fa-sort"></i></th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      @foreach($getPage  as $pages)                                      
                                      <tr <?php if($pages->status=='unpublish') echo "class='danger'";?> >
                                         <td><input type="checkbox" value="{{$pages->id}}" name="checkID[]" id="" class="checkBoxClass"></td>
                                        <td class='custom-color'>{{$pages->name}}</td>                                        
                                        <td class='custom-color'>{{$pages->link}}</td>
                                        <td class='custom-color'>{{$pages->created_at}}</td>
                                        <td>
                                          <a href="{{Request::root()}}/backend/page/update/{{$pages->id}}" ><span class="label label-primary">{{trans('common.button.update')}}</span></a>
                                          <a href="{{Request::root()}}/backend/page/delete/{{$pages->id}}" onclick="return confirm('{{trans("messages.cf_delete")}}');"><span class="label label-danger">{{trans('common.button.delete')}}</span></a>
                                        </td>
                                      </tr>                                      
                                      @endforeach
                                    </tbody>
                                  </table> 
                               </section>  
                           <div class="col-sm-3">
                                          <?php echo CommonHelper::createFormAction();?>                                   
                                         
                                        </div>         
                        {{Form::close()}}              
                     </div>   
                  </div>      
                      <!-- paging -->                
                                                <?php echo $getPage->links(); ?>                              
                                            <!-- end paging -->                 
                 </div>                                                        
                              
                
          
</div><!--col 12--> 
@stop