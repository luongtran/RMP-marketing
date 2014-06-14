
<div class="content gray-content">
    <div style="padding-bottom: 8px;" class="layout">
      <div class="row">
         <?php   $Feature_content = DB::table('page_module')
                   ->leftjoin("pages","page_module.page_id","=","pages.id")
                   ->leftjoin("module","page_module.module_id","=","module.id")
                   ->leftjoin("module_data","module_data.module_id","=","module.id")
                   ->leftjoin("uploads","uploads.modData_id","=","module_data.id")
                   ->where("module_data.status","=","publish")                   
                   ->where("module.mod","=","mod_Feature")
                   ->where("module_data.lang_id","=",Session::get('current_locale'))
                   ->where("page_module.page_id","=",$pageinfo->id) 
                   ->orderBy("module_data.order","asc")
                   ->select(DB::raw("module_data.title,module_data.sumary,module_data.icon,module_data.link,uploads.name as imageName,uploads.path as path"))
                   ->get(); 
    foreach($Feature_content as $list):?>
        <div class="row-item col-1_3">
          <!-- Icon Box -->
          <div class="icon-box medium">
            <i class="<?php echo $list->icon;?>"></i>
            <h4><a class="dark-link" href="#"><?php echo $list->title;?></a></h4>
            <p>
               <?php echo $list->sumary;?>
            </p>
          </div>
          <!-- End Icon Box -->
        </div>
    <?php endforeach;?>
      </div>
    </div>
</div>