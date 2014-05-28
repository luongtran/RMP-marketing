@section('content')
<div class="row"
     <div class="col-lg-12">
            <ol class="breadcrumb">
             <li><a href=""><i class="fa fa-dashboard"></i> Dashboard</a></li>
              <li class="active"><a href="{{Request::root()}}/backend/article"><i class="fa fa-desktop"></i> Article</a></li>
              <li class="active"><i class="fa fa-desktop"></i>View</li>
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
                                <p><label>Permalink: </label>
                                    {{$article->permalink}}
                                </p>                        
                        </div>
                        
                        <div class="form-group">
                                <p><label>Content: </label>
                                    {{$article->content}}
                                </p>                        
                        </div>
                        
                        <div class="form-group">
                                <p><label>Description: </label>
                                    {{$article->description}}
                                </p>                        
                        </div>
                        
                        <div class="form-group">
                                <p><label>Images: </label>
                                    @foreach($getImages as $lImage)
                                    <img src="{{asset('asset/share/uploads/images/'.$lImage->name)}}" alt="{{$lImage->name}}" width="50" height="50" />
                                    @endforeach    
                                </p>                        
                        </div>
                        
                        
                        <div class="form-group">
                                <p><label>Keywords: </label>
                                    {{$article->keyword}}
                                </p>                        
                        </div>
                        
                        <div class="form-group">
                                <p><label>Create by: </label>
                                    {{$article->create_by}}
                                </p>                        
                        </div>
                        <div class="form-group">
                                <p><label>Create at: </label>
                                    {{$article->created_at}}
                                </p>                        
                        </div>
                        <div class="form-group">
                                <p><label>Category: </label>                                
                                    @foreach($listCategories as $category)
                                    <a ><span class="label label-default">{{$category->name}}</span></a>
                                    @endforeach
                                </p>                        
                        </div>
                        
                        <div class="form-group">
                                <p><label>Status: </label>
                                    {{$article->status}}
                                </p>                        
                        </div>
                    </div>
                </div> 
                    
            </div>
             </div>    
    
</div><!-- end row 2-->                
        
@stop