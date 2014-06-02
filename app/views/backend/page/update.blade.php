@section('content')
<div class="row"
     <div class="col-lg-12">
            <ol class="breadcrumb">
              <li><a href="{{Request::root()}}/backend"><i class="fa fa-dashboard"></i>{{trans('common.menu.dashboard')}}</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/page"><i class="fa fa-desktop"></i>{{trans('common.table.page')}}</a></li>            
              <li class="active"><i class="fa fa-desktop"></i>{{trans('common.button.update')}}</li>            
            </ol>
    </div>   
</div><!-- end row 1--> 

<div class="row">
    <div class="col-lg-12">
            <div class="col-lg-6">
                             
                {{Form::open(array('url'=>'backend/page/update/'.$getPage->id, 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data') )}}               
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title">{{trans('titlepage.title.update_page')}}</h3>
                        </div>
                        <div class="panel-body">
                            <p>{{Session::get('msg_flash')}}</p>   
                             <div>                            
                                <div class="form-group">                                
                                    <label>{{trans('common.table.name')}}<span class="star-validation">(*)</span></label>
                                        {{Form::text('name',$getPage->name,array('class' => 'form-control','id'=>'name'))}}       
                                </div>

                                <div class="form-group">
                                    <label>{{trans('common.table.link')}}</label>                                
                                    {{Form::text('link',$getPage->link,array('class' => 'form-control'))}}       
                                </div>

                                 
                                 <button type="submit" class="btn btn-primary">{{trans('common.button.update')}}</button>
                                 
                              </div>  
                        </div>        
                    </div>
               
             </div><!-- col 6 -->  
             
             <div class="col-lg-6">
                    <div class="form-group">
                                <label>{{trans('common.table.module')}}</label>
                                    <div class="">
                                    @foreach($mods as $ctItem)
                                        <?php $active=false;?>
                                        @foreach($mod as $ctSub)
                                        @if($ctSub->id == $ctItem->id)
                                        <?php $active=true;?>
                                        @endif                                       
                                        @endforeach                                      
                                      <div class="checkbox">
                                      <label>                                       
                                       {{Form::checkbox('module[]',$ctItem->id,$active)}}                                      
                                       {{$ctItem->name}} 
                                       </label>
                                      </div>
                                   @endforeach
                            </div>    
             </div>
             </div>
              {{Form::close()}}
       </div><!-- col 12 -->          
</div><!-- row 2 -->             
@stop