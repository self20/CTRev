<!--[*$content*]-->
<script type="text/javascript">
    init_tabs("torrents_tabs", {
        "remoteClass": "tabs-container-remote-torrents", "containerClass": 'tabs-container-torrents', "saveLinks": true});
</script>
<div class="cb_block">
    <div class="torrents_tabs cbb_tabs">
        <ul class="tabs-nav">
            [*foreach from=$curcats item='cats' key='cat'*]
                <li>
                    <a href='index.php?module=content&amp;from_ajax=1&amp;act=show&amp;cats=[*$cat|ue*]'><span>[*$cat*]</span></a>
                </li>
            [*/foreach*]
        </ul>
    </div>
    <div class="cbb_header">
        <div class="cbb_hl"></div>
        <div class="cbb_hc"></div>
        <div class="cbb_hr"></div>
    </div>
    <div class="cbb_content">
        <div class="cbb_cl">
            <div class="cbb_cr">
                <div class="cbb_cc">
                    <div class="tabs-container-remote-torrents"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="cbb_footer">
        <div class="cbb_fl"></div>
        <div class="cbb_fc"></div>
        <div class="cbb_fr"></div>
    </div>
</div>