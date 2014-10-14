<h3 class="lined margin-20">
    <?php
    $UserInterface_intro = DB::table('page_module')
        ->leftjoin("pages", "page_module.page_id", "=", "pages.id")
        ->leftjoin("module", "page_module.module_id", "=", "module.id")
        ->leftjoin("module_intro", "module_intro.module_id", "=", "module.id")
        ->where("module_intro.status", "=", "publish")
        ->where("module.mod", "=", "mod_UserInterface")
        ->where("module_intro.lang_id", "=", Session::get('current_locale'))
        ->where("page_module.page_id", "=", $pageinfo->id)
        ->select(DB::raw("module_intro.title,module_intro.sumary,module_intro.content"))
        ->first();
    if ($UserInterface_intro)
        echo $UserInterface_intro->title;
    ?>
</h3>
<div class="row">
    <?php
    $UserInterface_content = DB::table('page_module')
        ->leftjoin("pages", "page_module.page_id", "=", "pages.id")
        ->leftjoin("module", "page_module.module_id", "=", "module.id")
        ->leftjoin("module_data", "module_data.module_id", "=", "module.id")
        ->leftjoin("uploads", "uploads.modData_id", "=", "module_data.id")
        ->where("module_data.status", "=", "publish")
        ->where("module.mod", "=", "mod_UserInterface")
        ->where("module_data.lang_id", "=", Session::get('current_locale'))
        ->where("page_module.page_id", "=", $pageinfo->id)
        ->orderBy("module_data.order", "asc")
        ->select(DB::raw("module_data.title,module_data.sumary,module_data.icon,module_data.link,uploads.name as imageName,uploads.path as path"))
        ->get();
    foreach ($UserInterface_content as $listContent):
        ?>
        <div class="col-md-3 col-sm-6 col-xs-6">
            <h4>
                <?php echo $listContent->title; ?> <span class="member-position"> Developer </span>
            </h4>
            <div class="member-photo">
                <img alt="" src="<?php echo asset($listContent->path . '/' . $listContent->imageName); ?> ">
            </div>
            <p>Inventore veritatis et quasi architectos beatae vitae dicta sunt explicabo. Nemo enims sadips ipsums un</p>
        </div>
    <?php endforeach; ?>			
</div>
