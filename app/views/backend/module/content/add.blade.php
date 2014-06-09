@section('title')
<div class="row">
                <div id="paper-top">
                    <div class="col-sm-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-media-record"></i> 
                            <span>
                              MODULE {{$infoMod->name}}                                
                            </span>
                        </h2>

                    </div>

                    <div class="col-sm-7">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="tittle-middle-header">                         
                               {{Session::get('msg_flash_home')}}
                         </div>

                    </div>
                    <div class="col-sm-2">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="btn-group btn-wigdet pull-right visible-lg">
                            <div class="btn">
                                Widget</div>
                            <button data-toggle="dropdown" class="btn dropdown-toggle" type="button">
                                <span class="caret"></span>
                                <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            <ul role="menu" class="dropdown-menu">
                                <li>
                                    <a href="{{Request::root()}}/backend/module-package/content/{{$infoMod->id}}/add">
                                        <span class="entypo-plus-circled margin-iconic"></span>Add New</a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="entypo-heart margin-iconic"></span>Favorite</a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="entypo-cog margin-iconic"></span>Setting</a>
                                </li>
                            </ul>
                        </div>


                    </div>
                </div>
            </div>
@stop
@section('breadcrumb')      
 <ul id="breadcrumb">
                <li>
                    <span class="entypo-home"></span>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="{{Request::root()}}/backend/module" title="Sample page 1">Module</a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="{{Request::root()}}/backend/module-package/{{$infoMod->id}}/content" title="Sample page 1">Content [ Module {{$infoMod->name}} ]</a>
                </li>
                 <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">Add</a>
                </li>
                <li class="pull-right">
                    <div class="input-group input-widget">

                        <input style="border-radius:15px" type="text" placeholder="Search..." class="form-control">
                    </div>
                </li>
            </ul>
@stop
 
@section('content')
<div class="row">
<div class="content-wrap">
                <div class="row">  
                       {{Session::get('msg_flash')}}                 
                  {{Form::open(array('url'=>'backend/module-package/'.$infoMod->id.'/content/add', 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data','id'=>'frm-setting') )}}                                                                                                            
                    <div class="col-sm-8"> 
                        <div id="headerClose" class="nest">
                            <div class="title-alt">
                                <h6>
                                   Basic</h6>                          

                            </div>

                            <div id="header" class="body-nest">
                                    <!-- begin form-->  
                                        <fieldset>
                                            <div class="form-group">
                                             <label for="">Title</label>
                                             {{Form::text('title','',array('class' => 'form-control'))}}                                             
                                            </div>                                         
                                            <div class="form-group">
                                             <label for="">Content</label>
                                             {{Form::textarea('content','',array('class' => 'form-control ckeditor'))}}                                             
                                            </div>
                                            
                                            <div class="form-group">
                                             <label for="">Sumary</label>
                                             {{Form::textarea('sumary','',array('class' => 'form-control','style'=>'width: 100%;'))}}                                             
                                            </div>
                                           <div class="form-group">
                                             <label for="">Multi Images</label>
                                            {{Form::file('image[]',array('class' => 'image','multiple'=>'on')) }}                                            
                                            </div> 
                                        </fieldset>                                 
                            </div>



                        </div>
                    </div>    
                    <!-- end basic -->                         
                       <div class="col-sm-4">
                        <div id="headerClose" class="nest">
                            <div class="title-alt">
                                <h6>
                                   Extends</h6>
                            </div>



                              <div id="header" class="body-nest"> 
                                        <fieldset>
                                            <div class="form-group">
                                             <label for="">Html code</label>
                                             {{Form::text('codeHtml','',array('class' => 'form-control','id'=>'date'))}}                                             
                                            </div> 
                                                                                    
                                            <div class="form-group">
                                            <label for="">Language</label>    
                                            <select name="lang_id" class="form-control">                                              
                                                @foreach($language as $lang)
                                                <option value="{{$lang->code}}">{{$lang->name}}</option>
                                                @endforeach
                                            </select>
                                             <div class="form-group">
                                             <label for="">Icon</label>
                                             {{Form::text('icon','',array('class' => 'form-control'))}}                                             
                                            </div>
                                            
                                            <div class="form-group">
                                             <label for="">Order</label>
                                             {{Form::text('order','',array('class' => 'form-control'))}}                                             
                                            </div>
                                             <div class="form-group">
                                             <label for="">Link</label>
                                             {{Form::text('link','',array('class' => 'form-control'))}}                                             
                                            </div>
                                             <div class="form-group">
                                            <label for="">Target</label>    
                                            {{Form::select('target', array('_self' => 'Self', '__blank' => 'Blank'),'_self')}}
                                            <?php echo  CommonHelper::createFormStatus();?>
                                            
                                            <button class="btn btn-success" type="submit" >Save</button>
                                        </fieldset>                              
                            </div>



                        </div>
                    </div>  
                    <!-- end extend -->                    
                 {{Form::close();}}
                </div>
            </div>
</div><!-- end row content-->    
@stop