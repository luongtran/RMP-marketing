@section('content')
<div class="row"
     <div class="col-lg-12">
            <ol class="breadcrumb">
              <li><a href="{{Request::root()}}/backend"><i class="fa fa-dashboard"></i>{{trans('common.menu.dashboard')}}</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/reason"><i class="fa fa-desktop"></i>{{trans('common.table.reason')}}</a></li>            
              <li class="active"><i class="fa fa-desktop"></i>{{trans('common.button.update')}}</li>            
            </ol>
    </div>   
</div><!-- end row 1--> 

<div class="row">
    <div class="col-lg-12">
            <div class="col-lg-6">
                             
                {{Form::open(array('url'=>'backend/reason/update/'.$getReason->id, 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data') )}}               
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title">{{trans('titlepage.title.update_reason')}}</h3>
                        </div>
                        <div class="panel-body">
                            <p>{{Session::get('msg_flash')}}</p>   
                             <div>                            
                                <div class="form-group">                                
                                    <label>{{trans('common.table.title')}}<span class="star-validation">(*)</span></label>
                                        {{Form::text('title',$getReason->title,array('class' => 'form-control','id'=>'name'))}}       
                                </div>

                                 <div class="form-group">
                                 <label>{{trans('common.table.caption')}}</label>
                                    {{Form::textarea('caption',$getReason->caption,array('class' => 'form-control','id'=>'description','rows'=>'2'))}}                                     
                                  </div>                               
                                  <div class="form-group">
                                   <label>{{trans('common.table.image')}}</label>
                                     {{Form::file('image') }}
                                     @if($image)
                                     <img src="{{asset('asset/share/uploads/images/'.$image->name)}}" height="100" />
                                     @endif
                                  </div>    
                                   <div class="form-group">                                
                                    <label>{{trans('common.table.order')}}<span class="star-validation"></span></label>
                                        {{Form::text('order',$getReason->order,array('class' => 'form-control'))}}       
                                  </div>  
                                  <?php echo CommonHelper::createFormStatus($getReason->status);?>
                                 
                                 <button type="submit" class="btn btn-primary">{{trans('common.button.update')}}</button>
                                 
                              </div>  
                        </div>        
                    </div>
                {{Form::close()}}
             </div><!-- col 8 -->    
       </div><!-- col 12 -->          
</div><!-- row 2 -->             
@stop