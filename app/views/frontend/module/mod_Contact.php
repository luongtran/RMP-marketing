
<div class="content shortcodes">
		<div class="layout">
			<div class="row">
				<div class="row-item col-3_4">
					<div class="title">
						<h3 class="lined">Contact Us</h3>
					</div>
					<p>
						We would be glad to have feedback from you. Drop us a line, whether it is a comment, a question, a work proposition or just a hello. You can use either the form below or the contact details on the right.
					</p>

					<div style="height: 15px;" class="gap"></div>

					<div id="contact">
						
						<div class="form-message"></div>
						
						<form style="margin-bottom: 10px;" action="contact.php" class="b-form b-contact-form">
							<div class="input-wrap">
								<i class="icon-user"></i>
								<input type="text" placeholder="Name (required)" class="field-name">
							</div>
							<div class="input-wrap">
								<i class="icon-envelope"></i>
								<input type="text" placeholder="Email (required)" class="field-email">
							</div>
							<div class="input-wrap">
								<i class="icon-pencil"></i>
								<input type="text" placeholder="Subject" class="field-subject">
							</div>
							<div class="textarea-wrap">
								<i class="icon-pencil"></i>
								<textarea placeholder="Message" class="field-comments"></textarea>
							</div>
							<input type="submit" value="Submit Comment" class="btn-submit btn colored">
						</form>
						<div style="height: 20px;" class="gap"></div>
					</div>
				</div>

				<div class="row-item col-1_4">
					<div class="title">
						<h3 class="lined">Contact Info</h3>
					</div>
					<ul class="b-list b-contact">
						<li class="contact-address"><i class="icon-map-marker"></i><span><strong>Address:</strong><?php echo CommonHelper::getSetting('address');?></span></li>
						<li class="contact-phone"><i class="icon-phone"></i><span><strong>Phone:</strong><?php echo CommonHelper::getSetting('phone');?></span></li>
						<li class="contact-mail"><i class="icon-envelope"></i><strong>E-mail:</strong> <a href="#"><?php echo CommonHelper::getSetting('email_contact');?></a></li>
                                                <li class="contact-address"><i class="icon-time"></i><span><strong>Business Hours:</strong><?php echo CommonHelper::getSetting('business_hours');?></span></li>
					</ul>

					<div style="height: 20px;" class="gap"></div>

					<div class="title">
						<h3 class="lined">Follow Us</h3>
					</div>

					<ul class="b-social m-varicolored">
						<li><a href="#" class="fb"><i class="icon-facebook"></i></a></li>
						<li><a href="#" class="tw"><i class="icon-twitter"></i></a></li>
						<li><a href="#" class="pt"><i class="icon-pinterest"></i></a></li>
						<li><a href="#" class="lin"><i class="icon-linkedin"></i></a></li>
						<li><a href="#" class="gl"><i class="icon-google-plus"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>