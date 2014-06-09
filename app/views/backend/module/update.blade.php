@section('breadcrumb')      
 <ul id="breadcrumb">
                <li>
                    <span class="entypo-home"></span>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="{{Request::root()}}/backend/module" title="Sample page 1">{{trans('common.table.module')}}</a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">{{trans('common.button.update')}}</a>
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
                                        @foreach($position as $otp)
                                        <option value="{{$otp->name}}" <?php if($getMod->position==$otp->name) echo 'selected';?> >{{$otp->name}}</option>
                                        @endforeach                         
                                    </select>
                                </div>  
                                <div class="form-group">
                                    <label>{{trans('common.table.order')}}</label> 
                                    {{Form::text('order',$getMod->order,array('class' => 'form-control'))}}       
                                </div> 
                                <div class="form-group">
                                    <label>{{trans('common.table.icon')}}</label> 
                                    {{Form::textarea('icon',$getMod->icon,array('class' => 'form-control','rows'=>'4'))}}       
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