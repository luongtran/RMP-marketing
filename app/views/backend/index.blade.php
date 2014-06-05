@section('content')

<script type="text/javascript">

// $(document).ready(function(){ 

//         /*$.getJSON("http://localhost:8000/backend/load-immages-json",function(result){
//             alert('sssss');
//              // alert(result);
//             });  
//         */

//         $.getJSON("http://localhost:8000/backend/load-immages-json",function(data,status){
          
//                 var url = "<?php echo asset('asset/share/uploads/iamges');?>";
//                 url= url+'./';
//                 var img; 

//            // var obj = $.parseJSON(data);
//             $.each(data, function (_idx, item) {

//             });
//            // alert(data);
//         });
// });
</script>

<div class="row">
	<h2>{{Session::get('msg_flash')}}</h2>
</div>
<div class="row">
<div class="panel panel-info">
                        <div class="panel-heading">
                            Info Panel
                        </div>
                        <div class="panel-body">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus et, fringilla augue.</p>
                        </div>
                        <div class="panel-footer">
                            Develop by SFR
                        </div>
                    </div>
</div>

@stop