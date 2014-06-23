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
					<div class="post">
						<!-- Post Title & Meta -->
						<h2>Laoreet Dolore Magna Aliquam Erat Volutpat</h2>
						<div class="post-meta">
							Posted by <span class="meta-author"><a href="#">Admin</a></span>
							<span class="meta-date">on Jan 12, 2013</span>
							<span class="meta-tags"><a href="#">Web Design.</a></span>
							<span class="meta-comment"><a href="#">4 comments</a></span>
						</div>
						<!-- End Post Title & Meta -->
						<!-- Image -->
						<div class="post-image-wrap">
							<a href="img/port/surfer-big.jpg" rel="prettyPhoto" class="post-image">
								<img src="img/blog/bl-3.jpg" alt="">
								<div class="link-overlay icon-search"></div>
							</a>
						</div>
						<!-- End Image -->
						<!-- Post Content -->
						<div class="post-content">
							<p>
								 Ut aenean pellentesque felis at turpis bibendum, duis eu consectetur sed tellus, blandit pulvinar dictum ac wisi libero a, nec sed ac elit. Fringilla penatibus orci est non mollit, suspendisse pulvinar egestas a donec, iaculis aenean, parturient velit elit ac viverra vestibulum, quis et nascetur rutrum nibh molestie fusce.
							</p>
							<!-- Blockquote -->
							<div class="blockquote">
								 Sapien pede libero. Maecenas lacus aliquet et nisl nunc, per sed sed maecenas.Lectus tincidunt pellentesque augue urna sit sed, arcu sed ante ac montes pellentesque consectetuer.
							</div>
							<!-- End Blockquote -->
							<p>
								 Fringilla penatibus orci est non mollit, suspendisse pulvinar egestas a donec. Vulputate mi dui suscipit, molestie vulputate libero fusce iaculis suscipit. Sapien pede libero. Maecenas lacus aliquet et nisl nunc, per sed sed maecenas.Lectus tincidunt pellentesque augue urna sit sed, arcu sed ante ac montes pellentesque consectetuer, neque magnis penatibus laoreet vehicula nulla orci, a malesuada justo laoreet ipsum, in ac fusce.
							</p>
							<!-- Success List -->
							<ul class="b-list iconok strong">
								<li><span>Sed ut perspiciatis unde omnis</span></li>
								<li><span>Accusantium doloremque</span></li>
								<li><span>Neque porro quisquam est</span></li>
							</ul>
							<!-- End Success List -->
							<p>
								 At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.
							</p>
							<!-- Gallery -->
							<div class="b-gallery">
								<div class="img-wrap">
									<a class="pretty-photo-item" rel="prettyPhoto[gallery]" href="img/port/spring-flowers-big.jpg">
										<img src="img/blog/2.jpg" alt="">
										<div class="link-overlay icon-search"></div>
									</a>
								</div>

								<div class="img-wrap">
									<a class="pretty-photo-item" rel="prettyPhoto[gallery]" href="img/port/smiling-big.jpg">
										<img src="img/blog/3.jpg" alt="">
										<div class="link-overlay icon-search"></div>
									</a>
								</div>

								<div class="img-wrap">
									<a class="pretty-photo-item" rel="prettyPhoto[gallery]" href="img/port/yacht-sailing-big.jpg">
										<img src="img/blog/4.jpg" alt="">
										<div class="link-overlay icon-search"></div>
									</a>
								</div>

								<div class="img-wrap">
									<a class="pretty-photo-item" rel="prettyPhoto[gallery]" href="img/port/music-night-club-big.jpg">
										<img src="img/blog/5.jpg" alt="">
										<div class="link-overlay icon-search"></div>
									</a>
								</div>

								<div class="img-wrap">
									<a class="pretty-photo-item" rel="prettyPhoto[gallery]" href="img/port/work-from-home-big.jpg">
										<img src="img/blog/6.jpg" alt="">
										<div class="link-overlay icon-search"></div>
									</a>
								</div>

								<div class="img-wrap">
									<a class="pretty-photo-item" rel="prettyPhoto[gallery]" href="img/port/surfer-big.jpg">
										<img src="img/blog/8.jpg" alt="">
										<div class="link-overlay icon-search"></div>
									</a>
								</div>
							</div>
							<!-- End Gallery -->
							<p>
								Fringilla penatibus orci est non mollit, suspendisse pulvinar egestas a donec. Vulputate mi dui suscipit, molestie vulputate libero fusce iaculis suscipit. Sapien pede libero. Maecenas lacus aliquet et nisl nunc, per sed sed maecenas.Lectus tincidunt pellentesque augue urna sit sed, arcu sed ante ac montes pellentesque consectetuer, neque magnis penatibus laoreet vehicula nulla orci, a malesuada justo laoreet ipsum, in ac fusce.
							</p>
							<!-- Tags -->
							<div class="b-tag-cloud">
								<span>Tags: </span>
								<a href="#">beach</a>
								<a href="#">bar</a>
								<a href="#">blog</a>
							</div>
							<!-- End Tags -->
						</div>
						<!-- End Post Content -->
						<!-- About the Author -->
						<div class="b-user-info">
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
						</div>
						<!-- End About the Author -->
						<!-- Related Posts -->
						<div class="title">
							<h3 class="lined related-post-head">Related Posts</h3>
						</div>

						<div class="row related-post">
							<!-- Related Post 1 -->
							<div class="row-item col-1_4">
								<div class="post-preview">
									<a href="blog-single-image.html" class="post-image">
										<img src="img/blog/bm-4.jpg" alt="">
										<div class="link-overlay icon-chevron-right"></div>
									</a>

									<h5><a href="blog-single-image.html" class="dark-link">Lobortis Nisl Ut Aliquip</a></h5>

									<div class="post-meta">
										<span class="meta-date">Jan 12, 2013</span>
										<span class="meta-comment"><a href="#">2 comments</a></span>
									</div>
								</div>
							</div>
							<!-- End Related Post 2 -->
							<!-- Related Post 2 -->
							<div class="row-item col-1_4">
								<div class="post-preview">
									<a href="blog-single-image.html" rel="prettyPhoto" class="post-image">
										<img src="img/blog/bm-2.jpg" alt="">
										<div class="link-overlay icon-chevron-right"></div>
									</a>
									<h5><a href="blog-single-image.html" class="dark-link">Illum Dolore Eu Feugiat</a></h5>
									<div class="post-meta">
										<span class="meta-date">Jan 12, 2013</span>
										<span class="meta-comment"><a href="#">1 comments</a></span>
									</div>
								</div>
							</div>
							<!-- End Related Post 2 -->
							<!-- Related Post 3 -->
							<div class="row-item col-1_4">
								<div class="post-preview">
									<a href="blog-single-image.html" rel="prettyPhoto" class="post-image">
										<img src="img/blog/bm-3.jpg" alt="">
										<div class="link-overlay icon-chevron-right"></div>
									</a>

									<h5><a href="blog-single-image.html" class="dark-link">Consectetuer Adipiscing Elit</a></h5>

									<div class="post-meta">
										<span class="meta-date">Jan 12, 2013</span>
										<span class="meta-comment"><a href="#">4 comments</a></span>
									</div>
								</div>
							</div>
							<!-- End Related Post 3 -->
						</div>
						<!-- End Related Posts -->
						<!-- Comments -->
						<div class="title">
							<h3 class="lined">Responses (4)</h3>
						</div>
						<div class="b-comments">
							<!-- Comment 1 -->
							<div class="comment">
								<!-- Comment 1 Avatar -->
								<div class="comment-ava">
									<img src="img/team/team-5.jpg" alt="">
								</div>
								<!-- End Comment 1 Avatar -->
								<div class="comment-content">
									<!-- Comment 1 Meta -->
									<div class="comment-meta">
										<div>
											<a href="#" class="comment-name">Admin</a>
										</div>
										<span class="comment-date">jan 7, 2013 at 3:56 pm</span>
										<span class="btn-reply"><b>reply</b></span>
									</div>
									<!-- End Comment 1 Meta -->
									<!-- Comment 1 Content -->
									<p>
										 At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.
									</p>
									<!-- End Comment 1 Content -->
								</div>
								<!-- End Comment 1 -->
								<!-- Comment 2 -->
								<div class="comment comment-reply">
									<!-- Comment 2 Avatar -->
									<div class="comment-ava">
										<img src="img/ava.jpg" alt="">
									</div>
									<!-- End Comment 2 Avatar -->
									<div class="comment-content">
										<!-- Comment 2 Meta -->
										<div class="comment-meta">
											<div>
												<a href="#" class="comment-name">Andrew</a>
											</div>
											<span class="comment-date">jan 7, 2013 at 3:56 pm</span>
											<span class="btn-reply"><b>reply</b></span>
										</div>
										<!-- End Comment 2 Meta -->
										<!-- Comment 2 Content -->
										<p>
											 Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.
										</p>
										<!-- End Comment 2 Content -->
									</div>
									<!-- End Comment 2 -->
									<!-- Comment 3 -->
									<div class="comment comment-reply">
										<!-- Comment 3 Avatar -->
										<div class="comment-ava">
											<img src="img/team/team-6.jpg" alt="">
										</div>
										<!-- End Comment 3 Avatar -->
										<div class="comment-content">
											<!-- Comment 3 Meta -->
											<div class="comment-meta">
												<div>
													<a href="#" class="comment-name">Jane</a>
												</div>
												<span class="comment-date">jan 7, 2013 at 3:56 pm</span>
												<span class="btn-reply"><b>reply</b></span>
											</div>
											<!-- End Comment 3 Meta -->
											<!-- Comment 3 Content -->
											<p>
												 Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias.
											</p>
											<!-- End Comment 3 Content -->
										</div>
									</div>
									<!-- End Comment 3 -->
								</div>
							</div>
							<!-- Comment 4 -->
							<div class="comment">
								<!-- Comment 4 Avatar -->
								<div class="comment-ava">
									<img src="img/ava.jpg" alt="">
								</div>
								<!-- End Comment 4 Avatar -->
								<div class="comment-content">
									<!-- Comment 4 Meta -->
									<div class="comment-meta">
										<div>
											<a href="#" class="comment-name">Lola</a>
										</div>
										<span class="comment-date">jan 7, 2013 at 3:56 pm</span>
										<span class="btn-reply"><b>reply</b></span>
									</div>
									<!-- End Comment 4 Meta -->
									<!-- Comment 4 Content -->
									<p>
										 Deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas.
									</p>
									<!-- End Comment 4 Content -->
								</div>
							</div>
							<!-- End Comment 4 -->
						</div>
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