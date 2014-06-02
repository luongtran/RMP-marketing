@section('content')
<div class="row"
     <div class="col-lg-12">
            <ol class="breadcrumb">
              <li><a href="{{Request::root()}}/backend"><i class="fa fa-dashboard"></i>{{trans('common.menu.dashboard')}}</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/menu"><i class="fa fa-desktop"></i>{{trans('common.table.menu')}}</a></li>            
              <li class="active"><i class="fa fa-desktop"></i>{{trans('common.button.update')}}</li>            
            </ol>
    </div>   
</div><!-- end row 1--> 

<div class="row">
    <div class="col-lg-12">
            <div class="col-lg-6">
                             
                {{Form::open(array('url'=>'backend/module/update/'.$getMod->id, 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data') )}}               
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title">{{trans('titlepage.title.update_menu')}}</h3>
                        </div>
                        <div class="panel-body">
                            <p>{{Session::get('msg_flash')}}</p>   
                             <div>                            
                                <div class="form-group">                                
                                    <label>{{trans('common.table.name')}}<span class="star-validation">(*)</span></label>
                                        {{Form::text('name',$getMod->name,array('class' => 'form-control','id'=>'name'))}}       
                                </div>
                                 

                                <div class="form-group">
                                    <label>{{trans('common.table.mod')}}</label> 
                                    {{Form::text('mod',$getMod->mod,array('class' => 'form-control'))}}       
                                </div>

                                <div class="form-group">
                                    <label>{{trans('common.table.position')}}</label> 
                                    <select class="form-control" name="position">
                                        <option value="">None</option>
                                        <option value="title_bar">Title bar</option>
                                        <option value="header">Header</option>
                                        <option value="top">Top</option>
                                        <option value="content">Content</option>                                  
                                        <option value="bottom">Bottom</option>                                  
                                    </select>
                                </div>   
                          
                                 
                                <?php echo CommonHelper::createFormStatus($getMod->status);?>
                                 
                                 <button type="submit" class="btn btn-primary">{{trans('common.button.update')}}</button>
                                 
                              </div>  
                        </div>        
                    </div>
                {{Form::close()}}
             </div><!-- col 8 -->    
       </div><!-- col 12 -->          
</div><!-- row 2 -->             
@stop