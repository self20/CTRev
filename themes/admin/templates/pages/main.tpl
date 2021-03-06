<script type='text/javascript'>
    function clear_admin_part(what, important) {
        if (!confirm('[*'main_page_clear_confirm_one'|lang|sl*]'))
            return;
        if (important && !confirm('[*'main_page_clear_confirm_two'|lang|sl*]'))
            return;
        mp_send_request(what);
    }
    function mp_send_request(what) {
        jQuery.post('[*$admin_file*]&from_ajax=1&act=' + what, function(data) {
            if (is_ok(data))
                alert(success_text);
            else
                alert(error_text + ':' + data);
        });
    }
</script>
<div class='admin_main_page'>
    <fieldset>
        <legend>[*'main_page_title'|lang*]</legend>
        <div class='content'>
            <div class='tr'>
                <div class='td'>
                    <dl class='info_text'>
                        <dt>[*'main_page_php_version'|lang*]</dt>
                        <dd>[*$PHP_VERSION*]</dd>
                        <dt>[*'main_page_mysql_version'|lang*]</dt>
                        <dd>[*$MYSQL_VERSION*]</dd>
                        <dt>[*'main_page_engine_version'|lang*]</dt>
                        <dd>[*$smarty.const.ENGINE_VERSION*] [*$smarty.const.ENGINE_STAGE*]</dd>
                    </dl>
                </div>
                <div class='td'>
                    <dl class='info_text'>
                        <dt>[*'main_page_users_count'|lang*]</dt>
                        <dd>[*$row.uc*]</dd>
                        <dt>[*'main_page_content_count'|lang*]</dt>
                        <dd>[*$row.tc*]</dd>
                        <dt>[*'main_page_comments_count'|lang*]</dt>
                        <dd>[*$row.cc*]</dd>
                    </dl>
                </div>
            </div>
        </div>
        <div class='content'>
            <b>[*'main_page_sitemap_file'|lang*]:</b> 
            <a href='[*"$baseurl$sitemap"*]'>[*"$baseurl$sitemap"*]</a>            
            <input type='button' class='very_simple_button' 
                   onclick='mp_send_request("sitemap")' value='[*'main_page_sitemap_generate'|lang*]'>
        </div>
        [*if 'system'|perm*]
            <div class='br'></div>
            <hr class='gray_border'>
            <b>[*'main_page_clear'|lang*]</b><br>
            <div align='center'>
                <input type='button' class='very_simple_button' 
                       onclick='clear_admin_part("cleanup")' value='[*'main_page_clear_cleanup'|lang*]'>
                <input type='button' class='very_simple_button' 
                       onclick='clear_admin_part("cache")' value='[*'main_page_clear_cache'|lang*]'>
                <input type='button' class='very_simple_button' 
                       onclick='clear_admin_part("cache_tpl")' value='[*'main_page_clear_cache_tpl'|lang*]'>
                <input type='button' class='very_simple_button' 
                       onclick='clear_admin_part("stats")' value='[*'main_page_clear_stats'|lang*]'>
                <input type='button' class='very_simple_button' 
                       onclick='clear_admin_part("logs")' value='[*'main_page_clear_logs'|lang*]'>
                [*if "torrents_on"|config*]
                    <input type='button' class='very_simple_button' 
                           onclick='clear_admin_part("peers")' value='[*'main_page_clear_peers'|lang*]'>
                    <input type='button' class='very_simple_button' 
                           onclick='clear_admin_part("downloaded")' value='[*'main_page_clear_downloaded'|lang*]'>
                [*/if*]
                <input type='button' class='very_simple_button' 
                       onclick='clear_admin_part("chat")' value='[*'main_page_clear_chat'|lang*]'>
                <input type='button' class='very_simple_button' 
                       onclick='clear_admin_part("pm")' value='[*'main_page_clear_pm'|lang*]'>
                <input type='button' class='very_simple_button' 
                       onclick='clear_admin_part("ratings")' value='[*'main_page_clear_ratings'|lang*]'>
                <input type='button' class='very_simple_button' 
                       onclick='clear_admin_part("unattachments")' value='[*'main_page_clear_unattachments'|lang*]'>
            </div>
            <div class='br'></div><br>
            <hr class='gray_border'>
            <b>[*'main_page_delete_all'|lang*]</b><br>
            <div align='center'>
                <input type='button' class='very_simple_button' 
                       onclick='clear_admin_part("content", true)' value='[*'main_page_clear_content'|lang*]'>
                <input type='button' class='very_simple_button' 
                       onclick='clear_admin_part("comments", true)' value='[*'main_page_clear_comments'|lang*]'>
                <input type='button' class='very_simple_button' 
                       onclick='clear_admin_part("polls", true)' value='[*'main_page_clear_polls'|lang*]'>
                <input type='button' class='very_simple_button' 
                       onclick='clear_admin_part("news", true)' value='[*'main_page_clear_news'|lang*]'>
                <input type='button' class='very_simple_button' 
                       onclick='clear_admin_part("bans", true)' value='[*'main_page_clear_bans'|lang*]'>
                <input type='button' class='very_simple_button' 
                       onclick='clear_admin_part("warnings", true)' value='[*'main_page_clear_warnings'|lang*]'>
                <input type='button' class='very_simple_button' 
                       onclick='clear_admin_part("attachments", true)' value='[*'main_page_clear_attachments'|lang*]'>
            </div>
        [*/if*]
    </fieldset>
</div>