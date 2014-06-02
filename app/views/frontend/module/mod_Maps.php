<!-- GOOGLE MAP
	============================================= -->
	<div class="b-google-map">
		<div id="map_canvas" class="top-shadow" style="width: 100%; height: 400px;"></div>

		<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
		<script src="<?php echo asset('asset/frontend/js/jquery.gmap.min.js');?>"></script>
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
	<!-- END GOOGLE MAP
	============================================= -->	