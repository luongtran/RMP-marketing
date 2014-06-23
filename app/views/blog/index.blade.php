@section('header')
@stop
@section('title_bar')
<div class="b-titlebar">
    <div class="layout">
      <!-- Bread Crumbs -->
      <ul class="crumbs">
        <li>You are here:</li>
        <li><a href="{{Request::root()}}">Home</a></li>
        <li>Blog</li>
      </ul>
      <!-- Title -->
      <h1> 
           Blog
      </h1>
    </div>
  </div>
@stop
@section('content')
					<!-- Post 1 -->
					@foreach($listPosts as $list)
					<div class="post-preview preview-medium">
						<!-- Post Title & Meta -->
						<h2><a href="{{Request::root()}}" class="dark-link">{{$list->title}}</a></h2>
						<div class="post-meta">
							 Posted by <span class="meta-author"><a href="#">{{$list->username}}</a></span>
							<span class="meta-date">{{$list->created_at}}</span>
							<!-- <span class="meta-tags"><a href="#">Web Design.</a></span> -->
							<span class="meta-comment"><a href="#">4 comments</a></span>
						</div>
						<!-- End Post Title & Meta -->
						<!-- Post Image -->
						<div class="post-image-wrap">
							<a href="{{Request::root()}}\blog\detail\{{$list->id}}" class="post-image">
								<img src="{{asset($list->pathImage.'/'.$list->nameImage)}}" alt="" with="100" height="150">
								<div class="link-overlay icon-search"></div>
							</a>
						</div>					
						<!-- End Post Image -->
						<div>
							<p>
								 Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit...
							</p>
							<a class="btn colored" href="{{Request::root()}}\blog\detail\{{$list->id}}">More<i class="icon-chevron-sign-right" style="margin: 0 0 0 7px;"></i></a>
						</div>
					</div>
					<!-- End Post 1 -->
					@endforeach
					<!-- Pagination -->
						<div class="clear">
						<!-- <a href="#" class="active">1</a>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a> --> 
						  <?php echo $listPosts->links(); ?>  					
						  </div>
					 
					<!-- End Pagination -->
		
				

	<!-- END CONTENT 
	============================================= -->
@stop