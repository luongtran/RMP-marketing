<div class="header">
    <div class="container">
        <a class="site-logo" href="{{url('/')}}">
            <img src="{{asset('asset/frontend/img/logo.png')}}" width="130" alt="Metronic FrontEnd">
        </a>
        <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

        <!-- BEGIN NAVIGATION -->
        <div class="header-navigation pull-right font-transform-inherit">
            <ul>
                <?php
                $setMenu = DB::table('menu')
                    ->join('pages', 'pages.id', '=', 'menu.page_id')
                    ->where('menu.status', '=', 'publish')
                    ->where('parent', '=', 0)
                    ->where('menu.lang_id', '=', Session::get('current_locale'))
                    ->orderBy('menu.order', 'asc')
                    ->select(DB::raw('menu.id,menu.title,pages.link as link,menu.icon'))
                    ->get();
                ?>
                <?php foreach ($setMenu as $prMenu): ?> 
                    <?php
                    $subMenu = DB::table('menu')
                        ->join('pages', 'pages.id', '=', 'menu.page_id')
                        ->where('menu.status', '=', 'publish')
                        ->where('parent', '=', $prMenu->id)
                        ->select(DB::raw('menu.id,menu.title,pages.link as link,menu.icon'))
                        ->get();
                    $hasSub = !!($subMenu);
                    ?>

                    <li class="<?php $hasSub ? 'dropdown' : '' ?>">
                        <a class="<?php echo $hasSub ? 'dropdown-toggle' : '' ?>" <?php echo $hasSub ? 'data-toggle="dropdown" data-target="#"' : '' ?> href="{{url($prMenu->link)}}">
                            {{$prMenu->title}} 
                        </a>
                        @if($hasSub)
                        <ul class="dropdown-menu">
                            <?php foreach ($subMenu as $sub): ?>
                                <li class="active"><a href="{{url($sub->link)}}">{{$sub->title}}</a></li>
                            <?php endforeach; ?>
                        </ul>
                        @endif
                    </li>
                <?php endforeach; ?>  

                <!-- BEGIN TOP SEARCH -->
                <li class="menu-search">
                    <span class="sep"></span>
                    <i class="fa fa-search search-btn"></i>
                    <div class="search-box">
                        <form action="#">
                            <div class="input-group">
                                <input type="text" placeholder="Search" class="form-control">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="submit">Search</button>
                                </span>
                            </div>
                        </form>
                    </div> 
                </li>
                <!-- END TOP SEARCH -->
            </ul>
        </div>
        <!-- END NAVIGATION -->
    </div>
</div>