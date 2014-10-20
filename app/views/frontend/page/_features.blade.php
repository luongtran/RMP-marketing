@section('header')
@stop
@section('title_bar')
<div class="container">
    <ul class="breadcrumb">
        <li><a href="<?php echo Request::root(); ?>">Home</a></li>
        <li class="active">RMP Features</li>
    </ul>
</div> 
@stop
@section('top')

<?php
$Feature_content = DB::table('module_data')
    ->join("module", "module.id", "=", "module_data.module_id")
    ->where("module_data.status", "=", "publish")
    ->where("module.mod", "=", "mod_Feature")
    ->where("module_data.lang_id", "=", Session::get('current_locale'))
    ->orderBy("module_data.id", "desc")
    ->select(DB::raw("module_data.id,module_data.title,module_data.sumary,module_data.icon,module_data.link"))
    ->get();
?>  
@foreach($Feature_content as $list)     

<div class="container">
    <div class="layout">
        <div class="text-center clearfix">
            <h1><?php echo $list->title; ?></h1>
            <p><?php echo $list->sumary; ?></p>
        </div>       
        <div class="owl-carousel owl-theme">
            <?php
            $getImage = Uploads::where('modData_id', '=', $list->id)->get();
            foreach ($getImage as $img):
                ?>
                <div class="item">
                    <img src="<?php echo asset($img->path . '/' . $img->name); ?>" alt="The Last of us">
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>                 

@endforeach





@stop