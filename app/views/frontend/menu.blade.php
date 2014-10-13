<div class="header">
    <div class="layout clearfix">
        <div class="mob-layout wrap-left">
            <!-- Logo -->
            <a href="{{ Request::root() }}" class="logo"><img src="{{asset('asset/frontend/img/logo.png')}}" alt=""></a>
            <!-- Mobile Navigation Button -->
            <div class="btn-menu icon-reorder"></div>
            <!-- Navigation -->
            <ul class="menu">
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
                    echo "<li><a href='" . Request::root() . '/' . $prMenu->link . "'><i class=" . $prMenu->icon . "></i>" . $prMenu->title . "</a>";
                    $subMenu = DB::table('menu')
                        ->join('pages', 'pages.id', '=', 'menu.page_id')
                        ->where('menu.status', '=', 'publish')
                        ->where('parent', '=', $prMenu->id)
                        ->select(DB::raw('menu.id,menu.title,pages.link as link,menu.icon'))
                        ->get();
                    $checkEmpty = false;
                    if ($subMenu) {
                        $ulSub = "<ul class='submenu'>";
                        foreach ($subMenu as $sub):
                            $ulSub.= "<li><a href='" . Request::root() . '/' . $sub->link . "'><i class=" . $sub->icon . "></i>" . $sub->title . "</a></li>";
                            $checkEmpty = true;
                        endforeach;
                        $ulSub.= "</ul>";
                        if ($checkEmpty)
                            echo $ulSub;
                    }
                    echo "</li>";
                    ?> 
                <?php endforeach; ?>           

            </ul>             
        </div>

    </div>
    <!-- Mobile Navigation -->
    <ul class="mob-menu">
        <?php
        $setMenu = DB::table('menu')
            ->join('pages', 'pages.id', '=', 'menu.page_id')
            ->where('menu.status', '=', 'publish')
            ->where('parent', '=', 0)
            ->where('menu.lang_id', '=', Session::get('current_locale'))
            ->orderBy('menu.order', 'asc')
            ->select(DB::raw('menu.id,menu.title,pages.link as link,menu.icon'))
            ->get();
        foreach ($setMenu as $prMenu):

            echo '<li><div><a href="' . $prMenu->link . '">' . $prMenu->title . '</a><span class="btn-submenu"></span> </div>';
            $subMenu = DB::table('menu')
                ->join('pages', 'pages.id', '=', 'menu.page_id')
                ->where('menu.status', '=', 'publish')
                ->where('parent', '=', $prMenu->id)
                ->select(DB::raw('menu.id,menu.title,pages.link as link,menu.icon'))
                ->get();
            $checkEmpty = false;
            if ($subMenu) {
                echo "<ul class='mob-submenu'>";
                foreach ($subMenu as $sub):
                    echo "<li><div><a href='" . Request::root() . '/' . $sub->link . "'>" . $sub->title . "</a></div></li>";
                    $checkEmpty = true;
                endforeach;
                echo "</ul>";
            }

        endforeach;
        ?>   

    </ul>
    <!-- End Mobile Navigation -->
</div>