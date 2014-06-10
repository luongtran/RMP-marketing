@section('header')
@stop
@section('title_bar')
<div class="b-titlebar">
    <div class="layout">
      <!-- Bread Crumbs -->
      <ul class="crumbs">
        <li>You are here:</li>
        <li><a href="http://completermp.com/marketing">Home</a></li>
        <li>Page</li>
      </ul>
      <!-- Title -->
      <h1> {{$content->title}} </h1>
    </div>
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