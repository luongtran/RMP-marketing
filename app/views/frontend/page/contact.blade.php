@section('header')
<div class="b-google-map"> 
    <div id="map_canvas" style="width: 100%; height: 400px;"></div> 
 
    <script src="http://maps.google.com/maps/api/js?sensor=true"></script> 
    <script src="{{ asset('frontend/js/jquery.gmap.min.js')}}"></script> 
    <script> 
        jQuery('#map_canvas').gMap({ 
            maptype: 'ROADMAP', 
            scrollwheel: false, 
            zoom: 18, 
            markers: [ 
                { 
                    address: 'New York', // Your Adress Here
                    html: '', 
                    popup: false, 
                } 
            ], 
        }); 
    </script> 
</div>
						
		
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
						<li class="contact-address"><i class="icon-map-marker"></i><span><strong>Address:</strong> 103088, Ut wisi enim ad minim veniam, 27, of. 304</span></li>
						<li class="contact-phone"><i class="icon-phone"></i><span><strong>Phone:</strong> +1 (229) 991-22-11</span></li>
						<li class="contact-mail"><i class="icon-envelope"></i><strong>E-mail:</strong> <a href="#">mail@mail.com</a></li>
						<li class="contact-address"><i class="icon-time"></i><span><strong>Business Hours:</strong><br> Monday-Friday: 9:<sup>00</sup> &mdash; 18:<sup>00</sup><br>
						Saturday: 10:<sup>00</sup> &mdash; 17:<sup>00</sup><br>
						Sunday: closed</span>
						</li>
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
@stop
@section('title_bar')
<div class="b-titlebar">
    <div class="layout">
      <!-- Bread Crumbs -->
      <ul class="crumbs">
        <li>You are here:</li>
        <li><a href="http://completermp.com/marketing">Home</a></li>
        <li>
                      Contact Us                  </li>
      </ul>
      <!-- Title -->
      <h1> 
                  Contact Us              </h1>
    </div>
  </div>
@stop
@section('content')
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
						<li class="contact-address"><i class="icon-map-marker"></i><span><strong>Address:</strong> 103088, Ut wisi enim ad minim veniam, 27, of. 304</span></li>
						<li class="contact-phone"><i class="icon-phone"></i><span><strong>Phone:</strong> +1 (229) 991-22-11</span></li>
						<li class="contact-mail"><i class="icon-envelope"></i><strong>E-mail:</strong> <a href="#">mail@mail.com</a></li>
						<li class="contact-address"><i class="icon-time"></i><span><strong>Business Hours:</strong><br> Monday-Friday: 9:<sup>00</sup> &mdash; 18:<sup>00</sup><br>
						Saturday: 10:<sup>00</sup> &mdash; 17:<sup>00</sup><br>
						Sunday: closed</span>
						</li>
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
@stop