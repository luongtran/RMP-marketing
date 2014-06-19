@section('header')
@stop
@section('title_bar')
<div class="b-titlebar">
    <div class="layout">
      <!-- Bread Crumbs -->
      <ul class="crumbs">
        <li>You are here:</li>
        <li><a href="http://completermp.com/marketing">Home</a></li>
        <li>
                      RMP Features                  </li>
      </ul>
      <!-- Title -->
      <h1> 
                  RMP Features              </h1>
    </div>
  </div>
@stop
@section('top')


  <?php   $Feature_content = DB::table('module_data')
                   ->join("module","module.id","=","module_data.module_id")                 
                   ->where("module_data.status","=","publish")                   
                   ->where("module.mod","=","mod_Feature")
                   ->where("module_data.lang_id","=",Session::get('current_locale'))                   
                   ->orderBy("module_data.id","desc")
                   ->select(DB::raw("module_data.id,module_data.title,module_data.sumary,module_data.icon,module_data.link"))
                   ->get();  ?>  
   @foreach($Feature_content as $list)     
 
<div class="content">
     <div class="layout">
        <div class="text-center">
        <h2><?php echo $list->title;?></h2>
        <p><?php echo $list->sumary;?></p>
        </div>       

           <div class="b-carousel">
            <div class="carousel-content box-show-feature">
                <?php 
                $getImage = Uploads::where('modData_id','=',$list->id)->get();
                foreach($getImage as $img):?>
                <img alt="" src="<?php echo asset($img->path.'/'.$img->name);?>" class="carousel-item"  >          
                <?php endforeach;?>
            </div>
            </div>
             
          
     </div>
</div>                 
<div class="content gray-content">
            <div class="layout"></div>
</div>
            @endforeach





@stop