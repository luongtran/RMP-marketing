<!-- module slider -->

<div class="fullwidthbanner-container top-shadow">
    <div class="fullwidthbanner">
      <ul>
          <?php 
            $slider = DB::table('slider')               
            ->leftjoin('uploads', 'uploads.id', '=', 'slider.image')            
            ->where('slider.status','=','publish')
            ->select(DB::raw('title,caption,link,uploads.name'))
            ->get();
            
          foreach($slider as $sl):?>
        <!-- Slide -->
				<li data-transition="fade" data-slotamount="1" data-masterspeed="1000">
				<!-- Main Image -->
				<img src="<?php echo asset('asset/share/uploads/images/'.$sl->name);?>" alt="">
				<!-- End Main Image -->
				<!-- Captions -->
				<div class="tp-caption m-4em m-bold m-letter-spacing-1 m-uppercase m-text-white fade" data-x="40" data-y="110" data-speed="300" data-start="800" data-easing="easeOutQuint">
					<span><?php echo $sl->title;?></span>
				</div>
				<div class="tp-caption m-2-2em m-light m-text-white lfl" data-x="40" data-y="217" data-speed="400" data-start="1400" data-easing="easeOutExpo">
					<span><?php echo $sl->caption;?></span>
				</div>
				<div class="tp-caption lfl" data-x="40" data-y="265" data-speed="400" data-start="1600" data-easing="easeOutExpo">
					<a href="<?php echo Request::root().'/'.$sl->link;?>" class="btn btn-uppercase colored">Readmore<i class="icon-caret-right" style="margin: 0 0 0 7px;"></i></a>
				</div>
				<!-- End captions -->
				</li>
	 <!-- End Slide  -->
         <?php endforeach;?>
      </ul>
      
  </div>
 </div>
<!--end module slider -->