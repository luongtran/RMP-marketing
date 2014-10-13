<!-- TOP BAR 
============================================= -->
<div class="b-top-bar">
    <div class="layout">
        <!-- Some text -->
        <div class="wrap-right">
            <span class="top-bar-phone">
                <span class="icon-phone">Call us: +966 5958 38494 </span>
                <span class="top-bar-text"><i class="icon-envelope"></i> info@completermp.com</span>
            </span>

            <select id="changeLangague" class="btn black">
                <option value="en">Select Language</option>
                <?php
                @$listLang = Language::where('status', '=', 'publish')->get();
                foreach ($listLang as $lang) :
                    ?>
                    <option value="{{$lang->code}}" @if(Session::get('current_locale')==$lang->code) {{"selected='selected'"}} @endif >{{$lang->name}}</option>
                <?php endforeach; ?>                        
            </select>
        </div>
    </div>
</div>
<!-- END TOP BAR 