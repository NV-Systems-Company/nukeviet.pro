<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES., JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES ., JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Dec 3, 2010  11:24:58 AM
 */

$module_version = array(
    'name' => 'Organs',
    'modfuncs' => 'main, vieworg, person, viewsearch',
    'submenu' => '',
    'is_sysmod' => 0,
    'virtual' => 1,
    'version' => '4.6.00',
    'date' => 'Saturday, August 21, 2021 17:00:00 AM GMT+07:00',
    'author' => 'VINADES (contact@vinades.vn)',
    'note' => '',
    'uploads_dir' => array(
        $module_name,
        $module_name . '/' . date('Y_m')
    )
);
