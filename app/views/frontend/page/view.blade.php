@section('header')
@stop
@section('title_bar')
<div class="container">
    <ul class="breadcrumb">
        <li><a href="<?php echo Request::root(); ?>">Home</a></li>
        <li class="active">{{$content->title}}</li>
    </ul>
</div> 
@stop
@section('content')
<p>
    <b><i>{{$content->sumary}}</i></b>
</p>
<p>
    {{$content->content}}
</p>       

<div>
    @foreach($image as $Im)
    <img alt="" src="{{asset('asset/share/uploads/images/'.$Im->name)}}" class="carousel-item" width="400" height="400">					
    @endforeach
</div>  				

{{$content->created_at}}  

@stop