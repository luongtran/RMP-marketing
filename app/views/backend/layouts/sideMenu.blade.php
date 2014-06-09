<div id="skin-select">
        <div id="logo">
            <h1>RMP
                <span>v1.0</span>
            </h1>
        </div>

        <a id="toggle">
            <span class="entypo-menu"></span>
        </a>
        <div class="dark">
            <form action="#">
                <span>
                    <input type="text" name="search" value="" class="search rounded id_search" placeholder="Search Menu..." autofocus />
                </span>
            </form>
        </div>

        <div class="search-hover">
            <form id="demo-2">
                <input type="search" placeholder="Search Menu..." class="id_search">
            </form>
        </div>


        <div class="search-hover">
            <form id="demo-2">
                <input type="search" placeholder="Search Menu..." class="id_search">
            </form>
        </div>




        <div class="skin-part">
            <div id="tree-wrap">
                <div class="side-bar">
                    <ul class="topnav menu-left-nest">
                        <li>
                            <a href="#" style="border-left:0px solid!important;" class="title-menu-left">

                                <span class="widget-menu"></span>
                                <i data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>

                            </a>
                        </li>

                        <li>
                            <a class="tooltip-tip ajax-load" href="#" title="Article">
                                <i class="icon-document-edit"></i>
                                <span>Article</span>

                            </a>
                            <ul>
                                <li>
                                    <a class="tooltip-tip2 ajax-load" href="{{Request::root('')}}/backend/article/add" title="Article add"><i class="icon-folder"></i><span>Add</span></a>
                                </li>
                                <li>
                                    <a class="tooltip-tip2 ajax-load" href="{{Request::root('')}}/backend/article" title="Article list"><i class="icon-view-list"></i><span>List</span></a>
                                </li>
                                <li>
                                    <a class="tooltip-tip2 ajax-load" href="{{Request::root('')}}/backend/category" title="Category"><i class="icon-calendar"></i><span>Category</span></a>
                                </li>
                            </ul>
                        </li>
                       <li>
                            <a class="tooltip-tip" href="#" title="Media">
                                <i class="icon-monitor"></i>
                                <span>Media</span>
                            </a>
                            <ul>
                                <li>
                                    <a class="tooltip-tip2 ajax-load" href="{{Request::root()}}/backend/upload" title="Upload"><i class="icon-attachment"></i><span>Upload</span></a>
                                </li>
                               
                            </ul>
                         </li>    
                    </ul>

                    @if( (Session::get('perRole') == SharedController::ROLE_ADMIN)||(Session::get('perRole') == SharedController::ROLE_SUPPER))
                    <ul class="topnav menu-left-nest">
                        <li>
                            <a href="#" style="border-left:0px solid!important;" class="title-menu-left">

                                <span class="design-kit"></span>
                                <i data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>

                            </a>
                        </li>
                        
                         <li>
                            <a class="tooltip-tip" href="#" title="Module package">
                                <i class="entypo-retweet"></i>
                                <span>Module package</span>
                            </a>
                            <ul>
                                <?php 
                                $modPackage  = Modules::where('status','=','publish')->get();                                                                
                                ?>
                                @foreach($modPackage as $packageList)
                                <li>
                                    <a class="tooltip-tip2" href="#" title="{{$packageList->name}}">
                                    <i class="{{$packageList->icon}}"></i>
                                     <span>{{$packageList->name}}</span>
                                    </a>
                                    <ul>
                                        <li>
                                            <a class="tooltip-tip3 ajax-load" href="{{Request::root()}}/backend/module-package/{{$packageList->id}}/intro" title="Intro"><i class="fontawesome-exchange"></i><span>Intro</span></a>
                                        </li>
                                         <li>
                                            <a class="tooltip-tip3 ajax-load" href="{{Request::root()}}/backend/module-package/{{$packageList->id}}/content" title="Content"><i class="fontawesome-suitcase"></i><span>Content</span></a>
                                        </li> 
                                    </ul>                                   
                                </li>    
                                @endforeach
                            </ul>
                         </li>    
                     
                        <li>
                             <a class="tooltip-tip2 ajax-load" href="{{Request::root()}}/backend/menu" title="Element"><i class="entypo-layout"></i><span>Menu</span></a>                               
                        </li> 

                    </ul>
                    @endif

                    @if(Session::get('perRole') == SharedController::ROLE_SUPPER)                  
                    <ul id="menu-showhide" class="topnav menu-left-nest">
                        <li>
                            <a href="#" style="border-left:0px solid!important;" class="title-menu-left">

                                <span class="component"></span>
                                <i data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>

                            </a>
                        </li>
                        <li>
                           <a class="tooltip-tip2 ajax-load" href="{{Request::root()}}/backend/page" title="Pages"><i class="entypo-docs"></i><span>Pages</span></a>
                              
                        </li>
                        <li>
                            <a class="tooltip-tip ajax-load" href="{{Request::root()}}/backend/module" title="Manager module">
                                <i class="icon-view-thumb"></i>
                                <span>Mannager Modules</span>
                                <div class="noft-blue">8</div>
                            </a>
                        </li>
                        <li>
                           <a class="tooltip-tip2 ajax-load" href="{{Request::root()}}/backend/user" title="Users"><i class="icon icon-user"></i><span>Users</span></a>
                              
                        </li>
                          <li>
                           <a class="tooltip-tip2 ajax-load" href="{{Request::root()}}/backend/language" title="Language"><i class="entypo-export"></i><span>Language</span></a>
                              
                        </li>
                        <li>
                            
                                    <a class="tooltip-tip2 ajax-load" href="{{Request::root()}}/backend/setting" title="Setting"><i class="entypo-layout"></i><span>Setting</span></a>
                                
                        </li>

                        <li>
                            <a class="tooltip-tip ajax-load" href="map.html" title="Map">
                                <i class="icon-location"></i>
                                <span>Map</span>

                            </a>
                        </li>
                    </ul>
                    @endif

                    <div class="side-dash">
                        <h3>
                            <span>Device</span>
                        </h3>
                        <ul class="side-dashh-list">
                            <li>Avg. Traffic
                                <span>25k<i style="color:#44BBC1;" class="fa fa-arrow-circle-up"></i>
                                </span>
                            </li>
                            <li>Visitors
                                <span>80%<i style="color:#AB6DB0;" class="fa fa-arrow-circle-down"></i>
                                </span>
                            </li>
                            <li>Convertion Rate
                                <span>13m<i style="color:#19A1F9;" class="fa fa-arrow-circle-up"></i>
                                </span>
                            </li>
                        </ul>
                        <h3>
                            <span>Traffic</span>
                        </h3>
                        <ul class="side-bar-list">
                            <li>Avg. Traffic
                                <div class="linebar">5,7,8,9,3,5,3,8,5</div>
                            </li>
                            <li>Visitors
                                <div class="linebar2">9,7,8,9,5,9,6,8,7</div>
                            </li>
                            <li>Convertion Rate
                                <div class="linebar3">5,7,8,9,3,5,3,8,5</div>
                            </li>
                        </ul>
                        <h3>
                            <span>Visitors</span>
                        </h3>
                        <div id="g1" style="height:180px" class="gauge"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>