<div class="row">

    <?php
    $about_intro = DB::table('page_module')
        ->leftjoin("pages", "page_module.page_id", "=", "pages.id")
        ->leftjoin("module", "page_module.module_id", "=", "module.id")
        ->leftjoin("module_data", "module_data.module_id", "=", "module.id")
        ->where("module_data.status", "=", "publish")
        ->where("module.mod", "=", "mod_About")
        ->where("module_data.lang_id", "=", Session::get('current_locale'))
        ->where("page_module.page_id", "=", $pageinfo->id)
        ->select(DB::raw("module_data.id,module_data.title,module_data.sumary,module_data.content"))
        ->first();
    $listImg = Uploads::where("modData_id", "=", $about_intro->id)->get();
    ?>
    <?php if (count($listImg) != 0) : ?>
        <div id="about-slide" class="carousel slide" data-ride="carousel">
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <?php foreach ($listImg as $index => $Im): ?>
                    <div class="item <?php echo $index == 0 ? 'active' : '' ?>">
                        <img src="<?php echo asset($Im->path . '/' . $Im->name); ?>" alt="...">
                    </div>
                <?php endforeach; ?>
            </div>
            <!-- Controls -->
            <a class="left carousel-control" href="#about-slide" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#about-slide" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
    <?php endif; ?>
    <div class="col-md-7">
        <h3><?php echo $about_intro->title; ?></h3>

        <!-- begin cut -->
        <?php echo $about_intro->content; ?>		
    </div>
    <div class="col-md-5">
        <h3 class="lined margin-20">Some ROI benefits</h3>
        <p><strong>Increase Data Accuracy to upto 90%</strong></p>
        <div class="progress">
            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
            </div>
        </div>
        <p><strong>WordPress 65%</strong></p>
        <div class="progress">
            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width: 65%">
            </div>
        </div>
        <p><strong>Graphic Design 78%</strong></p>
        <div class="progress">
            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" style="width: 78%">
            </div>
        </div>
        <p><strong>HTML/CSS 86%</strong></p>
        <div class="progress">
            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="86" aria-valuemin="0" aria-valuemax="100" style="width: 86%">
            </div>
        </div>
    </div> 
</div>