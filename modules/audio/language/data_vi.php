<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2020 VINADES.,JSC. All rights reserved
 * @License: Not free read more http://nukeviet.vn/vi/store/modules/nvtools/
 * @Createdate Sat, 28 Nov 2020 08:13:56 GMT
 */

if (!defined('NV_ADMIN'))
    die('Stop!!!');

try {
    $db->query("INSERT INTO " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "_blocks (bid, title, description) VALUES('1', 'Nhạc trường họck', '')");
} catch (PDOException $e) {
    trigger_error($e->getMessage());
}

try {
    $db->query("INSERT INTO " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "_rows (id, bid, title, description, link, target, image, start_time, end_time, weight, status) VALUES('1', '1', 'Xe đạp - Thùy Chi', '', '', '', 'xe-dap-thuy-chi-m4u.mp3', '1606547689', '0', '2', '1')");
} catch (PDOException $e) {
    trigger_error($e->getMessage());
}
try {
    $db->query("INSERT INTO " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "_rows (id, bid, title, description, link, target, image, start_time, end_time, weight, status) VALUES('2', '1', 'Xe đạp ơi - Phương Thảo', '', '', '', 'xe-dap-oi-phuong-thao.mp3', '1606547751', '0', '3', '1')");
} catch (PDOException $e) {
    trigger_error($e->getMessage());
}
try {
    $db->query("INSERT INTO " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "_rows (id, bid, title, description, link, target, image, start_time, end_time, weight, status) VALUES('3', '1', 'Tạm Biệt Nhé - Lynk Lee', '', '', '', 'tam-biet-nhe-lynk-lee-phuc-bang.mp3', '1606547807', '0', '1', '1')");
} catch (PDOException $e) {
    trigger_error($e->getMessage());
}
try {
    $db->query("INSERT INTO " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "_rows (id, bid, title, description, link, target, image, start_time, end_time, weight, status) VALUES('4', '1', 'Ngày ấy bạn và tôi', '', '', '', 'ngay-ay-ban-va-toi-lynk-lee.mp3', '1606547862', '0', '4', '1')");
} catch (PDOException $e) {
    trigger_error($e->getMessage());
}
