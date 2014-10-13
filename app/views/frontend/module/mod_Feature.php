<div class="row service-box margin-bottom-40">
    <?php
    $Feature_content = DB::table('page_module')
        ->leftjoin("pages", "page_module.page_id", "=", "pages.id")
        ->leftjoin("module", "page_module.module_id", "=", "module.id")
        ->leftjoin("module_data", "module_data.module_id", "=", "module.id")
        ->where("module_data.status", "=", "publish")
        ->where("module.mod", "=", "mod_Feature")
        ->where("module_data.lang_id", "=", Session::get('current_locale'))
        ->where("page_module.page_id", "=", $pageinfo->id)
        ->orderBy("module_data.id", "desc")
        ->take(3)
        ->select(DB::raw("module_data.title,module_data.sumary,module_data.icon,module_data.link"))
        ->get();
    ?>
    <?php foreach ($Feature_content as $list): ?>
        <div class="col-md-4 col-sm-4">
            <div class="service-box-heading">
                <em><i class="fa fa-location-arrow blue <?php echo $list->icon; ?>"></i></em>
                <span><?php echo $list->title; ?></span>
            </div>
            <p>
                <?php echo $list->sumary; ?>
            </p>
        </div>
    <?php endforeach; ?>
</div>
