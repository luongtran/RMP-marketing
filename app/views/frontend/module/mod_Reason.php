<!-- module reason -->
<h3 class="lined margin-20">
     <?php   $reason_intro = DB::table('page_module')
                   ->leftjoin("pages","page_module.page_id","=","pages.id")
                   ->leftjoin("module","page_module.module_id","=","module.id")
                   ->leftjoin("module_intro","module_intro.module_id","=","module.id")                 
                   ->where("module_intro.status","=","publish")                   
                   ->where("module.mod","=","mod_Reason")
                   ->where("module_intro.lang_id","=",Session::get('current_locale'))
                   ->where("page_module.page_id","=",$pageinfo->id) 
                   ->select(DB::raw("module_intro.title,module_intro.sumary,module_intro.content"))
                   ->first(); 
     if($reason_intro)              
     echo $reason_intro->title;
     ?>
</h3>
<div style="margin-bottom: 20px;">
 <?php   $reason_content = DB::table('page_module')
                   ->leftjoin("pages","page_module.page_id","=","pages.id")
                   ->leftjoin("module","page_module.module_id","=","module.id")
                   ->leftjoin("module_data","module_data.module_id","=","module.id")
                   ->leftjoin("uploads","uploads.modData_id","=","module_data.id")
                   ->where("module_data.status","=","publish")                   
                   ->where("module.mod","=","mod_Reason")
                   ->where("module_data.lang_id","=",Session::get('current_locale'))
                   ->where("page_module.page_id","=",$pageinfo->id) 
                   ->orderBy("module_data.order","asc")
                   ->select(DB::raw("module_data.title,module_data.sumary,module_data.icon,module_data.link,uploads.name as imageName,uploads.path as path"))
                   ->get(); 
    foreach($reason_content as $listRS):?>
   <div class="thumb col-1_4 security flip">
    <div class="thumb-wrapper">
      <img alt="" src="<?php echo asset($listRS->path.'/'.$listRS->imageName);?>">
      <div class="thumb-detail">
       <div class="padding_15">
          <h3><?php echo $listRS->title;?></h3>
          <p><?php echo $listRS->sumary;?></p>
        </div>    
      </div>
    </div>
  </div>
  <?php endforeach ;?>
 
<br clear="all">
</div>  
<!--end module reason -->