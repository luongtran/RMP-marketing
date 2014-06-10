	<div class="layout">	
	<div class="row m-block port b-works">		
				    <?php   $Tutorial_content = DB::table('page_module')
                   ->leftjoin("pages","page_module.page_id","=","pages.id")
                   ->leftjoin("module","page_module.module_id","=","module.id")
                   ->leftjoin("module_data","module_data.module_id","=","module.id")                   
                   ->where("module_data.status","=","publish")                   
                   ->where("module.mod","=","mod_Tutorial")
                   ->where("module_data.lang_id","=",Session::get('current_locale'))
                   ->where("page_module.page_id","=",$pageinfo->id) 
                   ->orderBy("module_data.order","asc")
                   ->select(DB::raw("module_data.title,module_data.content,module_data.sumary,module_data.icon"))
                   ->get(); 
    foreach($Tutorial_content as $list):?>
    			
				<div class="row-item col-1_2 identity photography tehnology">
					<div class="work">
						<a href="#" class="work-image">
							<?php echo $list->content;?>
						</a>
						<a href="#" class="work-name"><h4 class="lined"><?php echo $list->title;?></h4></a>
						<div class="tags">
							Photography, Tehnology
						</div>
					</div>
				</div>	
	<?php endforeach;?>			
			<!--end tutorial -->	
	</div>			
	</div>			