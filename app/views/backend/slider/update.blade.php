@section('content')
<div class="row"
     <div class="col-lg-12">
            <ol class="breadcrumb">
              <li><a href="{{Request::root()}}/backend"><i class="fa fa-dashboard"></i>{{trans('common.menu.dashboard')}}</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/slider"><i class="fa fa-desktop"></i>{{trans('common.table.slider')}}</a></li>            
              <li class="active"><i class="fa fa-desktop"></i>{{trans('common.button.update')}}</li>            
            </ol>
    </div>   
</div><!-- end row 1--> 

<div class="row">
    <div class="col-lg-12">
            <div class="col-lg-6">
                             
                {{Form::open(array('url'=>'backend/slider/update/'.$getSlider->id, 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data') )}}               
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title">{{trans('titlepage.title.update_slider')}}</h3>
                        </div>
                        <div class="panel-body">
                            <p>{{Session::get('msg_flash')}}</p>   
                             <div>                            
                                <div class="form-group">                                
                                    <label>{{trans('common.table.title')}}<span class="star-validation">(*)</span></label>
                                        {{Form::text('title',$getSlider->title,array('class' => 'form-control','id'=>'name'))}}       
                                </div>

                                <div class="form-group">
                                    <label>{{trans('common.table.link')}}</label>                                
                                    {{Form::text('link',$getSlider->link,array('class' => 'form-control','id'=>'permalink'))}}       
                                </div>

                                 <div class="form-group">
                                 <label>{{trans('common.table.caption')}}</label>
                                    {{Form::textarea('caption',$getSlider->caption,array('class' => 'form-control','id'=>'description','rows'=>'2'))}}                                     
                                  </div>                               
                                  <div class="form-group">
                                   <label>{{trans('common.table.image')}}</label>
                                     {{Form::file('image') }}
                                     @if($image)
                                     <img src="{{asset('asset/share/uploads/images/'.$image->name)}}" height="100" />
                                     @endif
                                  </div>    
                                 
                                 <div class="form-group">
                                    <label>{{trans('common.table.status')}}</label>
                                    <div class="radio">
                                      <label>
                                       {{Form::radio('status', 'publish',true )}}
                                       {{trans('common.table.publish')}}
                                      </label>
                                    </div>
                                   <div class="radio">
                                      <label>
                                        {{Form::radio('status', 'unpublish',false)}}
                                        {{trans('common.table.unpublish')}}
                                      </label>
                                    </div>                            
                                 </div>
                                 <button type="submit" class="btn btn-primary">{{trans('common.button.update')}}</button>
                                 
                              </div>  
                        </div>        
                    </div>
                {{Form::close()}}
             </div><!-- col 8 -->    
       </div><!-- col 12 -->          
</div><!-- row 2 -->             
@stop