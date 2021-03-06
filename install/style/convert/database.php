<div class='margin_auto'>
    <dl class='info_text'>
        <dt><?= lang::o()->v('convert_database_name') ?></dt>
        <dd><input type="text" value='' name='db' size="30"></dd>
        <dt><?= lang::o()->v('convert_database_prefix') ?></dt>
        <dd><input type="text" value='' name='prefix' size="30"></dd>
        <dt><?= lang::o()->v('convert_database_cfile') ?></dt>
        <dd><?= $data['cfiles'] ?></dd>
        <dt><?= lang::o()->v('convert_database_peronce') ?></dt>
        <dd><input type="text" value='100' name='peronce' size="30"></dd>
    </dl>
    <fieldset class="fieldset_short">
        <legend><?= lang::o()->v('convert_groups_compare') ?></legend>
        <dl class='info_text'>
            <?php foreach ($data['groups'] as $group => $name) {
                ?>
                <dt><?= lang::o()->v($name) ?></dt>
                <dd><input type='text' size="20" name='groups[<?= $group ?>]' value='<?= $group ?>'></dd>
                <?php
            }
            ?>
        </dl>
        <font size="1"><?= lang::o()->v('convert_groups_compare_notice') ?></font>
    </fieldset>
</div>