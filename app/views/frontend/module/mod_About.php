<?php              
        $content = Articles::where('permalink','=',$pageinfo->link)->first(); 
        if($content)
        {
           $getImages = Uploads::where('article_id','=',$content->id)->get();
        ?>
<div class="layout">
<div class="row">

				<div class="row-item col-1_2">
					<h3 class="lined margin-20"><?php echo $content->title;?></h3>
					
					<div class="b-carousel">
						<div class="carousel-content">
							<?php foreach($getImages as $Im):?>
                                                        <img alt="" src="<?php echo asset('asset/share/uploads/images/'.$Im->name);?>" class="carousel-item" width="400" height="400">					
                                                        <?php endforeach;?>
						</div>
					<div class="carousel-control"><div class="carousel-prev"></div><div class="carousel-next"></div><ul class="carousel-pagination"><li class=""></li><li class=""></li><li class="active"></li></ul></div></div>

					
							
					<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>

					<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client's don't have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>


					<div style="height: 30px;" class="gap">
					</div>
				</div>

				<div class="row-item col-1_2">
					<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>
					<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>
					<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>
					<h3 class="lined margin-20">Some ROI benefits</h3>
					<div class="element-wrap">					
						<div data-value="90" data-capacity="100" class="b-progress-bar">
							<div class="progress-label">Increase Data Accuracy to upto 90%</div>
							<div class="progress-scale">
								<div class="progress-line" style="width: 90%;"></div>
							</div>
						</div>
						<div data-value="65" data-capacity="100" class="b-progress-bar">
							<div class="progress-label">WordPress 65%</div>
							<div class="progress-scale">
								<div class="progress-line m-4" style="width: 65%;"></div>
							</div>
						</div>
						<div data-value="78" data-capacity="100" class="b-progress-bar">
							<div class="progress-label">Graphic Design 78%</div>
							<div class="progress-scale">
								<div class="progress-line m-3" style="width: 78%;"></div>
							</div>
						</div>
						<div data-value="86" data-capacity="100" class="b-progress-bar">
							<div class="progress-label">HTML/CSS 86%</div>
							<div class="progress-scale">
								<div class="progress-line m-2" style="width: 86%;"></div>
							</div>
						</div>
						
						
					</div>
					<div style="height: 30px;" class="gap">
					</div>
				</div>
			</div>
    </div>
<?php }  ?>