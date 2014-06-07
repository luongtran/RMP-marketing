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
                <li><a href="#" title="Sample page 1">Update</a>
                </li>
                <li class="pull-right">
                    <div class="input-group input-widget">

                        <input style="border-radius:15px" type="text" placeholder="Search..." class="form-control">
                    </div>
                </li>
            </ul>
 @stop
@section('content')
<div class="content-wrap">
                <div class="row">


                    <div class="col-sm-12">
                        <div id="basicClose" class="nest">
                            <div class="title-alt">
                                <h6>Basic</h6>
                                <div class="titleClose">
                                    <a href="#basicClose" class="gone">
                                        <span class="entypo-cancel"></span>
                                    </a>
                                </div>
                                <div class="titleToggle">
                                    <a href="#basic" class="nav-toggle-alt">
                                        <span class="entypo-up-open"></span>
                                    </a>
                                </div>

                            </div>

                            <div id="basic" class="body-nest">
                                <div class="form_center">
                                       {{Form::open(array('url'=>'backend/module/update/'.$getMod->id, 'method' => 'post','role'=>'form'))}}               
                                
                                <div class="form-group">
                                             <label for="exampleInputEmail1">Name</label>
                                             {{Form::text('name',$getMod->name,array('class' => 'form-control'))}}                                             
                                </div> 
                                <div class="form-group">
                                             <label for="exampleInputEmail1">Mod</label>
                                             {{Form::text('mod',$getMod->mod,array('class' => 'form-control'))}}                                             
                                </div>       
                                <div class="form-group">
                                    <label>{{trans('common.table.position')}}</label> 
                                    <select class="form-control" name="position">
                                        <option value="">None</option>
                                       @foreach($position as $otp)
                                        @if($getMod->position == $otp->name)
                                        <option value="{{$otp->name}}">{{$otp->name}}</option>
                                        @elseif
                                        <option value="{{$otp->name}}" selected>{{$otp->name}}</option>
                                        @endif
                                       @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>{{trans('common.table.order')}}</label> 
                                    {{Form::text('order',$getMod->order,array('class' => 'form-control'))}}       
                                </div>                              
                                 <?php echo CommonHelper::createFormStatus($getMod->status);?>        
                                        <button type="submit" class="btn btn-info">Submit</button>
                                    </form>
                                </div>


                            </div>

                        </div>
                    </div>

                </div>
            </div>                        
                          
                                        
                    {{Form::close()}}
@stop