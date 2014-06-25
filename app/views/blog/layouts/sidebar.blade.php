<div class="row-item col-1_4 sidebar">
					<!-- Search Widget -->
					<div class="b-blog-search">
						<form class="b-form" action="{{Request::root()}}/blog/search">
							<div class="input-wrap">
								<i class="icon-search"></i>
								<input type="text" name="keyfind" placeholder="Search..">
							</div>
						</form>
					</div>
					<!-- End Search Widget -->
					<!-- Categories List -->
					<h3>Categories</h3>
					<ul class="b-list b-categories">
						<?php 
							$Categories = DB::table("blog_post_category")
							->join('blog_categories','blog_categories.id','=','blog_post_category.category_id')
							->join('blog_posts','blog_posts.id','=','blog_post_category.post_id')
							->groupBy('blog_categories.id')
							->select(DB::raw('blog_categories.id,count(blog_categories.id)as count,blog_categories.name'))
							->get();							
						?>
						@foreach($Categories as $category)
						<li><a href="{{Request::root()}}/blog/category/{{$category->id}}">{{$category->name}}<b class="count">({{$category->count}})</b></a></li>
						@endforeach
					</ul>
					<!-- End Categories List -->
					<!-- Recent Posts -->
					<h3>Recent Posts</h3>
					<ul class="b-list recent-post">
						<?php $recent = BlogPosts::where("status","=","publish")->orderBy("id","desc")->get();?>
						@foreach($recent as $rc)
						<li><a href="{{Request::root()}}/blog/detail/{{$rc->permalink}}">{{$rc->title}}</a></li>
						@endforeach
					</ul>
					<!-- End Recent Posts -->
					<!-- Latest Projects -->
					<h3 style="margin-bottom: 20px;">Latest Projects</h3>
					<div class="latest-project">
						<div class="latest-project-item">
							<a href="#"><img src="img/port/rp-1.jpg" alt=""></a>
						</div>
						<div class="latest-project-item">
							<a href="#"><img src="img/port/rp-2.jpg" alt=""></a>
						</div>
						<div class="latest-project-item">
							<a href="#"><img src="img/port/rp-3.jpg" alt=""></a>
						</div>
						<div class="latest-project-item">
							<a href="#"><img src="img/port/rp-4.jpg" alt=""></a>
						</div>
						<div class="latest-project-item">
							<a href="#"><img src="img/port/rp-5.jpg" alt=""></a>
						</div>
						<div class="latest-project-item">
							<a href="#"><img src="img/port/rp-6.jpg" alt=""></a>
						</div>
					</div>
					<!-- End Latest Project -->
					<!-- Twitter Widget -->
					<h3>Twitter Widget</h3>
					<div class="b-twitter">
						<ul>
							<li>
								<span>Et harum quidem rerum facilis est et expedita distinctio <a href="#" class="link">http://twitter.com</a></span>
								<span class="twit-date">Jan 7, 2013</span>
							</li>
							<li>
								<span>Nam libero tempore, cum soluta nobis est eligendi :) <a href="#" class="link">http://twitter.com</a></span>
								<span class="twit-date">Jan 7, 2013</span>
							</li>
						</ul>
					</div>
					<!-- End Twitter Widget -->
					<!-- Tag Cloud -->
					<h3 style="margin-bottom: 20px;">Tag Cloud</h3>
					<div class="b-tag-cloud">
						<a href="#">beach</a>
						<a href="#">bar</a>
						<a href="#">blog</a>
						<a href="#">business</a>
						<a href="#">coctail</a>
					</div>
					<!-- End Tag Cloud -->
				</div>