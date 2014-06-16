@section('style')

@stop
@section('title_bar')
<div class="b-titlebar">
    <div class="layout">
      <!-- Bread Crumbs -->
      <ul class="crumbs">
        <li>You are here:</li>
        <li><a href="{{Request::root()}}">Home</a></li>
        <li>Page</li>
      </ul>
      <!-- Title -->
      <h1> {{trans('titlepage.title.msg')}} </h1>
    </div>
  </div>
@stop
@section('content')
<div class="content">
		<div class="layout">
        <div class="row">
            <div class="row-item col-1_2"  >
            <h3>   {{Session::get('msg_flash')}}      </h3>
            </div>
        </div>
		</div>
</div>
@stop