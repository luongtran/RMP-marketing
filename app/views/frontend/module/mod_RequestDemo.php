<?php   $Features_intro = DB::table('page_module')
                   ->leftjoin("pages","page_module.page_id","=","pages.id")
                   ->leftjoin("module","page_module.module_id","=","module.id")
                   ->leftjoin("module_intro","module_intro.module_id","=","module.id")                 
                   ->where("module_intro.status","=","publish")                   
                   ->where("module.mod","=","mod_RequestDemo")
                   ->where("module_intro.lang_id","=",Session::get('current_locale'))
                   ->where("page_module.page_id","=",$pageinfo->id) 
                   ->select(DB::raw("module_intro.title,module_intro.sumary,module_intro.content"))
                   ->first(); 
    if($Features_intro):               
?>
<div class="b-promo margin-40">
  <a class="btn big colored" href="#">Request a demo today!</a>
  <h3><?php echo $Features_intro->title; ?></h3>
 	<?php echo $Features_intro->sumary; ?>
</div>

<?php endif;?>