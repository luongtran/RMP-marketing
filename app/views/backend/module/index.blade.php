@section('title')
<div class="row">
                <div id="paper-top">
                    <div class="col-sm-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-media-record"></i> 
                            <span>
                               MODULE                             
                            </span>
                        </h2>

                    </div>

                    <div class="col-sm-7">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="tittle-middle-header">

                            <div class="alert">
                               {{Session::get('msg_flash_home')}}
                            </div>


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
                                    <a href="{{Request::root()}}/backend/module/add">
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
                <li><a href="#" title="Sample page 1">Module</a>
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
                    <div class='alert'>
                        {{Session::get('msg_flash')}}
                    </div>
                    <!-- begin form -->
                    <div class="col-sm-3">
                        <div class="row">
                        <div id="headerClose" class="nest">                
                            <div class="title-alt">
                                <h6>Add module</h6>

                            </div>
                                <div id="header" class="body-nest">
                                <div class="form_center">
                                    {{Form::open(array('url'=>'backend/module/add', 'method' => 'post','role'=>'form','enctype'=>'multipart/form-data','id'=>'frm-setting') )}}                                                                     
                                        <div class="form-group">
                                             <label for="exampleInputEmail1">Name</label>
                                             {{Form::text('name','',array('class' => 'form-control'))}}                                             
                                        </div> 
                                        <div class="form-group">
                                             <label for="exampleInputEmail1">Mod</label>
                                             {{Form::text('mod','',array('class' => 'form-control'))}}                                             
                                        </div>
                                        <div class="form-group">
                                            <label>{{trans('common.table.position')}}</label> 
                                            <select class="form-control" name="position">
                                                <option value="">None</option>
                                               @foreach($position as $otp)
                                               <option value="{{$otp->name}}">{{$otp->name}}</option>
                                               @endforeach
                                            </select>
                                        </div>
                                          <div class="form-group">
                                             <label for="exampleInputEmail1">Order</label>
                                             {{Form::text('order','',array('class' => 'form-control'))}}                                             
                                        </div> 
                                        <button type="submit" class="btn btn-info">Submit</button>
                                    </form>
                                    {{Form::close()}}
                                </div>


                            </div>

                        </div>
                    </div>
                     </div>    
                    <!--end form -->

                    <div class="col-sm-9">
                        <div class='row'>
                         <div id="headerClose" class="nest">
                            <div class="title-alt">
                                <h6>
                                    Basic Responsive Tables</h6>                                
                            </div>

                             <div id="header" class="body-nest">
                                {{Form::open(array('url'=>'backend/module/action', 'method' => 'post','role'=>'form'))}}     
                                <section id="flip-scroll">
                                        
                                    <table class="table table-bordered table-striped cf">
                                        <thead class="cf">
                                            <tr>
                                                <th><input type="checkbox" id="ckbCheckAll" /></th>
                                                <th>Name</th>
                                                <th>Mod</th>
                                                <th>Position</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($module as $mod)
                                            <tr <?php if($mod->status == "unpublish"){echo "class='danger'";}?>>
                                                <td><input type="checkbox" value="{{$mod->id}}" name="checkID[]" id="" class="checkBoxClass"></td>
                                                <td>{{$mod->name}}</td>
                                                <td>{{$mod->mod }}</td>
                                                <td>{{$mod->position }}</td>
                                                <td>
                                                    <a href='{{Request::root()}}/backend/module/update/{{$mod->id}}'  onclick="return confirm('Yes or no!');">
                                                        <span class="label label-primary">Update</span>                                                        
                                                    </a>
                                                    <a href='{{Request::root()}}/backend/module/delete/{{$mod->id}}' onclick="return confirm('Yes or no!');">
                                                    <span class="label label-danger">Delete</span>
                                                    </a> 
                                                     <a href='{{Request::root()}}/backend/module/{{$mod->id}}/intro' >
                                                    <span class="label label-danger">Intro</span>
                                                    </a> 
                                                     <a href='{{Request::root()}}/backend/module/{{$mod->id}}/content' >
                                                    <span class="label label-danger">Content</span>
                                                    </a> 
                                                </td>
                                                
                                            </tr>                    
                                            @endforeach
                                        </tbody>
                                    </table>
                                   <div class="row col-lg-3">
                                          <?php echo CommonHelper::createFormAction();?>
                                   </div>
                                </section>
                                 {{Form::close()}}  
                            </div>
                          
                        </div>
                            
                        
                    </div> <!-- end col  -->
                    </div><!-- end row -->
                    
                        <div class='col-lg-3'>
                            <!-- paging -->                
                                <?php echo $module->links(); ?>                              
                            <!-- end paging -->  
                        </div>    
                </div>
            </div>

@stop