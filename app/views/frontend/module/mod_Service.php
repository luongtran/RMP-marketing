
			<div class="row">
                <?php   $Service_content = DB::table('page_module')
                   ->leftjoin("pages","page_module.page_id","=","pages.id")
                   ->leftjoin("module","page_module.module_id","=","module.id")
                   ->leftjoin("module_data","module_data.module_id","=","module.id")
                   ->leftjoin("uploads","uploads.modData_id","=","module_data.id")
                   ->where("module_data.status","=","publish")                   
                   ->where("module.mod","=","mod_Service")
                   ->where("module_data.lang_id","=",Session::get('current_locale'))
                   ->where("page_module.page_id","=",$pageinfo->id) 
                   ->orderBy("module_data.order","asc")
                   ->select(DB::raw("module_data.title,module_data.content,module_data.sumary,module_data.icon,module_data.link,uploads.name as imageName,uploads.path as path"))
                   ->get(); 
    		foreach($Service_content as $listRS):?>
				<div class="row-item col-1_4">
					<!-- Icon Box -->
                                        
					<div class="b-service">
						<a href="#"><i class="<?php echo $listRS->icon;?> m-colored m-square"></i></a>
						<h3 class="centered"><a class="dark-link" href="#"><?php echo $listRS->title;?></a></h3>
						<p class="centered">
							 <?php echo $listRS->sumary;?>
						</p>
					</div>                                       
					<!-- End Icon Box -->
				</div>
                                <?php endforeach;?>
			</div>

			<div style="height: 30px;" class="gap"></div>
			
			<div class="row">
				<div class="row-item col-1">
					<h3 class="lined margin-30">Service Details: </h3>
					<!-- Vertical Tabs -->
					<div class="b-tabs m-nav-left margin-40">
						<!-- Tabs Navigation -->
						<ul class="tabs-nav">
                                                    <?php $i = 1; foreach($Service_content as $linkSv):?>
							<li class="<?php if($i==1) echo 'active';?>"><span><i class="<?php echo $linkSv->icon;?>"></i><?php echo $linkSv->title;?></span></li>
                                                    <?php  $i++; endforeach;?>    
						</ul>
						<!-- End Tabs Navigation -->
						<!-- Tabs Content -->
						<div class="tabs-content">
                                                     <?php $i = 1; foreach($Service_content as $linkSv):?>
							<div class="tab <?php if($i==1)echo 'active';?>">
                                                            <?php echo $linkSv->content;?>
							</div>
                                                    <?php  $i++; endforeach;?>    
							
					
						</div>
						<!-- End Tabs Content -->
					</div>
					<!-- End Vertical Tabs -->
				</div>
			
			</div>	
		</div>

