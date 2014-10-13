<!-- BEGIN CLIENTS -->
<div class="row margin-bottom-40 our-clients">
    <div class="col-md-3">
        <h2><a href="#">Our Clients</a></h2>
        <p>Lorem dipsum folor margade sitede lametep eiusmod psumquis dolore.</p>
    </div>
    <div class="col-md-9">
        <?php
        $happClients_content = DB::table('page_module')
            ->leftjoin("pages", "page_module.page_id", "=", "pages.id")
            ->leftjoin("module", "page_module.module_id", "=", "module.id")
            ->leftjoin("module_data", "module_data.module_id", "=", "module.id")
            ->leftjoin("uploads", "uploads.modData_id", "=", "module_data.id")
            ->where("module_data.status", "=", "publish")
            ->where("module.mod", "=", "mod_HappyClient")
            ->where("module_data.lang_id", "=", Session::get('current_locale'))
            ->where("page_module.page_id", "=", $pageinfo->id)
            ->orderBy("module_data.order", "asc")
            ->select(DB::raw("module_data.title,module_data.sumary,module_data.icon,module_data.link,uploads.name as imageName,uploads.path as path"))
            ->get();
        ?>
        <div class="owl-carousel owl-carousel<?php echo count($happClients_content) ?>">
            <?php foreach ($happClients_content as $listContent): ?>
                <div class="client-item">
                    <a href="#">
                        <img src="<?php echo asset($listContent->path . '/' . $listContent->imageName); ?>" class="img-responsive" alt="<?php echo $listContent->title; ?>">
                        <img src="<?php echo asset($listContent->path . '/' . $listContent->imageName); ?>" class="color-img img-responsive" alt="<?php echo $listContent->title; ?>">
                    </a>
                </div>
            <?php endforeach; ?>
        </div>
    </div>          
</div>
<!-- END CLIENTS -->
<div class="row quote-v1 margin-bottom-30">
    <div class="col-md-9">
        <span>Metronic - The Most Complete &amp; Popular Admin &amp; Frontend Theme</span>
    </div>
    <div class="col-md-3 text-right">
        <a class="btn-transparent" href="#" target="_blank"><i class="fa fa-rocket margin-right-10"></i>Preview Admin</a>
    </div>
</div>