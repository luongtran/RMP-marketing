					<div class="col-1_2"> 
						{{Session::get('msg_flash')}}
					<div id="">
						<h2>Send request demo now!</h2>
						<div class="form-message"></div>
						
						<form action="<?php echo Request::root();?>/request-demo" method="post" style="margin-bottom: 10px;" action="contact.php" class="b-form">
							<div class="input-wrap">
								<i class="icon-user"></i>
								<input type="text" placeholder="Name"  name="name" required>
							</div>
							<div class="input-wrap">
								<i class="icon-user"></i>
								<input type="text" placeholder="Company"  name="company" required>
							</div>
							<div class="input-wrap">
								<i class="icon-envelope"></i>
								<input type="email" placeholder="Email" name="email" required>
							</div>
							<div class="input-wrap">
								<i class="icon-pencil"></i>
								<input type="text" placeholder="Subject" name="subject" required>
							</div>
							<div class="textarea-wrap">
								<i class="icon-pencil"></i>
								<textarea placeholder="Message" name="text"></textarea>
							</div>
							<input type="submit" value="Submit" class="btn-submit btn colored">
						</form>
						<div style="height: 20px;" class="gap"></div>
					</div>
				</div> 