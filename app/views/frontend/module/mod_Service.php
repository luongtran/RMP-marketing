<?php 
$getService= Services::where('status','=','publish')->orderBy('order','asc')->get();
?>
			<div class="row">
                               <?php foreach($getService as $sv):?>
				<div class="row-item col-1_4">
					<!-- Icon Box -->
                                        
					<div class="b-service">
						<a href="#"><i class="<?php echo $sv->icon;?> m-colored m-square"></i></a>
						<h3 class="centered"><a class="dark-link" href="#"><?php echo $sv->title;?></a></h3>
						<p class="centered">
							 <?php echo $sv->sumary;?>
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
                                                    <?php $i = 1; foreach($getService as $linkSv):?>
							<li class="<?php if($i==1) echo 'active';?>"><span><i class="<?php echo $linkSv->icon;?>"></i><?php echo $linkSv->title;?></span></li>
                                                    <?php  $i++; endforeach;?>    
						</ul>
						<!-- End Tabs Navigation -->
						<!-- Tabs Content -->
						<div class="tabs-content">
                                                     <?php $i = 1; foreach($getService as $linkSv):?>
							<div class="tab <?php if($i==1)echo 'active';?>">
                                                            <?php echo $linkSv->text;?>
							</div>
                                                    <?php  $i++; endforeach;?>    
							
					
						</div>
						<!-- End Tabs Content -->
					</div>
					<!-- End Vertical Tabs -->
				</div>
			
			</div>	
		</div>

