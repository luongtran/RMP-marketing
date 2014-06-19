<!-- module slider -->
 <div class="fullwidthbanner-container top-shadow">
    <div class="fullwidthbanner">
      <ul>
        <?php            
           $slider = DB::table('page_module')
                   ->join("pages","page_module.page_id","=","pages.id")
                   ->join("module","page_module.module_id","=","module.id")
                   ->join("module_data","module_data.module_id","=","module.id")
                   ->join("uploads","uploads.modData_id","=","module_data.id")
                   ->where("module_data.status","=","publish")  
                   ->where("module.mod","=","mod_Slider")
                   ->where("page_module.page_id","=",$pageinfo->id) 
                   ->orderBy("module_data.order","asc")
                   ->select(DB::raw("module_data.id,module_data.title,module_data.sumary,module_data.icon,module_data.link,uploads.name as imageName,uploads.path as path"))
                   ->get();  
        foreach($slider as $sl):?>
        <!-- Slide 1 -->
        <li data-transition="fade" data-slotamount="1" data-masterspeed="1000">
        <!-- Main Image -->
        <img src="<?php echo asset($sl->path.'/'.$sl->imageName);?>" alt="">
        <!-- End Main Image -->
        <!-- Captions -->
        <div class="tp-caption m-4em m-bold m-letter-spacing-1 m-uppercase m-text-white fade" data-x="40" data-y="150" data-speed="1000" data-start="800" data-easing="easeOutQuint">
          <span><?php echo $sl->title;?></span>
        </div>
        <div class="tp-caption m-1-8em m-lowercase m-text-white fade" data-x="40" data-y="205" data-speed="1000" data-start="1200" data-easing="easeOutQuint">
          <span><?php echo $sl->sumary;?></span>
        </div>
        <div class="tp-caption fade" data-x="40" data-y="245" data-speed="1000" data-start="1600" data-easing="easeOutQuint">
          <a href="#" class="btn colored btn-uppercase">Read more<i class="icon-caret-right" style="margin: 0 0 0 7px;"></i></a>
        </div>
        </li>
        <!-- End captions -->
        <?php endforeach;?>

      </ul>
    </div>
  </div>

<!--end module slider -->