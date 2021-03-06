<?php

/**
 * Project:            	CTRev
 * @file                include/plugins/inc/ext.simple.php
 *
 * @page 	  	http://ctrev.cyber-tm.ru/
 * @copyright         	(c) 2008-2012, Cyber-Team
 * @author 	  	The Cheat <cybertmdev@gmail.com>
 * @name		Пример плагина. extends файл. 
 * @version           	1.00
 * @tutorial            Реализация расширенных/переопределённых классов
 * @tutorial            Имя файла должно быть ext.{имя плагина}.php
 * @tutorial            Не забывайте проверять, не был ли класс уже инициализирован,
 * есть ли наследуемый класс. Особенно необходимо, когда плагин переопределяет несколько
 * классов.
 */
if (!defined('INSITE'))
    die('Remote access denied!');

if (!class_exists('my_torrents') && class_exists('plugin_extend_simple_base_content')) {

    class my_torrents extends plugin_extend_simple_base_content {

        public function init() {
            print('Extending torrents init method');
            print('<br>');
            parent::init();
        }

    }

}
?>