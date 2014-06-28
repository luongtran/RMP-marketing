<script type="text/javascript">
function getInfoImg(src){
	//pathImage = "{{asset('asset/share/uploads/images/')}}"+id;
	//alert('Path image : '+src);
	$("#dialog").html('<input type="text" class="form-control" value="'+src+'" >');
	$("#dialog").show();

}


</script>

<div id="dialog" title="Infor image">
    
</div>

<ul style="list-style:none;">
	@foreach($listImg as $list)
	<li style="float:left;"><img src="{{asset($list->path.'/'.$list->name)}}" width="100" height="100" id="{{$list->name}}" onclick="getInfoImg(this.src)"></li>
	@endforeach
</ul>
 <!-- paging -->                
   <?php echo $listImg->links(); ?>  
 <!-- end paging -->  