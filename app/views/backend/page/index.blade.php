@section('content')
<div class="row">            
            <div class="col-sm-12">
                <div class="messages_validation col-sm-12">                           
                      {{Session::get('msg_flash')}}
                </div>
            </div>
    
                <div class="col-sm-4">              
                    {{Form::open(array('url'=>'backend/page/add', 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data') )}}               
                    <div id="basicClose" class="nest">
                            <div class="title-alt">
                                <h6>Add module</h6>
                            </div>
                        <div  id="basic" class="body-nest">                         
                             <div>                            
                                <div class="form-group">                                
                                    <label>{{trans('common.table.name')}}<span class="star-validation">(*)</span></label>
                                        {{Form::text('name','',array('class' => 'form-control','id'=>'name'))}}       
                                </div>

                                <div class="form-group">
                                    <label>{{trans('common.table.link')}}</label>                                
                                    {{Form::text('link','',array('class' => 'form-control','id'=>'permalink'))}}       
                                </div>
                                 
                                <?php echo CommonHelper::createFormStatus();?>
                                 
                                 <button type="submit" class="btn btn-primary">{{trans('common.button.save')}}</button>
                             </div>
                           </div>
                            </div>                    
                    {{Form::close()}}
                                 
                </div><!--col4-->
                
                <div class="col-sm-8">               
                <div class="nest" id="tableStaticClose">
                    <div class="title-alt">
                       {{trans('titlepage.title.list_page')}}
                    </div>
                    <div class="body-nest" id="tableStatic">                            
                                
                                 {{Form::open(array('url'=>'backend/page/action', 'method' => 'post','role'=>'form'))}}               
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
                             {{Form::close()}} 
                    </div>
                                
                                    
                                   
                                 
                </div>                                
                                                                    
                               
                     <!-- paging -->                
                         <?php echo $getPage->links(); ?>  
                     <!-- end paging -->  
                
                  
                            
                
          
       </div><!--col 12 -->             
           
       </div><!--row -->   
@stop