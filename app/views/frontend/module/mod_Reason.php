<!-- module reason -->
<h3 class="lined margin-20">Need more reasons to choose CompleteRMP!</h3>
<div style="margin-bottom: 20px;">
 <?php $reason = DB::table('reasons')               
            ->leftjoin('uploads', 'uploads.id', '=', 'reasons.image')            
            ->where('reasons.status','=','publish')
            ->select(DB::raw('title,caption,uploads.name as image'))
            ->get();
    foreach($reason as $listRS):?>
   <div class="thumb col-1_4 security flip">
    <div class="thumb-wrapper">
      <img alt="" src="<?php echo asset('asset/share/uploads/images/'.$listRS->image);?>">
      <div class="thumb-detail">
       <div class="padding_15">
          <h3><?php echo $listRS->title;?></h3>
          <p><?php echo $listRS->caption;?></p>
        </div>    
      </div>
    </div>
  </div>
  <?php endforeach ;?>
 
<br clear="all">
</div>  
<!--end module reason -->