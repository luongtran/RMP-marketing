					<div class="col-1_2"> 
					<div id="">
						<h2>Try send request demo now!</h2>
						<div class="form-message"></div>
						
						<form action="<?php echo Request::root();?>/request-demo" method="post" style="margin-bottom: 10px;" action="contact.php" class="b-form">
							<div class="input-wrap">
								<i class="icon-user"></i>
								<input type="text" placeholder="Name (required)"  name="name">
							</div>
							<div class="input-wrap">
								<i class="icon-user"></i>
								<input type="text" placeholder="Company (required)"  name="company">
							</div>
							<div class="input-wrap">
								<i class="icon-envelope"></i>
								<input type="text" placeholder="Email (required)" name="email">
							</div>
							<div class="input-wrap">
								<i class="icon-pencil"></i>
								<input type="text" placeholder="Subject" name="subject">
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