@section('content')
<div class="row"
     <div class="col-lg-12">
            <ol class="breadcrumb">
             <li><a href=""><a href="{{Request::root()}}/backend"><i class="fa fa-dashboard"></i>{{trans('common.menu.dashboard')}}</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/article"><i class="fa fa-desktop"></i> {{trans('common.table.article')}}</a></li>
              <li class="active"><i class="fa fa-desktop"></i>{{trans('common.menu.view')}}</li>
            </ol>
    </div>   
</div><!-- end row 1--> 

<div class="row">   
            <div class="col-lg-12">
            <div class="col-lg-10">    
                   <div class="messages_validation">                           
                            {{Session::get('msg_flash')}}
                    </div>
                        
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">{{$article->title}}</h3>
                    </div>
                    
                    <div class="panel-body"> 
                        <div class="form-group">
                                <p><label>{{trans('common.table.permalink')}}: </label>
                                    {{$article->permalink}}
                                </p>                        
                        </div>
                        
                        <div class="form-group">
                            <div style="padding:5px;"><label>{{trans('common.table.content')}}: </label>
                                    {{$article->content}}
                             </div>                        
                        </div>
                        
                        <div class="form-group">
                                <p><label>{{trans('common.table.description')}}: </label>
                                    {{$article->description}}
                                </p>                        
                        </div>
                        
                        <div class="form-group">
                                <p><label>{{trans('common.table.images')}}: </label>
                                    @foreach($getImages as $lImage)
                                    <img src="{{asset('asset/share/uploads/images/'.$lImage->name)}}" alt="{{$lImage->name}}" width="50" height="50" />
                                    @endforeach    
                                </p>                        
                        </div>
                        
                        
                        <div class="form-group">
                                <p><label>{{trans('common.table.keywords')}}: </label>
                                    {{$article->keyword}}
                                </p>                        
                        </div>
                        
                        <div class="form-group">
                                <p><label>{{trans('common.table.create_by')}}: </label>
                                    {{$article->create_by}}
                                </p>                        
                        </div>
                        <div class="form-group">
                                <p><label>{{trans('common.table.create_at')}}: </label>
                                    {{$article->created_at}}
                                </p>                        
                        </div>
                        <div class="form-group">
                                <p><label>{{trans('common.table.category')}}: </label>                                
                                    @foreach($listCategories as $category)
                                    <a ><span class="label label-default">{{$category->name}}</span></a>
                                    @endforeach
                                </p>                        
                        </div>
                        
                        <div class="form-group">
                                <p><label>{{trans('common.table.status')}}: </label>
                                    {{$article->status}}
                                </p>                        
                        </div>
                    </div>
                </div> 
                    
            </div>
             </div>    
    
</div><!-- end row 2-->                
        
@stop