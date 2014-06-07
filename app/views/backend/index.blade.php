 <a href="<?php echo Route('change_language', array('lang' => 'en', 'return_url' => Request::url()) );?>"><span class="<?php if(Session::get('current_locale')=='en'){echo 'label label-default';}?>" > English </span></a>
 <a href="<?php echo Route('change_language', array('lang' => 'sa', 'return_url' => Request::url()) );?>"><span class="<?php if(Session::get('current_locale')=='sa'){echo 'label label-default';}?>"> عربي </span></a>
 @section('breadcrumb')      
 <ul id="breadcrumb">
                <li>
                    <span class="entypo-home"></span>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">Extra Pages</a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">Blank Page</a>
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
                    <div class="col-sm-12">
                        <!-- BLANK PAGE-->

                        <div class="nest" id="Blank_PageClose">
                            <div class="title-alt">
                                <h6>
                                    Blank Page</h6>
                                <div class="titleClose">
                                    <a class="gone" href="#Blank_PageClose">
                                        <span class="entypo-cancel"></span>
                                    </a>
                                </div>
                                <div class="titleToggle">
                                    <a class="nav-toggle-alt" href="#Blank_Page_Content">
                                        <span class="entypo-up-open"></span>
                                    </a>
                                </div>

                            </div>

                            <div class="body-nest" id="Blank_Page_Content">

                                Content Goes Here
                            </div>
                        </div>
                    </div>
                    <!-- END OF BLANK PAGE -->


                </div>
 @stop