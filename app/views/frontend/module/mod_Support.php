<div class="content shortcodes">
		<div class="layout">
		
                        <p>
                        <?php  $IntroSupport = Modules::where('mod','=','mod_Support')->first(); 
                             if($IntroSupport)
                                 echo $IntroSupport->intro;
                        ?>
                        </p>

			<h3 class="lined margin-20">Available Support Packages.</h3>
			
			<div class="row m-tariff-row">
                            <?php  $package = Support::where('status','=','publish')->get(); 
                            foreach($package as $pk):?>
				<div class="row-item col-1_3">
					
					<div class="b-tariff m-popular">
						<div class="popular-title m-turquoise"><?php echo $pk->name;?></div>
						<div class="tariff-head">
							<div class="tariff-title"><?php echo $pk->package_type;?> Package</div>

							<div class="tariff-price">
								<span class="tariff-cy">$</span>
								<span class="tariff-cost"><?php echo $pk->cost;?></span>
								<span class="tariff-period">/mo</span>
							</div>

							<p class="tariff-description"><?php echo $pk->description;?></p>
						</div>
						<ul class="tariff-meta">
							<?php echo $pk->detail;?>
						</ul>

						<a href="<?php echo Request::root().'support-packages/select/'.$pk->id;?>" class="btn green tariff-btn">Start Now!</a>
					</div>

				</div>
                            <?php endforeach;?>
			</div>
			
			<div style="height: 30px;" class="gap">
			</div>

		</div>
	</div>