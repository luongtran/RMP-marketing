@section('header')
@stop
@section('title_bar')
<div class="b-titlebar">
    <div class="layout">
      <!-- Bread Crumbs -->
      <ul class="crumbs">
        <li>You are here:</li>
        <li><a href="{{Request::root()}}">Home</a></li>
        <li><a href="{{Request::root()}}/blog">Blog</a></li>
        <li><a href="{{Request::root()}}/blog">Search</a></li>
      </ul>
      <!-- Title -->
      <h1> 
           Blog
      </h1>
    </div>
  </div>
@stop
@section('content')					
					<div class="post">
						<!-- Post Title & Meta -->
						@foreach($listFind as $post)
						<h3><a href="{{Request::root()}}/blog/detail/{{$post->id}}">{{$post->title}}</a></h3>
						<p>{{$post->sumary}}</p>
						<hr class="dashed">
						@endforeach
					
						<!-- Comment Form -->
						<div class="b-comment-form">
							<div class="title">
								<h3 class="lined">Leave a reply</h3>
							</div>
							<form class="b-form comment-form" action="/">
								<div class="input-wrap">
									<i class="icon-user"></i>
									<input type="text" placeholder="Name (required)">
								</div>

								<div class="input-wrap">
									<i class="icon-envelope"></i>
									<input type="text" placeholder="E-mail (required)">
								</div>

								<div class="input-wrap">
									<i class="icon-link"></i>
									<input type="text" placeholder="Web-Site">
								</div>

								<div class="textarea-wrap">
									<i class="icon-pencil"></i>
									<textarea name="" placeholder="Comment"></textarea>
								</div>

								<input class="btn-submit btn colored" type="submit" value="Submit Comment">
								<a href="#" class="link cancel-reply2">Cancel Reply</a>
							</form>
						</div>
						<!-- End Comment Form -->
					</div>
				
@stop