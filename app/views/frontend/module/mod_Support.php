<div class="shortcodes">
		
                        <p>
                        <?php   $Support_intro = DB::table('page_module')
                   ->leftjoin("pages","page_module.page_id","=","pages.id")
                   ->leftjoin("module","page_module.module_id","=","module.id")
                   ->leftjoin("module_intro","module_intro.module_id","=","module.id")                 
                   ->where("module_intro.status","=","publish")                   
                   ->where("module.mod","=","mod_Support")
                   ->where("module_intro.lang_id","=",Session::get('current_locale'))
                   ->where("page_module.page_id","=",$pageinfo->id) 
                   ->select(DB::raw("module_intro.title,module_intro.sumary,module_intro.content"))
                   ->first(); 
				    if($Support_intro):                   
				     echo $Support_intro->sumary; ?>
                        </p>

			<h3 class="lined margin-20"><?php echo  $Support_intro->title; ?></h3>
			<?php endif;?>

			<div class="row m-tariff-row">
                 <?php   $Support_content = DB::table('page_module')
                   ->leftjoin("pages","page_module.page_id","=","pages.id")
                   ->leftjoin("module","page_module.module_id","=","module.id")
                   ->leftjoin("module_data","module_data.module_id","=","module.id")
                   ->leftjoin("uploads","uploads.modData_id","=","module_data.id")
                   ->where("module_data.status","=","publish")                   
                   ->where("module.mod","=","mod_Support")
                   ->where("module_data.lang_id","=",Session::get('current_locale'))
                   ->where("page_module.page_id","=",$pageinfo->id) 
                   ->orderBy("module_data.order","asc")
                   ->select(DB::raw("module_data.title,module_data.content,module_data.content,module_data.sumary,module_data.icon,module_data.link,uploads.name as imageName,uploads.path as path"))
                   ->get(); 

    		foreach($Support_content as $listContent):
			echo $listContent->content;
            endforeach;?>
			</div>
			
			<div style="height: 30px;" class="gap">
			</div>

	
	</div>