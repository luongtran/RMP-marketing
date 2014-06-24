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
        <li><a href="{{Request::root()}}/blog">Detail</a></li>
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
						<h2>{{$viewPost->title}}</h2>
						<div class="post-meta">
							Posted by <span class="meta-author"><a href="#">{{$viewPost->username}}</a></span>
							<span class="meta-date">on {{$viewPost->created_at}}</span>
							<span class="meta-tags">
								 @foreach($categories as $category)
                                    <a href="#">{{$category->name}}, </a>
                                 @endforeach								
							</span>							
						</div>
						<!-- End Post Title & Meta -->
						<!-- Image -->
						<div class="post-image-wrap">
							 @if($viewPost->nameImage)
							<a href="" rel="prettyPhoto" class="post-image">
								<img src="{{asset($viewPost->pathImage.'/'.$viewPost->nameImage)}}" width="100%" height="100%" alt="">
								<div class="link-overlay icon-search"></div>
							</a>                              
                            @endif
						</div>
						<!-- End Image -->
						<!-- Post Content -->
						<div class="post-content">

						<p>{{$viewPost->content}}</p>	
							<!-- Tags -->
							<!-- <div class="b-tag-cloud">
								<span>Tags: </span>
								<a href="#">beach</a>
								<a href="#">bar</a>
								<a href="#">blog</a>
							</div> -->
							<!-- End Tags -->
						</div>
						<!-- End Post Content -->
						<!-- About the Author -->
						<!-- <div class="b-user-info">
							<div class="user-info-ava">
								<img src="img/team/team-5.jpg" alt="">
							</div>
							<div class="user-info-bio">
								<div class="user-info-name"> About the Author </div>
								<p>
									Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut
									laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
									ullamcorper suscipit lobortis nisl

									<a href="#" class="link">@jhon_doe_lorem</a>
								</p>
							</div> 
						</div>-->
						<!-- End About the Author -->
						<!-- Related Posts -->
						
					
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