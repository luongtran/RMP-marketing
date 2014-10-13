<!-- BEGIN SLIDER -->
<div class="page-slider margin-bottom-40">
    <div class="fullwidthbanner-container revolution-slider">
        <div class="fullwidthabnner">
            <ul id="revolutionul">
                <?php
                $slider = DB::table('page_module')
                    ->join("pages", "page_module.page_id", "=", "pages.id")
                    ->join("module", "page_module.module_id", "=", "module.id")
                    ->join("module_data", "module_data.module_id", "=", "module.id")
                    ->join("uploads", "uploads.modData_id", "=", "module_data.id")
                    ->where("module_data.status", "=", "publish")
                    ->where("module_data.lang_id", "=", Session::get('current_locale'))
                    ->where("module.mod", "=", "mod_Slider")
                    ->where("page_module.page_id", "=", $pageinfo->id)
                    ->orderBy("module_data.order", "asc")
                    ->select(DB::raw("module_data.id,module_data.title,module_data.sumary,module_data.icon,module_data.link,uploads.name as imageName,uploads.path as path"))
                    ->get();
                foreach ($slider as $sl):
                    ?>
                    <li data-transition="fade" data-slotamount="8" data-masterspeed="700" data-delay="9400">
                        <img src="<?php echo asset($sl->path . '/' . $sl->imageName); ?>" alt="">
                        <div class="caption lft slide_title_white slide_item_left"
                             data-x="30"
                             data-y="175"
                             data-speed="400"
                             data-start="1500"
                             data-easing="easeOutExpo">
                                 <?php echo $sl->title; ?>
                        </div>
                        <div class="caption lft slide_desc slide_item_left"
                             data-x="30"
                             data-y="240"
                             data-speed="400"
                             data-start="2500"
                             data-easing="easeOutExpo">
                                 <?php echo $sl->sumary; ?>
                        </div>
                        <a class="caption lft btn dark slide_btn slide_item_left" href="<?php echo Request::root() . '/page/' . $sl->id; ?>"
                           data-x="187"
                           data-y="290"
                           data-speed="400"
                           data-start="3000"
                           data-easing="easeOutExpo">
                            Read more
                        </a>                        
                    </li> 
                <?php endforeach; ?>                
            </ul>
            <div class="tp-bannertimer tp-bottom"></div>
        </div>
    </div>
</div>
<!-- END SLIDER -->
<!--end module slider -->