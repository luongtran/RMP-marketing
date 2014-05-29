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
<div class="content">
		<div class="layout">
			<div class="row">
                            {{$content->content}}
                        </div>
                         <div class="row-item col-1_2">
                           	<div class="b-carousel">
						<div class="carousel-content">
                                                        @foreach($getImages as $Im)
                                                        <img alt="" src="{{asset('asset/share/uploads/images/'.$Im->name)}}" class="carousel-item" width="400" height="400">					
                                                        @endforeach
						</div>
					<div class="carousel-control">
                                            <div class="carousel-prev"></div><div class="carousel-next"></div>
                                            <ul class="carousel-pagination"><li class=""></li><li class="active"></li><li></li></ul>
                                        </div>
                                  </div>
                         </div>
                            {{$content->created_at}}  
		</div>
</div>
@stop