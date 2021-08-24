-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 22, 2021 at 11:34 AM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tintuc`
--

-- --------------------------------------------------------

--
-- Table structure for table `tms_authors`
--

CREATE TABLE IF NOT EXISTS `tms_authors` (
  `admin_id` int(11) unsigned NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lev` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `files_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'siteinfo',
  `admin_theme` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `edittime` int(11) NOT NULL DEFAULT '0',
  `is_suspend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `susp_reason` text COLLATE utf8mb4_unicode_ci,
  `pre_check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pre_last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `pre_last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pre_last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_authors`
--

INSERT INTO `tms_authors` (`admin_id`, `editor`, `lev`, `files_level`, `position`, `main_module`, `admin_theme`, `addtime`, `edittime`, `is_suspend`, `susp_reason`, `pre_check_num`, `pre_last_login`, `pre_last_ip`, `pre_last_agent`, `check_num`, `last_login`, `last_ip`, `last_agent`) VALUES
(1, 'ckeditor', 1, 'adobe,archives,audio,documents,flash,images,real,video|1|1|1', 'Administrator', 'siteinfo', '', 0, 0, 0, '', '', 0, '', '', '3e1fe0c467d1ccd771f780e733960160', 1629627317, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `tms_authors_api_credential`
--

CREATE TABLE IF NOT EXISTS `tms_authors_api_credential` (
  `admin_id` int(11) unsigned NOT NULL,
  `credential_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `credential_ident` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `credential_secret` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `credential_ips` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `api_roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT '0',
  `edittime` int(11) NOT NULL DEFAULT '0',
  `last_access` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bảng lưu key API của quản trị';

-- --------------------------------------------------------

--
-- Table structure for table `tms_authors_api_role`
--

CREATE TABLE IF NOT EXISTS `tms_authors_api_role` (
  `role_id` smallint(4) NOT NULL,
  `role_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `role_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `edittime` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bảng lưu quyền truy cập API';

-- --------------------------------------------------------

--
-- Table structure for table `tms_authors_config`
--

CREATE TABLE IF NOT EXISTS `tms_authors_config` (
  `id` mediumint(8) unsigned NOT NULL,
  `keyname` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mask` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `begintime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_authors_module`
--

CREATE TABLE IF NOT EXISTS `tms_authors_module` (
  `mid` mediumint(8) NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) NOT NULL DEFAULT '0',
  `act_1` tinyint(4) NOT NULL DEFAULT '0',
  `act_2` tinyint(4) NOT NULL DEFAULT '1',
  `act_3` tinyint(4) NOT NULL DEFAULT '1',
  `checksum` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_authors_module`
--

INSERT INTO `tms_authors_module` (`mid`, `module`, `lang_key`, `weight`, `act_1`, `act_2`, `act_3`, `checksum`) VALUES
(1, 'siteinfo', 'mod_siteinfo', 1, 1, 1, 1, '08743ddcd6a6b736b60970ade517f1c2'),
(2, 'authors', 'mod_authors', 2, 1, 1, 1, '8354ea08c4c0ecb55efe24a974f47b9b'),
(3, 'settings', 'mod_settings', 3, 1, 1, 0, '5cbc96613a1f4f5c82a25e62dea4ad38'),
(4, 'database', 'mod_database', 4, 1, 0, 0, 'd633fee714c4ee79d66a8a083a4e8fdd'),
(5, 'webtools', 'mod_webtools', 5, 1, 1, 0, '3cc468762a031b88539ccd561915ae2a'),
(6, 'seotools', 'mod_seotools', 6, 1, 1, 0, 'bc75053131cf71f6bf903acf15c35669'),
(7, 'language', 'mod_language', 7, 1, 1, 0, 'c5626841c20e4674cb0dd45ba83c981c'),
(8, 'modules', 'mod_modules', 8, 1, 1, 0, '4f82b23385c074234f9f661586bcb9fa'),
(9, 'themes', 'mod_themes', 9, 1, 1, 0, 'a44c81e2b4dd29bf7eabd4a25caa7c32'),
(10, 'extensions', 'mod_extensions', 10, 1, 0, 0, 'b3d3023a12931f93da81ade7a5ee1ace'),
(11, 'upload', 'mod_upload', 11, 1, 1, 1, '604119cc9bcaedc73fad10af9818b9ef');

-- --------------------------------------------------------

--
-- Table structure for table `tms_authors_oauth`
--

CREATE TABLE IF NOT EXISTS `tms_authors_oauth` (
  `id` mediumint(8) unsigned NOT NULL,
  `admin_id` int(11) unsigned NOT NULL COMMENT 'ID của quản trị',
  `oauth_server` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Eg: facebook, google...',
  `oauth_uid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID duy nhất ứng với server',
  `oauth_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Email',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bảng lưu xác thực 2 bước từ oauth của admin';

-- --------------------------------------------------------

--
-- Table structure for table `tms_banners_click`
--

CREATE TABLE IF NOT EXISTS `tms_banners_click` (
  `id` int(11) unsigned NOT NULL,
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `click_time` int(11) unsigned NOT NULL DEFAULT '0',
  `click_day` int(2) NOT NULL,
  `click_ip` varchar(46) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_banners_plans`
--

CREATE TABLE IF NOT EXISTS `tms_banners_plans` (
  `id` smallint(5) unsigned NOT NULL,
  `blang` char(2) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `require_image` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `uploadtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uploadgroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exp_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_banners_plans`
--

INSERT INTO `tms_banners_plans` (`id`, `blang`, `title`, `description`, `form`, `width`, `height`, `act`, `require_image`, `uploadtype`, `uploadgroup`, `exp_time`) VALUES
(1, '', 'Mid-page ad block', '', 'sequential', 575, 72, 1, 1, 'images', '', 0),
(2, '', 'Left-column ad block', '', 'sequential', 212, 800, 1, 1, 'images', '', 0),
(3, '', 'Right-column ad block', '', 'random', 250, 500, 1, 1, 'images', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tms_banners_rows`
--

CREATE TABLE IF NOT EXISTS `tms_banners_rows` (
  `id` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `clid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_ext` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(4) unsigned NOT NULL DEFAULT '0',
  `height` int(4) unsigned NOT NULL DEFAULT '0',
  `file_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageforswf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `click_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_blank',
  `bannerhtml` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `publ_time` int(11) unsigned NOT NULL DEFAULT '0',
  `exp_time` int(11) unsigned NOT NULL DEFAULT '0',
  `hits_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_banners_rows`
--

INSERT INTO `tms_banners_rows` (`id`, `title`, `pid`, `clid`, `file_name`, `file_ext`, `file_mime`, `width`, `height`, `file_alt`, `imageforswf`, `click_url`, `target`, `bannerhtml`, `add_time`, `publ_time`, `exp_time`, `hits_total`, `act`, `weight`) VALUES
(1, 'Mid-page advertisement', 1, 1, 'webnhanh.jpg', 'png', 'image/jpeg', 575, 72, '', '', 'http://webnhanh.vn', '_blank', '', 1629627264, 1629627264, 0, 0, 1, 1),
(2, 'Left-column advertisement', 2, 1, 'vinades.jpg', 'jpg', 'image/jpeg', 212, 400, '', '', 'http://vinades.vn', '_blank', '', 1629627264, 1629627264, 0, 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tms_config`
--

CREATE TABLE IF NOT EXISTS `tms_config` (
  `lang` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sys',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config_value` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_config`
--

INSERT INTO `tms_config` (`lang`, `module`, `config_name`, `config_value`) VALUES
('sys', 'site', 'admin_theme', 'admin_default'),
('sys', 'site', 'date_pattern', 'l, d/m/Y'),
('sys', 'site', 'time_pattern', 'H:i'),
('sys', 'site', 'online_upd', '1'),
('sys', 'site', 'statistic', '1'),
('sys', 'site', 'site_phone', '02822030777'),
('sys', 'site', 'mailer_mode', 'mail'),
('sys', 'site', 'smtp_host', 'smtp.gmail.com'),
('sys', 'site', 'smtp_ssl', '1'),
('sys', 'site', 'smtp_port', '465'),
('sys', 'site', 'verify_peer_ssl', '1'),
('sys', 'site', 'verify_peer_name_ssl', '1'),
('sys', 'site', 'smtp_username', 'user@gmail.com'),
('sys', 'site', 'smtp_password', ''),
('sys', 'site', 'sender_name', ''),
('sys', 'site', 'sender_email', ''),
('sys', 'site', 'reply_name', ''),
('sys', 'site', 'reply_email', ''),
('sys', 'site', 'force_sender', '0'),
('sys', 'site', 'force_reply', '0'),
('sys', 'site', 'notify_email_error', '0'),
('sys', 'site', 'googleAnalyticsID', ''),
('sys', 'site', 'googleAnalyticsSetDomainName', '0'),
('sys', 'site', 'googleAnalyticsMethod', 'classic'),
('sys', 'site', 'googleAnalytics4ID', ''),
('sys', 'site', 'searchEngineUniqueID', ''),
('sys', 'site', 'zaloOfficialAccountID', ''),
('sys', 'site', 'metaTagsOgp', '1'),
('sys', 'site', 'pageTitleMode', 'pagetitle'),
('sys', 'site', 'description_length', '170'),
('sys', 'site', 'nv_unickmin', '4'),
('sys', 'site', 'nv_unickmax', '20'),
('sys', 'site', 'nv_upassmin', '5'),
('sys', 'site', 'nv_upassmax', '32'),
('sys', 'site', 'dir_forum', ''),
('sys', 'site', 'nv_unick_type', '4'),
('sys', 'site', 'nv_upass_type', '0'),
('sys', 'site', 'allowmailchange', '1'),
('sys', 'site', 'allowuserpublic', '1'),
('sys', 'site', 'allowquestion', '0'),
('sys', 'site', 'allowloginchange', '0'),
('sys', 'site', 'allowuserlogin', '1'),
('sys', 'site', 'allowuserloginmulti', '0'),
('sys', 'site', 'allowuserreg', '2'),
('sys', 'site', 'is_user_forum', '0'),
('sys', 'site', 'openid_servers', ''),
('sys', 'site', 'openid_processing', '0'),
('sys', 'site', 'user_check_pass_time', '59940'),
('sys', 'site', 'auto_login_after_reg', '1'),
('sys', 'site', 'whoviewuser', '2'),
('sys', 'site', 'ssl_https', '0'),
('sys', 'site', 'facebook_client_id', ''),
('sys', 'site', 'facebook_client_secret', ''),
('sys', 'site', 'google_client_id', ''),
('sys', 'site', 'google_client_secret', ''),
('sys', 'site', 'referer_blocker', '1'),
('sys', 'site', 'private_site', '0'),
('sys', 'site', 'max_user_admin', '0'),
('sys', 'site', 'max_user_number', '0'),
('sys', 'site', 'ucaptcha_area', 'r,m,p'),
('sys', 'site', 'ucaptcha_type', 'captcha'),
('sys', 'site', 'dkim_included', 'sendmail,mail'),
('sys', 'site', 'smime_included', 'sendmail,mail'),
('sys', 'site', 'nv_csp', 'script-src &#039;self&#039; *.google.com *.google-analytics.com *.googletagmanager.com *.gstatic.com *.facebook.com *.facebook.net *.twitter.com *.zalo.me *.zaloapp.com &#039;unsafe-inline&#039; &#039;unsafe-eval&#039;;object-src &#039;self&#039;;style-src &#039;self&#039; *.google.com &#039;unsafe-inline&#039;;img-src &#039;self&#039; data: *.twitter.com static.nukeviet.vn;media-src &#039;self&#039;;frame-src &#039;self&#039; *.google.com *.youtube.com *.facebook.com *.facebook.net *.twitter.com *.zalo.me;font-src &#039;self&#039;;connect-src &#039;self&#039; *.zalo.me;form-action &#039;self&#039;;base-uri &#039;self&#039;;'),
('sys', 'site', 'nv_csp_act', '1'),
('sys', 'site', 'nv_rp', 'no-referrer-when-downgrade, strict-origin-when-cross-origin'),
('sys', 'site', 'nv_rp_act', '1'),
('sys', 'site', 'ogp_image', ''),
('sys', 'define', 'nv_gfx_num', '6'),
('sys', 'global', 'closed_site', '0'),
('sys', 'global', 'site_reopening_time', '0'),
('sys', 'global', 'notification_active', '1'),
('sys', 'global', 'notification_autodel', '15'),
('sys', 'global', 'site_keywords', 'NukeViet, portal, mysql, php'),
('sys', 'global', 'block_admin_ip', '0'),
('sys', 'global', 'admfirewall', '0'),
('sys', 'global', 'dump_autobackup', '1'),
('sys', 'global', 'dump_backup_ext', 'gz'),
('sys', 'global', 'dump_backup_day', '30'),
('sys', 'global', 'file_allowed_ext', 'adobe,archives,audio,documents,flash,images,real,video'),
('sys', 'global', 'forbid_extensions', 'htm,html,htmls,js,php,php3,php4,php5,phtml,inc'),
('sys', 'global', 'forbid_mimes', 'application/ecmascript,application/javascript,application/x-javascript,text/ecmascript,text/html,text/javascript,application/x-httpd-php,application/x-httpd-php-source,application/php,application/x-php,text/php,text/x-php'),
('sys', 'global', 'nv_max_size', '11658067968'),
('sys', 'global', 'nv_overflow_size', '0'),
('sys', 'global', 'upload_checking_mode', 'strong'),
('sys', 'global', 'upload_alt_require', '1'),
('sys', 'global', 'upload_auto_alt', '1'),
('sys', 'global', 'upload_chunk_size', '0'),
('sys', 'global', 'useactivate', '2'),
('sys', 'global', 'allow_sitelangs', 'vi'),
('sys', 'global', 'read_type', '0'),
('sys', 'global', 'rewrite_enable', '1'),
('sys', 'global', 'rewrite_optional', '1'),
('sys', 'global', 'rewrite_endurl', '/'),
('sys', 'global', 'rewrite_exturl', '.html'),
('sys', 'global', 'rewrite_op_mod', 'news'),
('sys', 'global', 'autocheckupdate', '0'),
('sys', 'global', 'autoupdatetime', '24'),
('sys', 'global', 'gzip_method', '1'),
('sys', 'global', 'authors_detail_main', '0'),
('sys', 'global', 'spadmin_add_admin', '1'),
('sys', 'global', 'timestamp', '1629631888'),
('sys', 'global', 'version', '4.5.00'),
('sys', 'global', 'cookie_httponly', '1'),
('sys', 'global', 'admin_check_pass_time', '59940'),
('sys', 'global', 'cookie_secure', '0'),
('sys', 'global', 'cookie_SameSite', 'Lax'),
('sys', 'global', 'is_flood_blocker', '1'),
('sys', 'global', 'max_requests_60', '40'),
('sys', 'global', 'max_requests_300', '150'),
('sys', 'global', 'is_login_blocker', '1'),
('sys', 'global', 'login_number_tracking', '5'),
('sys', 'global', 'login_time_tracking', '5'),
('sys', 'global', 'login_time_ban', '30'),
('sys', 'global', 'nv_display_errors_list', '1'),
('sys', 'global', 'display_errors_list', '1'),
('sys', 'global', 'nv_auto_resize', '1'),
('sys', 'global', 'dump_interval', '1'),
('sys', 'global', 'nv_static_url', ''),
('sys', 'global', 'cdn_url', ''),
('sys', 'global', 'two_step_verification', '0'),
('sys', 'global', 'admin_2step_opt', 'code'),
('sys', 'global', 'admin_2step_default', 'code'),
('sys', 'global', 'recaptcha_sitekey', ''),
('sys', 'global', 'recaptcha_secretkey', ''),
('sys', 'global', 'recaptcha_type', 'image'),
('sys', 'global', 'recaptcha_ver', '2'),
('sys', 'global', 'users_special', '0'),
('sys', 'global', 'crosssite_restrict', '1'),
('sys', 'global', 'crosssite_valid_domains', ''),
('sys', 'global', 'crosssite_valid_ips', ''),
('sys', 'global', 'crossadmin_restrict', '1'),
('sys', 'global', 'crossadmin_valid_domains', ''),
('sys', 'global', 'crossadmin_valid_ips', ''),
('sys', 'global', 'domains_whitelist', '["youtube.com","www.youtube.com","google.com","www.google.com","drive.google.com","docs.google.com"]'),
('sys', 'global', 'domains_restrict', '1'),
('sys', 'global', 'remote_api_access', '0'),
('sys', 'global', 'remote_api_log', '1'),
('sys', 'global', 'allow_null_origin', '0'),
('sys', 'global', 'ip_allow_null_origin', ''),
('sys', 'global', 'cookie_notice_popup', '0'),
('sys', 'define', 'nv_gfx_width', '150'),
('sys', 'define', 'nv_gfx_height', '40'),
('sys', 'define', 'nv_max_width', '1500'),
('sys', 'define', 'nv_max_height', '1500'),
('sys', 'define', 'nv_mobile_mode_img', '480'),
('sys', 'define', 'nv_live_cookie_time', '31104000'),
('sys', 'define', 'nv_live_session_time', '0'),
('sys', 'define', 'nv_anti_iframe', '1'),
('sys', 'define', 'nv_anti_agent', '0'),
('sys', 'define', 'nv_allowed_html_tags', 'embed, object, param, a, b, blockquote, br, caption, col, colgroup, div, em, h1, h2, h3, h4, h5, h6, hr, i, img, li, p, span, strong, s, sub, sup, table, tbody, td, th, tr, u, ul, ol, iframe, figure, figcaption, video, audio, source, track, code, pre'),
('sys', 'define', 'nv_debug', '0'),
('vi', 'global', 'site_domain', ''),
('vi', 'global', 'site_name', 'TMS Holdings - Công Ty Cổ Phần TMS Holdings'),
('vi', 'global', 'site_logo', 'uploads/logo_edu.png'),
('vi', 'global', 'site_banner', 'uploads/1_03.png'),
('vi', 'global', 'site_favicon', ''),
('vi', 'global', 'site_description', 'Chia sẻ thành công, kết nối đam mê'),
('vi', 'global', 'site_keywords', ''),
('vi', 'global', 'theme_type', 'r'),
('vi', 'global', 'site_theme', 'default'),
('vi', 'global', 'preview_theme', ''),
('vi', 'global', 'user_allowed_theme', ''),
('vi', 'global', 'mobile_theme', ''),
('vi', 'global', 'site_home_module', 'news'),
('vi', 'global', 'switch_mobi_des', '0'),
('vi', 'global', 'upload_logo', ''),
('vi', 'global', 'upload_logo_pos', 'bottomRight'),
('vi', 'global', 'autologosize1', '50'),
('vi', 'global', 'autologosize2', '40'),
('vi', 'global', 'autologosize3', '30'),
('vi', 'global', 'autologomod', ''),
('vi', 'global', 'name_show', '0'),
('vi', 'global', 'cronjobs_next_time', '1629631944'),
('vi', 'global', 'disable_site_content', 'Vì lý do kỹ thuật website tạm ngưng hoạt động. Thành thật xin lỗi các bạn vì sự bất tiện này!'),
('vi', 'seotools', 'prcservice', ''),
('vi', 'about', 'auto_postcomm', '1'),
('vi', 'about', 'allowed_comm', '-1'),
('vi', 'about', 'view_comm', '6'),
('vi', 'about', 'setcomm', '4'),
('vi', 'about', 'activecomm', '0'),
('vi', 'about', 'emailcomm', '0'),
('vi', 'about', 'adminscomm', ''),
('vi', 'about', 'sortcomm', '0'),
('vi', 'about', 'captcha_area_comm', '1'),
('vi', 'about', 'captcha_type_comm', 'captcha'),
('vi', 'about', 'perpagecomm', '5'),
('vi', 'about', 'timeoutcomm', '360'),
('vi', 'about', 'allowattachcomm', '0'),
('vi', 'about', 'alloweditorcomm', '0'),
('vi', 'news', 'indexfile', 'viewcat_main_right'),
('vi', 'news', 'mobile_indexfile', 'viewcat_page_new'),
('vi', 'news', 'per_page', '20'),
('vi', 'news', 'st_links', '10'),
('vi', 'news', 'homewidth', '200'),
('vi', 'news', 'homeheight', '160'),
('vi', 'news', 'blockwidth', '70'),
('vi', 'news', 'blockheight', '75'),
('vi', 'news', 'imagefull', '460'),
('vi', 'news', 'copyright', 'Chú ý: Việc đăng lại bài viết trên ở website hoặc các phương tiện truyền thông khác mà không ghi rõ nguồn http://nukeviet.vn là vi phạm bản quyền'),
('vi', 'news', 'showtooltip', '1'),
('vi', 'news', 'tooltip_position', 'bottom'),
('vi', 'news', 'tooltip_length', '150'),
('vi', 'news', 'showhometext', '1'),
('vi', 'news', 'timecheckstatus', '0'),
('vi', 'news', 'config_source', '0'),
('vi', 'news', 'show_no_image', ''),
('vi', 'news', 'allowed_rating', '1'),
('vi', 'news', 'allowed_rating_point', '1'),
('vi', 'news', 'facebookappid', ''),
('vi', 'news', 'socialbutton', 'facebook,twitter'),
('vi', 'news', 'alias_lower', '1'),
('vi', 'news', 'tags_alias', '0'),
('vi', 'news', 'auto_tags', '0'),
('vi', 'news', 'tags_remind', '1'),
('vi', 'news', 'keywords_tag', '1'),
('vi', 'news', 'copy_news', '0'),
('vi', 'news', 'structure_upload', 'Ym'),
('vi', 'news', 'imgposition', '2'),
('vi', 'news', 'htmlhometext', '0'),
('vi', 'news', 'order_articles', '0'),
('vi', 'news', 'identify_cat_change', '0'),
('vi', 'news', 'elas_use', '0'),
('vi', 'news', 'elas_host', ''),
('vi', 'news', 'elas_port', '9200'),
('vi', 'news', 'elas_index', ''),
('vi', 'news', 'instant_articles_active', '0'),
('vi', 'news', 'instant_articles_template', 'default'),
('vi', 'news', 'instant_articles_httpauth', '0'),
('vi', 'news', 'instant_articles_username', ''),
('vi', 'news', 'instant_articles_password', ''),
('vi', 'news', 'instant_articles_livetime', '60'),
('vi', 'news', 'instant_articles_gettime', '120'),
('vi', 'news', 'instant_articles_auto', '1'),
('vi', 'news', 'auto_postcomm', '1'),
('vi', 'news', 'allowed_comm', '-1'),
('vi', 'news', 'view_comm', '6'),
('vi', 'news', 'setcomm', '4'),
('vi', 'news', 'activecomm', '1'),
('vi', 'news', 'emailcomm', '0'),
('vi', 'news', 'adminscomm', ''),
('vi', 'news', 'sortcomm', '0'),
('vi', 'news', 'captcha_area_comm', '1'),
('vi', 'news', 'captcha_type_comm', 'captcha'),
('vi', 'news', 'perpagecomm', '5'),
('vi', 'news', 'timeoutcomm', '360'),
('vi', 'news', 'allowattachcomm', '0'),
('vi', 'news', 'alloweditorcomm', '0'),
('vi', 'news', 'frontend_edit_alias', '0'),
('vi', 'news', 'frontend_edit_layout', '1'),
('vi', 'news', 'ucaptcha_type', 'captcha'),
('vi', 'news', 'scaptcha_type', 'captcha'),
('vi', 'contact', 'bodytext', 'Để không ngừng nâng cao chất lượng dịch vụ và đáp ứng tốt hơn nữa các yêu cầu của Quý khách, chúng tôi mong muốn nhận được các thông tin phản hồi. Nếu Quý khách có bất kỳ thắc mắc hoặc đóng góp nào, xin vui lòng liên hệ với chúng tôi theo thông tin dưới đây. Chúng tôi sẽ phản hồi lại Quý khách trong thời gian sớm nhất.<br />&nbsp;<iframe allowfullscreen="" loading="lazy" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15675.320392106616!2d106.6793536!3d10.8243109!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9f01852e4e7a1a9c!2sTMS%20HOLDINGS!5e0!3m2!1svi!2s!4v1629631135269!5m2!1svi!2s" style="border:0;width:100%; height:300px"></iframe>'),
('vi', 'contact', 'sendcopymode', '0'),
('vi', 'contact', 'captcha_type', 'captcha'),
('vi', 'voting', 'difftimeout', '3600'),
('vi', 'voting', 'captcha_type', 'captcha'),
('sys', 'banners', 'captcha_type', 'captcha'),
('vi', 'page', 'auto_postcomm', '1'),
('vi', 'page', 'allowed_comm', '-1'),
('vi', 'page', 'view_comm', '6'),
('vi', 'page', 'setcomm', '4'),
('vi', 'page', 'activecomm', '0'),
('vi', 'page', 'emailcomm', '0'),
('vi', 'page', 'adminscomm', ''),
('vi', 'page', 'sortcomm', '0'),
('vi', 'page', 'captcha_area_comm', '1'),
('vi', 'page', 'captcha_type_comm', 'captcha'),
('vi', 'page', 'perpagecomm', '5'),
('vi', 'page', 'timeoutcomm', '360'),
('vi', 'page', 'allowattachcomm', '0'),
('vi', 'page', 'alloweditorcomm', '0'),
('vi', 'siteterms', 'auto_postcomm', '1'),
('vi', 'siteterms', 'allowed_comm', '-1'),
('vi', 'siteterms', 'view_comm', '6'),
('vi', 'siteterms', 'setcomm', '4'),
('vi', 'siteterms', 'activecomm', '0'),
('vi', 'siteterms', 'emailcomm', '0'),
('vi', 'siteterms', 'adminscomm', ''),
('vi', 'siteterms', 'sortcomm', '0'),
('vi', 'siteterms', 'captcha_area_comm', '1'),
('vi', 'siteterms', 'captcha_type_comm', 'captcha'),
('vi', 'siteterms', 'perpagecomm', '5'),
('vi', 'siteterms', 'timeoutcomm', '360'),
('vi', 'siteterms', 'allowattachcomm', '0'),
('vi', 'siteterms', 'alloweditorcomm', '0'),
('vi', 'freecontent', 'next_execute', '0'),
('sys', 'site', 'statistics_timezone', 'Asia/Bangkok'),
('sys', 'site', 'site_email', 'info@tms.vn'),
('sys', 'global', 'error_set_logs', '1'),
('sys', 'global', 'error_send_email', 'info@tms.vn'),
('sys', 'global', 'site_lang', 'vi'),
('sys', 'global', 'my_domains', 'tintuc.vn,tintuc.nukeviet.pro'),
('sys', 'global', 'cookie_prefix', 'nv4'),
('sys', 'global', 'session_prefix', 'nv4s_w6d4WB'),
('sys', 'global', 'site_timezone', 'byCountry'),
('sys', 'global', 'proxy_blocker', '0'),
('sys', 'global', 'str_referer_blocker', '0'),
('sys', 'global', 'lang_multi', '0'),
('sys', 'global', 'lang_geo', '0'),
('sys', 'global', 'ftp_server', 'localhost'),
('sys', 'global', 'ftp_port', '21'),
('sys', 'global', 'ftp_user_name', ''),
('sys', 'global', 'ftp_user_pass', '3E-Ucz6paZd8vP95ZA3JmA,,'),
('sys', 'global', 'ftp_path', '/'),
('sys', 'global', 'ftp_check_login', '0'),
('vi', 'audio', 'next_execute', '0'),
('vi', 'download', 'auto_postcomm', '1'),
('vi', 'download', 'allowed_comm', '-1'),
('vi', 'download', 'view_comm', '6'),
('vi', 'download', 'setcomm', '4'),
('vi', 'download', 'activecomm', '1'),
('vi', 'download', 'emailcomm', '0'),
('vi', 'download', 'adminscomm', ''),
('vi', 'download', 'sortcomm', '0'),
('vi', 'download', 'captcha', '1'),
('vi', 'download', 'perpagecomm', '5'),
('vi', 'download', 'timeoutcomm', '360'),
('vi', 'download', 'allowattachcomm', '0'),
('vi', 'download', 'alloweditorcomm', '0'),
('vi', 'laws', 'auto_postcomm', '0'),
('vi', 'laws', 'captcha_area_comm', '1'),
('vi', 'laws', 'captcha_type_comm', 'captcha'),
('vi', 'laws', 'allowed_comm', '6'),
('vi', 'laws', 'view_comm', '6'),
('vi', 'laws', 'setcomm', '4'),
('vi', 'laws', 'activecomm', '0'),
('vi', 'laws', 'emailcomm', '0'),
('vi', 'laws', 'adminscomm', ''),
('vi', 'laws', 'sortcomm', '0'),
('vi', 'laws', 'captcha', '1'),
('vi', 'laws', 'perpagecomm', '5'),
('vi', 'laws', 'timeoutcomm', '360'),
('vi', 'laws', 'allowattachcomm', '0'),
('vi', 'laws', 'alloweditorcomm', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tms_cookies`
--

CREATE TABLE IF NOT EXISTS `tms_cookies` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT '0',
  `secure` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_counter`
--

CREATE TABLE IF NOT EXISTS `tms_counter` (
  `c_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_val` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update` int(11) NOT NULL DEFAULT '0',
  `c_count` int(11) unsigned NOT NULL DEFAULT '0',
  `vi_count` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_counter`
--

INSERT INTO `tms_counter` (`c_type`, `c_val`, `last_update`, `c_count`, `vi_count`) VALUES
('c_time', 'start', 0, 0, 0),
('c_time', 'last', 0, 1629631459, 0),
('total', 'hits', 1629631459, 3, 3),
('year', '2021', 1629631459, 3, 3),
('year', '2022', 0, 0, 0),
('year', '2023', 0, 0, 0),
('year', '2024', 0, 0, 0),
('year', '2025', 0, 0, 0),
('year', '2026', 0, 0, 0),
('year', '2027', 0, 0, 0),
('year', '2028', 0, 0, 0),
('year', '2029', 0, 0, 0),
('month', 'Jan', 0, 0, 0),
('month', 'Feb', 0, 0, 0),
('month', 'Mar', 0, 0, 0),
('month', 'Apr', 0, 0, 0),
('month', 'May', 0, 0, 0),
('month', 'Jun', 0, 0, 0),
('month', 'Jul', 0, 0, 0),
('month', 'Aug', 1629631459, 3, 3),
('month', 'Sep', 0, 0, 0),
('month', 'Oct', 0, 0, 0),
('month', 'Nov', 0, 0, 0),
('month', 'Dec', 0, 0, 0),
('day', '01', 0, 0, 0),
('day', '02', 0, 0, 0),
('day', '03', 0, 0, 0),
('day', '04', 0, 0, 0),
('day', '05', 0, 0, 0),
('day', '06', 0, 0, 0),
('day', '07', 0, 0, 0),
('day', '08', 0, 0, 0),
('day', '09', 0, 0, 0),
('day', '10', 0, 0, 0),
('day', '11', 0, 0, 0),
('day', '12', 0, 0, 0),
('day', '13', 0, 0, 0),
('day', '14', 0, 0, 0),
('day', '15', 0, 0, 0),
('day', '16', 0, 0, 0),
('day', '17', 0, 0, 0),
('day', '18', 0, 0, 0),
('day', '19', 0, 0, 0),
('day', '20', 0, 0, 0),
('day', '21', 0, 0, 0),
('day', '22', 1629631459, 3, 3),
('day', '23', 0, 0, 0),
('day', '24', 0, 0, 0),
('day', '25', 0, 0, 0),
('day', '26', 0, 0, 0),
('day', '27', 0, 0, 0),
('day', '28', 0, 0, 0),
('day', '29', 0, 0, 0),
('day', '30', 0, 0, 0),
('day', '31', 0, 0, 0),
('dayofweek', 'Sunday', 1629631459, 3, 3),
('dayofweek', 'Monday', 0, 0, 0),
('dayofweek', 'Tuesday', 0, 0, 0),
('dayofweek', 'Wednesday', 0, 0, 0),
('dayofweek', 'Thursday', 0, 0, 0),
('dayofweek', 'Friday', 0, 0, 0),
('dayofweek', 'Saturday', 0, 0, 0),
('hour', '00', 0, 0, 0),
('hour', '01', 0, 0, 0),
('hour', '02', 0, 0, 0),
('hour', '03', 0, 0, 0),
('hour', '04', 0, 0, 0),
('hour', '05', 0, 0, 0),
('hour', '06', 0, 0, 0),
('hour', '07', 0, 0, 0),
('hour', '08', 0, 0, 0),
('hour', '09', 0, 0, 0),
('hour', '10', 0, 0, 0),
('hour', '11', 0, 0, 0),
('hour', '12', 0, 0, 0),
('hour', '13', 0, 0, 0),
('hour', '14', 0, 0, 0),
('hour', '15', 0, 0, 0),
('hour', '16', 0, 0, 0),
('hour', '17', 1629629469, 2, 2),
('hour', '18', 1629631459, 1, 1),
('hour', '19', 0, 0, 0),
('hour', '20', 0, 0, 0),
('hour', '21', 0, 0, 0),
('hour', '22', 0, 0, 0),
('hour', '23', 0, 0, 0),
('bot', 'googlebot', 0, 0, 0),
('bot', 'msnbot', 0, 0, 0),
('bot', 'bingbot', 0, 0, 0),
('bot', 'yahooslurp', 0, 0, 0),
('bot', 'w3cvalidator', 0, 0, 0),
('browser', 'opera', 0, 0, 0),
('browser', 'operamini', 0, 0, 0),
('browser', 'webtv', 0, 0, 0),
('browser', 'explorer', 0, 0, 0),
('browser', 'edge', 0, 0, 0),
('browser', 'pocket', 0, 0, 0),
('browser', 'konqueror', 0, 0, 0),
('browser', 'icab', 0, 0, 0),
('browser', 'omniweb', 0, 0, 0),
('browser', 'firebird', 0, 0, 0),
('browser', 'firefox', 0, 0, 0),
('browser', 'iceweasel', 0, 0, 0),
('browser', 'shiretoko', 0, 0, 0),
('browser', 'mozilla', 0, 0, 0),
('browser', 'amaya', 0, 0, 0),
('browser', 'lynx', 0, 0, 0),
('browser', 'safari', 0, 0, 0),
('browser', 'iphone', 0, 0, 0),
('browser', 'ipod', 0, 0, 0),
('browser', 'ipad', 0, 0, 0),
('browser', 'chrome', 1629631459, 3, 3),
('browser', 'cococ', 0, 0, 0),
('browser', 'android', 0, 0, 0),
('browser', 'googlebot', 0, 0, 0),
('browser', 'yahooslurp', 0, 0, 0),
('browser', 'w3cvalidator', 0, 0, 0),
('browser', 'blackberry', 0, 0, 0),
('browser', 'icecat', 0, 0, 0),
('browser', 'nokias60', 0, 0, 0),
('browser', 'nokia', 0, 0, 0),
('browser', 'msn', 0, 0, 0),
('browser', 'msnbot', 0, 0, 0),
('browser', 'bingbot', 0, 0, 0),
('browser', 'netscape', 0, 0, 0),
('browser', 'galeon', 0, 0, 0),
('browser', 'netpositive', 0, 0, 0),
('browser', 'phoenix', 0, 0, 0),
('browser', 'Mobile', 0, 0, 0),
('browser', 'bots', 0, 0, 0),
('browser', 'Unknown', 0, 0, 0),
('os', 'unknown', 0, 0, 0),
('os', 'win', 0, 0, 0),
('os', 'win10', 1629631459, 3, 3),
('os', 'win8', 0, 0, 0),
('os', 'win7', 0, 0, 0),
('os', 'win2003', 0, 0, 0),
('os', 'winvista', 0, 0, 0),
('os', 'wince', 0, 0, 0),
('os', 'winxp', 0, 0, 0),
('os', 'win2000', 0, 0, 0),
('os', 'apple', 0, 0, 0),
('os', 'linux', 0, 0, 0),
('os', 'os2', 0, 0, 0),
('os', 'beos', 0, 0, 0),
('os', 'iphone', 0, 0, 0),
('os', 'ipod', 0, 0, 0),
('os', 'ipad', 0, 0, 0),
('os', 'blackberry', 0, 0, 0),
('os', 'nokia', 0, 0, 0),
('os', 'freebsd', 0, 0, 0),
('os', 'openbsd', 0, 0, 0),
('os', 'netbsd', 0, 0, 0),
('os', 'sunos', 0, 0, 0),
('os', 'opensolaris', 0, 0, 0),
('os', 'android', 0, 0, 0),
('os', 'irix', 0, 0, 0),
('os', 'palm', 0, 0, 0),
('country', 'AD', 0, 0, 0),
('country', 'AE', 0, 0, 0),
('country', 'AF', 0, 0, 0),
('country', 'AG', 0, 0, 0),
('country', 'AI', 0, 0, 0),
('country', 'AL', 0, 0, 0),
('country', 'AM', 0, 0, 0),
('country', 'AN', 0, 0, 0),
('country', 'AO', 0, 0, 0),
('country', 'AQ', 0, 0, 0),
('country', 'AR', 0, 0, 0),
('country', 'AS', 0, 0, 0),
('country', 'AT', 0, 0, 0),
('country', 'AU', 0, 0, 0),
('country', 'AW', 0, 0, 0),
('country', 'AZ', 0, 0, 0),
('country', 'BA', 0, 0, 0),
('country', 'BB', 0, 0, 0),
('country', 'BD', 0, 0, 0),
('country', 'BE', 0, 0, 0),
('country', 'BF', 0, 0, 0),
('country', 'BG', 0, 0, 0),
('country', 'BH', 0, 0, 0),
('country', 'BI', 0, 0, 0),
('country', 'BJ', 0, 0, 0),
('country', 'BM', 0, 0, 0),
('country', 'BN', 0, 0, 0),
('country', 'BO', 0, 0, 0),
('country', 'BR', 0, 0, 0),
('country', 'BS', 0, 0, 0),
('country', 'BT', 0, 0, 0),
('country', 'BW', 0, 0, 0),
('country', 'BY', 0, 0, 0),
('country', 'BZ', 0, 0, 0),
('country', 'CA', 0, 0, 0),
('country', 'CD', 0, 0, 0),
('country', 'CF', 0, 0, 0),
('country', 'CG', 0, 0, 0),
('country', 'CH', 0, 0, 0),
('country', 'CI', 0, 0, 0),
('country', 'CK', 0, 0, 0),
('country', 'CL', 0, 0, 0),
('country', 'CM', 0, 0, 0),
('country', 'CN', 0, 0, 0),
('country', 'CO', 0, 0, 0),
('country', 'CR', 0, 0, 0),
('country', 'CS', 0, 0, 0),
('country', 'CU', 0, 0, 0),
('country', 'CV', 0, 0, 0),
('country', 'CY', 0, 0, 0),
('country', 'CZ', 0, 0, 0),
('country', 'DE', 0, 0, 0),
('country', 'DJ', 0, 0, 0),
('country', 'DK', 0, 0, 0),
('country', 'DM', 0, 0, 0),
('country', 'DO', 0, 0, 0),
('country', 'DZ', 0, 0, 0),
('country', 'EC', 0, 0, 0),
('country', 'EE', 0, 0, 0),
('country', 'EG', 0, 0, 0),
('country', 'ER', 0, 0, 0),
('country', 'ES', 0, 0, 0),
('country', 'ET', 0, 0, 0),
('country', 'EU', 0, 0, 0),
('country', 'FI', 0, 0, 0),
('country', 'FJ', 0, 0, 0),
('country', 'FK', 0, 0, 0),
('country', 'FM', 0, 0, 0),
('country', 'FO', 0, 0, 0),
('country', 'FR', 0, 0, 0),
('country', 'GA', 0, 0, 0),
('country', 'GB', 0, 0, 0),
('country', 'GD', 0, 0, 0),
('country', 'GE', 0, 0, 0),
('country', 'GF', 0, 0, 0),
('country', 'GH', 0, 0, 0),
('country', 'GI', 0, 0, 0),
('country', 'GL', 0, 0, 0),
('country', 'GM', 0, 0, 0),
('country', 'GN', 0, 0, 0),
('country', 'GP', 0, 0, 0),
('country', 'GQ', 0, 0, 0),
('country', 'GR', 0, 0, 0),
('country', 'GS', 0, 0, 0),
('country', 'GT', 0, 0, 0),
('country', 'GU', 0, 0, 0),
('country', 'GW', 0, 0, 0),
('country', 'GY', 0, 0, 0),
('country', 'HK', 0, 0, 0),
('country', 'HN', 0, 0, 0),
('country', 'HR', 0, 0, 0),
('country', 'HT', 0, 0, 0),
('country', 'HU', 0, 0, 0),
('country', 'ID', 0, 0, 0),
('country', 'IE', 0, 0, 0),
('country', 'IL', 0, 0, 0),
('country', 'IN', 0, 0, 0),
('country', 'IO', 0, 0, 0),
('country', 'IQ', 0, 0, 0),
('country', 'IR', 0, 0, 0),
('country', 'IS', 0, 0, 0),
('country', 'IT', 0, 0, 0),
('country', 'JM', 0, 0, 0),
('country', 'JO', 0, 0, 0),
('country', 'JP', 0, 0, 0),
('country', 'KE', 0, 0, 0),
('country', 'KG', 0, 0, 0),
('country', 'KH', 0, 0, 0),
('country', 'KI', 0, 0, 0),
('country', 'KM', 0, 0, 0),
('country', 'KN', 0, 0, 0),
('country', 'KR', 0, 0, 0),
('country', 'KW', 0, 0, 0),
('country', 'KY', 0, 0, 0),
('country', 'KZ', 0, 0, 0),
('country', 'LA', 0, 0, 0),
('country', 'LB', 0, 0, 0),
('country', 'LC', 0, 0, 0),
('country', 'LI', 0, 0, 0),
('country', 'LK', 0, 0, 0),
('country', 'LR', 0, 0, 0),
('country', 'LS', 0, 0, 0),
('country', 'LT', 0, 0, 0),
('country', 'LU', 0, 0, 0),
('country', 'LV', 0, 0, 0),
('country', 'LY', 0, 0, 0),
('country', 'MA', 0, 0, 0),
('country', 'MC', 0, 0, 0),
('country', 'MD', 0, 0, 0),
('country', 'MG', 0, 0, 0),
('country', 'MH', 0, 0, 0),
('country', 'MK', 0, 0, 0),
('country', 'ML', 0, 0, 0),
('country', 'MM', 0, 0, 0),
('country', 'MN', 0, 0, 0),
('country', 'MO', 0, 0, 0),
('country', 'MP', 0, 0, 0),
('country', 'MQ', 0, 0, 0),
('country', 'MR', 0, 0, 0),
('country', 'MT', 0, 0, 0),
('country', 'MU', 0, 0, 0),
('country', 'MV', 0, 0, 0),
('country', 'MW', 0, 0, 0),
('country', 'MX', 0, 0, 0),
('country', 'MY', 0, 0, 0),
('country', 'MZ', 0, 0, 0),
('country', 'NA', 0, 0, 0),
('country', 'NC', 0, 0, 0),
('country', 'NE', 0, 0, 0),
('country', 'NF', 0, 0, 0),
('country', 'NG', 0, 0, 0),
('country', 'NI', 0, 0, 0),
('country', 'NL', 0, 0, 0),
('country', 'NO', 0, 0, 0),
('country', 'NP', 0, 0, 0),
('country', 'NR', 0, 0, 0),
('country', 'NU', 0, 0, 0),
('country', 'NZ', 0, 0, 0),
('country', 'OM', 0, 0, 0),
('country', 'PA', 0, 0, 0),
('country', 'PE', 0, 0, 0),
('country', 'PF', 0, 0, 0),
('country', 'PG', 0, 0, 0),
('country', 'PH', 0, 0, 0),
('country', 'PK', 0, 0, 0),
('country', 'PL', 0, 0, 0),
('country', 'PR', 0, 0, 0),
('country', 'PS', 0, 0, 0),
('country', 'PT', 0, 0, 0),
('country', 'PW', 0, 0, 0),
('country', 'PY', 0, 0, 0),
('country', 'QA', 0, 0, 0),
('country', 'RE', 0, 0, 0),
('country', 'RO', 0, 0, 0),
('country', 'RU', 0, 0, 0),
('country', 'RW', 0, 0, 0),
('country', 'SA', 0, 0, 0),
('country', 'SB', 0, 0, 0),
('country', 'SC', 0, 0, 0),
('country', 'SD', 0, 0, 0),
('country', 'SE', 0, 0, 0),
('country', 'SG', 0, 0, 0),
('country', 'SI', 0, 0, 0),
('country', 'SK', 0, 0, 0),
('country', 'SL', 0, 0, 0),
('country', 'SM', 0, 0, 0),
('country', 'SN', 0, 0, 0),
('country', 'SO', 0, 0, 0),
('country', 'SR', 0, 0, 0),
('country', 'ST', 0, 0, 0),
('country', 'SV', 0, 0, 0),
('country', 'SY', 0, 0, 0),
('country', 'SZ', 0, 0, 0),
('country', 'TD', 0, 0, 0),
('country', 'TF', 0, 0, 0),
('country', 'TG', 0, 0, 0),
('country', 'TH', 0, 0, 0),
('country', 'TJ', 0, 0, 0),
('country', 'TK', 0, 0, 0),
('country', 'TL', 0, 0, 0),
('country', 'TM', 0, 0, 0),
('country', 'TN', 0, 0, 0),
('country', 'TO', 0, 0, 0),
('country', 'TR', 0, 0, 0),
('country', 'TT', 0, 0, 0),
('country', 'TV', 0, 0, 0),
('country', 'TW', 0, 0, 0),
('country', 'TZ', 0, 0, 0),
('country', 'UA', 0, 0, 0),
('country', 'UG', 0, 0, 0),
('country', 'US', 0, 0, 0),
('country', 'UY', 0, 0, 0),
('country', 'UZ', 0, 0, 0),
('country', 'VA', 0, 0, 0),
('country', 'VC', 0, 0, 0),
('country', 'VE', 0, 0, 0),
('country', 'VG', 0, 0, 0),
('country', 'VI', 0, 0, 0),
('country', 'VN', 0, 0, 0),
('country', 'VU', 0, 0, 0),
('country', 'WS', 0, 0, 0),
('country', 'YE', 0, 0, 0),
('country', 'YT', 0, 0, 0),
('country', 'YU', 0, 0, 0),
('country', 'ZA', 0, 0, 0),
('country', 'ZM', 0, 0, 0),
('country', 'ZW', 0, 0, 0),
('country', 'ZZ', 1629631459, 3, 3),
('country', 'unkown', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tms_cronjobs`
--

CREATE TABLE IF NOT EXISTS `tms_cronjobs` (
  `id` mediumint(8) unsigned NOT NULL,
  `start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `inter_val` int(11) unsigned NOT NULL DEFAULT '0',
  `inter_val_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0: Lặp lại sau thời điểm bắt đầu thực tế, 1:lặp lại sau thời điểm bắt đầu trong CSDL',
  `run_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `run_func` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_sys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `last_time` int(11) unsigned NOT NULL DEFAULT '0',
  `last_result` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vi_cron_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_cronjobs`
--

INSERT INTO `tms_cronjobs` (`id`, `start_time`, `inter_val`, `inter_val_type`, `run_file`, `run_func`, `params`, `del`, `is_sys`, `act`, `last_time`, `last_result`, `vi_cron_name`) VALUES
(1, 1629627264, 5, 0, 'online_expired_del.php', 'cron_online_expired_del', '', 0, 1, 1, 1629631644, 1, 'Xóa các dòng ghi trạng thái online đã cũ trong CSDL'),
(2, 1629627264, 1440, 0, 'dump_autobackup.php', 'cron_dump_autobackup', '', 0, 1, 1, 1629627311, 1, 'Tự động lưu CSDL'),
(3, 1629627264, 60, 0, 'temp_download_destroy.php', 'cron_auto_del_temp_download', '', 0, 1, 1, 1629631040, 1, 'Xóa các file tạm trong thư mục tmp'),
(4, 1629627264, 30, 0, 'ip_logs_destroy.php', 'cron_del_ip_logs', '', 0, 1, 1, 1629631341, 1, 'Xóa IP log files, Xóa các file nhật ký truy cập'),
(5, 1629627264, 1440, 0, 'error_log_destroy.php', 'cron_auto_del_error_log', '', 0, 1, 1, 1629627311, 1, 'Xóa các file error_log quá hạn'),
(6, 1629627264, 360, 0, 'error_log_sendmail.php', 'cron_auto_sendmail_error_log', '', 0, 1, 0, 0, 0, 'Gửi email các thông báo lỗi cho admin'),
(7, 1629627264, 60, 0, 'ref_expired_del.php', 'cron_ref_expired_del', '', 0, 1, 1, 1629631040, 1, 'Xóa các referer quá hạn'),
(8, 1629627264, 60, 0, 'check_version.php', 'cron_auto_check_version', '', 0, 1, 1, 1629631040, 1, 'Kiểm tra phiên bản NukeViet'),
(9, 1629627264, 1440, 0, 'notification_autodel.php', 'cron_notification_autodel', '', 0, 1, 1, 1629627311, 1, 'Xóa thông báo cũ');

-- --------------------------------------------------------

--
-- Table structure for table `tms_extension_files`
--

CREATE TABLE IF NOT EXISTS `tms_extension_files` (
  `idfile` mediumint(8) unsigned NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastmodified` int(11) unsigned NOT NULL DEFAULT '0',
  `duplicate` smallint(4) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_ips`
--

CREATE TABLE IF NOT EXISTS `tms_ips` (
  `id` mediumint(8) NOT NULL,
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `area` tinyint(3) NOT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_ips`
--

INSERT INTO `tms_ips` (`id`, `type`, `ip`, `mask`, `area`, `begintime`, `endtime`, `notice`) VALUES
(1, 1, '127.0.0.1', 0, 1, 1629627309, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tms_language`
--

CREATE TABLE IF NOT EXISTS `tms_language` (
  `id` mediumint(8) unsigned NOT NULL,
  `idfile` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lang_module',
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_language_file`
--

CREATE TABLE IF NOT EXISTS `tms_language_file` (
  `idfile` mediumint(8) unsigned NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_file` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lang_module'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_logs`
--

CREATE TABLE IF NOT EXISTS `tms_logs` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_acess` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL,
  `log_time` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_logs`
--

INSERT INTO `tms_logs` (`id`, `lang`, `module_name`, `name_key`, `note_action`, `link_acess`, `userid`, `log_time`) VALUES
(1, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:127.0.0.1', '', 0, 1629627317),
(2, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1629627324),
(3, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1629627632),
(4, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1629628185),
(5, 'vi', 'upload', 'Upload file', 'uploads/news/2021_08/mhd.jpg', '', 1, 1629628256),
(6, 'vi', 'news', 'Sửa bài viết', 'Thu thập dữ liệu tài nguyên và môi trường năm 2019 trên địa bàn tỉnh Bình Dương', '', 1, 1629628260),
(7, 'vi', 'news', 'Sửa bài viết', 'Hướng dẫn trình tự thực hiện xã hội hóa theo Nghị định 69&#x002F;2008&#x002F;NĐ-CP, 59&#x002F;2014&#x002F;NĐ-CP trên địa bàn tỉnh Bình Dương', '', 1, 1629628325),
(8, 'vi', 'news', 'Sửa bài viết', 'Phối hợp xây dựng Hệ thống thông tin phục vụ họp và xử lý công việc của Chính phủ', '', 1, 1629628350),
(9, 'vi', 'news', 'Sửa bài viết', 'Chăm sóc vì sự phát triển toàn diện trẻ em trong những năm đầu đời tại gia đình và cộng đồng tỉnh Bình Dương giai đoạn 2019 - 2025', '', 1, 1629628369),
(10, 'vi', 'upload', 'Tạo lại ảnh thumb', 'uploads/news', '', 1, 1629628397),
(11, 'vi', 'upload', 'Tạo lại ảnh thumb', 'uploads/news', '', 1, 1629628398),
(12, 'vi', 'upload', 'Tạo lại ảnh thumb', 'uploads/news', '', 1, 1629628401),
(13, 'vi', 'upload', 'Tạo lại ảnh thumb', 'uploads/news', '', 1, 1629628403),
(14, 'vi', 'upload', 'Tạo lại ảnh thumb', 'uploads/news', '', 1, 1629628405),
(15, 'vi', 'upload', 'Tạo lại ảnh thumb', 'uploads/news', '', 1, 1629628407),
(16, 'vi', 'upload', 'Tạo lại ảnh thumb', 'uploads/news', '', 1, 1629628409),
(17, 'vi', 'upload', 'Tạo lại ảnh thumb', 'uploads/news', '', 1, 1629628411),
(18, 'vi', 'upload', 'Tạo lại ảnh thumb', 'uploads/news', '', 1, 1629628413),
(19, 'vi', 'upload', 'Tạo lại ảnh thumb', 'uploads/news', '', 1, 1629628415),
(20, 'vi', 'news', 'Sửa bài viết', 'Kế hoạch hoạt động và kinh phí năm 2019 của Dự án &quot;Quỹ toàn cầu Phòng, chống HIV&#x002F;AIDS giai đoạn 2018-2020&quot;', '', 1, 1629628487),
(21, 'vi', 'news', 'Sửa bài viết', 'Trao Giải thưởng Môi trường tỉnh Bình Dương năm 2019', '', 1, 1629628508),
(22, 'vi', 'news', 'Sửa bài viết', 'Kế hoạch hoạt động kiểm soát thủ tục hành chính năm 2019 trên địa bàn tỉnh Bình Dương', '', 1, 1629628527),
(23, 'vi', 'news', 'Sửa bài viết', 'Lấy ý kiến đề nghị tặng Huân chương Lao động hạng Ba', '', 1, 1629628544),
(24, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1629628622),
(25, 'vi', 'menu', 'Add menu', 'Menu id: 2', '', 1, 1629628653),
(26, 'vi', 'themes', 'Thêm block', 'Name : Danh mục', '', 1, 1629628722),
(27, 'vi', 'modules', 'Kích hoạt module "banners"', 'Không', '', 1, 1629628734),
(28, 'vi', 'themes', 'Cập nhật lại vị trí các block', 'reset position all block', '', 1, 1629628760),
(29, 'vi', 'themes', 'Sửa block', 'Name : Thống kê', '', 1, 1629628774),
(30, 'vi', 'themes', 'Sửa block', 'Name : Thăm dò ý kiến', '', 1, 1629628784),
(31, 'vi', 'themes', 'Cập nhật lại vị trí các block', 'reset position all block', '', 1, 1629628789),
(32, 'vi', 'menu', 'Del row menu', 'Row menu id: 23,24,25,26,27,28,29,30,31', '', 1, 1629629028),
(33, 'vi', 'menu', 'Add row menu', 'Row menu id: 32 of Menu id: 2', '', 1, 1629629031),
(34, 'vi', 'menu', 'Add row menu', 'Row menu id: 41 of Menu id: 2', '', 1, 1629629038),
(35, 'vi', 'menu', 'Add row menu', 'Row menu id: 51 of Menu id: 2', '', 1, 1629629045),
(36, 'vi', 'menu', 'Del row menu', 'Row menu id: 48,49,50', '', 1, 1629629054),
(37, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1629629364),
(38, 'vi', 'menu', 'Del row menu', 'Row menu id: 37,39,40', '', 1, 1629629391),
(39, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1629629450),
(40, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1629629468),
(41, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1629629733),
(42, 'vi', 'modules', 'Thiết lập module mới audio', '', '', 1, 1629630716),
(43, 'vi', 'modules', 'Sửa module &ldquo;audio&rdquo;', '', '', 1, 1629630718),
(44, 'vi', 'users', 'Xóa nhóm', 'group_id: 12', '', 1, 1629630723),
(45, 'vi', 'users', 'Xóa nhóm', 'group_id: 11', '', 1, 1629630726),
(46, 'vi', 'users', 'Xóa nhóm', 'group_id: 10', '', 1, 1629630728),
(47, 'vi', 'authors', 'Lưu thay đổi Cấu hình', 'config', '', 1, 1629630734),
(48, 'vi', 'users', 'Thay đổi cấu hình module', '', '', 1, 1629630741),
(49, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1629630760),
(50, 'vi', 'themes', 'Thêm block', 'Name : Audio', '', 1, 1629630932),
(51, 'vi', 'themes', 'Cập nhật lại vị trí các block', 'reset position all block', '', 1, 1629630938),
(52, 'vi', 'menu', 'Del row menu', 'Row menu id: 65,66,67', '', 1, 1629630981),
(53, 'vi', 'contact', 'Change config module', '', '', 1, 1629631166),
(54, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1629631324),
(55, 'vi', 'themes', 'Sửa block', 'Name : Công ty chủ quản', '', 1, 1629631457),
(56, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1629631507),
(57, 'vi', 'database', 'Xuất dữ liệu mẫu', 'Name: tmsedu', '', 1, 1629631515),
(58, 'vi', 'modules', 'Thiết lập module mới download', '', '', 1, 1629631617),
(59, 'vi', 'modules', 'Sửa module &ldquo;download&rdquo;', '', '', 1, 1629631619),
(60, 'vi', 'modules', 'Thiết lập module mới laws', '', '', 1, 1629631623),
(61, 'vi', 'modules', 'Sửa module &ldquo;laws&rdquo;', '', '', 1, 1629631630),
(62, 'vi', 'modules', 'Thiết lập module mới organs', '', '', 1, 1629631635),
(63, 'vi', 'modules', 'Sửa module &ldquo;organs&rdquo;', '', '', 1, 1629631644),
(64, 'vi', 'modules', 'Thiết lập module mới weblinks', '', '', 1, 1629631647),
(65, 'vi', 'modules', 'Sửa module &ldquo;weblinks&rdquo;', '', '', 1, 1629631651),
(66, 'vi', 'menu', 'Del row menu', 'Row menu id: 3,4,5,6', '', 1, 1629631662),
(67, 'vi', 'menu', 'Add row menu', 'Row menu id: 68 of Menu id: 1', '', 1, 1629631667),
(68, 'vi', 'menu', 'Add row menu', 'Row menu id: 69 of Menu id: 1', '', 1, 1629631670),
(69, 'vi', 'menu', 'Add row menu', 'Row menu id: 70 of Menu id: 1', '', 1, 1629631675),
(70, 'vi', 'menu', 'Change weight row menu', 'Row menu id: 7, new weight: 6', '', 1, 1629631677),
(71, 'vi', 'themes', 'Thêm block', 'Name : Tìm kiếm', '', 1, 1629631719),
(72, 'vi', 'themes', 'Thêm block', 'Name : Tìm kiếm', '', 1, 1629631790),
(73, 'vi', 'database', 'Xóa Sao lưu dữ liệu', 'File name: 1629565200.sql.gz', '', 1, 1629631850),
(74, 'vi', 'database', 'Xuất dữ liệu mẫu', 'Delete: tmsedu', '', 1, 1629631855),
(75, 'vi', 'database', 'Xuất dữ liệu mẫu', 'Name: tms', '', 1, 1629631858),
(76, 'vi', 'users', 'Thay đổi cấu hình module', '', '', 1, 1629631884),
(77, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1629631888),
(78, 'vi', 'users', 'log_edit_user', 'userid 1', '', 1, 1629631904);

-- --------------------------------------------------------

--
-- Table structure for table `tms_notification`
--

CREATE TABLE IF NOT EXISTS `tms_notification` (
  `id` int(11) unsigned NOT NULL,
  `admin_view_allowed` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Cấp quản trị được xem: 0,1,2',
  `logic_mode` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0: Cấp trên xem được cấp dưới, 1: chỉ cấp hoặc người được chỉ định',
  `send_to` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Danh sách id người nhận, phân cách bởi dấu phảy',
  `send_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `area` tinyint(1) unsigned NOT NULL,
  `language` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obid` int(11) unsigned NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) unsigned NOT NULL,
  `view` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_plugin`
--

CREATE TABLE IF NOT EXISTS `tms_plugin` (
  `pid` tinyint(4) NOT NULL,
  `plugin_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin_area` tinyint(4) NOT NULL,
  `weight` tinyint(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_plugin`
--

INSERT INTO `tms_plugin` (`pid`, `plugin_file`, `plugin_area`, `weight`) VALUES
(1, 'qrcode.php', 1, 1),
(2, 'cdn_js_css_image.php', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tms_sessions`
--

CREATE TABLE IF NOT EXISTS `tms_sessions` (
  `session_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onl_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_sessions`
--

INSERT INTO `tms_sessions` (`session_id`, `userid`, `username`, `onl_time`) VALUES
('15faa51fb6d744e43f9e6552b5b991b9', 1, 'admin', 1629631907);

-- --------------------------------------------------------

--
-- Table structure for table `tms_setup_extensions`
--

CREATE TABLE IF NOT EXISTS `tms_setup_extensions` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sys` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `basename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_prefix` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_setup_extensions`
--

INSERT INTO `tms_setup_extensions` (`id`, `type`, `title`, `is_sys`, `is_virtual`, `basename`, `table_prefix`, `version`, `addtime`, `author`, `note`) VALUES
(0, 'module', 'about', 0, 0, 'page', 'about', '4.5.00 1626512400', 1629627264, 'VINADES <contact@vinades.vn>', ''),
(0, 'module', 'siteterms', 0, 0, 'page', 'siteterms', '4.5.00 1626512400', 1629627264, 'VINADES <contact@vinades.vn>', ''),
(19, 'module', 'banners', 1, 0, 'banners', 'banners', '4.5.00 1626512400', 1629627264, 'VINADES <contact@vinades.vn>', ''),
(20, 'module', 'contact', 0, 1, 'contact', 'contact', '4.5.00 1626512400', 1629627264, 'VINADES <contact@vinades.vn>', ''),
(1, 'module', 'news', 0, 1, 'news', 'news', '4.5.00 1626512400', 1629627264, 'VINADES <contact@vinades.vn>', ''),
(21, 'module', 'voting', 0, 0, 'voting', 'voting', '4.5.00 1626512400', 1629627264, 'VINADES <contact@vinades.vn>', ''),
(0, 'module', 'audio', 0, 0, 'audio', 'audio', '4.3.29 1627344000', 1629630713, 'TMS HOLDINGS (contact@tms.vn)', ''),
(284, 'module', 'seek', 1, 0, 'seek', 'seek', '4.5.00 1626512400', 1629627264, 'VINADES <contact@vinades.vn>', ''),
(24, 'module', 'users', 1, 1, 'users', 'users', '4.5.00 1626512400', 1629627264, 'VINADES <contact@vinades.vn>', ''),
(27, 'module', 'statistics', 0, 0, 'statistics', 'statistics', '4.5.00 1626512400', 1629627264, 'VINADES <contact@vinades.vn>', ''),
(29, 'module', 'menu', 0, 0, 'menu', 'menu', '4.5.00 1626512400', 1629627264, 'VINADES <contact@vinades.vn>', ''),
(283, 'module', 'feeds', 1, 0, 'feeds', 'feeds', '4.5.00 1626512400', 1629627264, 'VINADES <contact@vinades.vn>', ''),
(282, 'module', 'page', 1, 1, 'page', 'page', '4.5.00 1626512400', 1629627264, 'VINADES <contact@vinades.vn>', ''),
(281, 'module', 'comment', 1, 0, 'comment', 'comment', '4.5.00 1626512400', 1629627264, 'VINADES <contact@vinades.vn>', ''),
(312, 'module', 'freecontent', 0, 1, 'freecontent', 'freecontent', '4.5.00 1626512400', 1629627264, 'VINADES <contact@vinades.vn>', ''),
(327, 'module', 'two-step-verification', 1, 0, 'two-step-verification', 'two_step_verification', '4.5.00 1626512400', 1629627264, 'VINADES <contact@vinades.vn>', ''),
(307, 'theme', 'default', 0, 0, 'default', 'default', '4.5.00 1626512400', 1629627264, 'VINADES <contact@vinades.vn>', ''),
(311, 'theme', 'mobile_default', 0, 0, 'mobile_default', 'mobile_default', '4.5.00 1626512400', 1629627264, 'VINADES <contact@vinades.vn>', ''),
(0, 'module', 'download', 0, 1, 'download', 'download', '4.3.03 1534208091', 1629631616, 'VINADES <contact@vinades.vn>', ''),
(0, 'module', 'laws', 0, 1, 'laws', 'laws', '4.6.00 1629501137', 1629631616, 'VINADES <contact@vinades.vn>', 'Modules văn bản pháp luật'),
(0, 'module', 'organs', 0, 1, 'organs', 'organs', '4.6.00 1629631616', 1629631616, 'VINADES (contact@vinades.vn)', ''),
(0, 'module', 'weblinks', 0, 1, 'weblinks', 'weblinks', '4.5.00 1625709600', 1629631616, 'VINADES.,JSC <contact@vinades.vn>', '');

-- --------------------------------------------------------

--
-- Table structure for table `tms_setup_language`
--

CREATE TABLE IF NOT EXISTS `tms_setup_language` (
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT '0',
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_setup_language`
--

INSERT INTO `tms_setup_language` (`lang`, `setup`, `weight`) VALUES
('vi', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tms_upload_dir`
--

CREATE TABLE IF NOT EXISTS `tms_upload_dir` (
  `did` mediumint(8) NOT NULL,
  `dirname` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `thumb_type` tinyint(4) NOT NULL DEFAULT '0',
  `thumb_width` smallint(6) NOT NULL DEFAULT '0',
  `thumb_height` smallint(6) NOT NULL DEFAULT '0',
  `thumb_quality` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_upload_dir`
--

INSERT INTO `tms_upload_dir` (`did`, `dirname`, `time`, `thumb_type`, `thumb_width`, `thumb_height`, `thumb_quality`) VALUES
(0, '', 0, 3, 400, 350, 90),
(1, 'uploads', 1629627702, 0, 0, 0, 0),
(2, 'uploads/about', 0, 0, 0, 0, 0),
(3, 'uploads/banners', 0, 0, 0, 0, 0),
(4, 'uploads/banners/files', 0, 0, 0, 0, 0),
(5, 'uploads/comment', 0, 0, 0, 0, 0),
(6, 'uploads/contact', 0, 0, 0, 0, 0),
(7, 'uploads/freecontent', 0, 0, 0, 0, 0),
(8, 'uploads/menu', 0, 0, 0, 0, 0),
(9, 'uploads/news', 1629628394, 0, 0, 0, 0),
(10, 'uploads/news/source', 0, 0, 0, 0, 0),
(11, 'uploads/news/temp_pic', 0, 0, 0, 0, 0),
(12, 'uploads/news/topics', 0, 0, 0, 0, 0),
(13, 'uploads/page', 0, 0, 0, 0, 0),
(14, 'uploads/siteterms', 0, 0, 0, 0, 0),
(15, 'uploads/users', 0, 0, 0, 0, 0),
(16, 'uploads/users/groups', 0, 0, 0, 0, 0),
(17, 'uploads/news/2019_03', 1629628341, 0, 0, 0, 0),
(18, 'uploads/news/2020_12', 1629628340, 0, 0, 0, 0),
(19, 'uploads/news/2021_01', 1629628522, 0, 0, 0, 0),
(20, 'uploads/news/2021_02', 1629628521, 0, 0, 0, 0),
(21, 'uploads/news/2021_03', 0, 0, 0, 0, 0),
(22, 'uploads/news/2021_04', 1629628340, 0, 0, 0, 0),
(23, 'uploads/news/2021_08', 1629628219, 0, 0, 0, 0),
(24, 'uploads/audio', 0, 0, 0, 0, 0),
(25, 'uploads/download', 0, 0, 0, 0, 0),
(26, 'uploads/download/temp', 0, 0, 0, 0, 0),
(27, 'uploads/download/import', 0, 0, 0, 0, 0),
(28, 'uploads/laws', 0, 0, 0, 0, 0),
(29, 'uploads/organs', 0, 0, 0, 0, 0),
(30, 'uploads/organs/2021_08', 0, 0, 0, 0, 0),
(31, 'uploads/weblinks', 0, 0, 0, 0, 0),
(32, 'uploads/weblinks/cat', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tms_upload_file`
--

CREATE TABLE IF NOT EXISTS `tms_upload_file` (
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `srcwidth` int(11) NOT NULL DEFAULT '0',
  `srcheight` int(11) NOT NULL DEFAULT '0',
  `sizes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL DEFAULT '0',
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_upload_file`
--

INSERT INTO `tms_upload_file` (`name`, `ext`, `type`, `filesize`, `src`, `srcwidth`, `srcheight`, `sizes`, `userid`, `mtime`, `did`, `title`, `alt`) VALUES
('1_03.png', 'png', 'image', 74721, 'assets/1_03.png', 80, 10, '728|90', 1, 1617697102, 1, '1_03.png', '1 03'),
('logo.png', 'png', 'image', 21840, 'assets/logo.png', 80, 52, '186|120', 1, 1617697096, 1, 'logo.png', 'logo'),
('logo_edu.png', 'png', 'image', 12322, 'assets/logo_edu.png', 80, 31, '208|80', 1, 1617697096, 1, 'logo_edu.png', 'logo edu'),
('logo_f01d2...png', 'png', 'image', 18255, 'assets/logo_f01d2d6ab59b89329236db916c179a4c.png', 80, 52, '144|93', 1, 1617697080, 1, 'logo_f01d2d6ab59b89329236db916c179a4c.png', 'logo f01d2d6ab59b89329236db916c179a4c'),
('logo_white.png', 'png', 'image', 6683, 'assets/logo_white.png', 80, 34, '141|60', 1, 1617697080, 1, 'logo_white.png', 'logo white'),
('mhd.jpg', 'jpg', 'image', 40430, 'assets/news/2021_08/mhd.jpg', 80, 54, '700|472', 1, 1629628256, 23, 'mhd.jpg', 'mhd'),
('49140256_3...jpg', 'jpg', 'image', 60180, 'assets/news/2019_03/49140256_348682122629755_6867617487572172800_n.jpg', 80, 50, '960|600', 1, 1617697096, 17, '49140256_348682122629755_6867617487572172800_n.jpg', '49140256 348682122629755 6867617487572172800 n'),
('baochi1-ke...jpg', 'jpg', 'image', 270742, 'assets/news/2019_03/baochi1-key-22022019162746.jpg', 80, 55, '600|412', 1, 1617697096, 17, 'baochi1-key-22022019162746.jpg', 'baochi1 key 22022019162746'),
('baochi2-ke...jpg', 'jpg', 'image', 212162, 'assets/news/2019_03/baochi2-key-22022019162838.jpg', 80, 54, '600|401', 1, 1617697096, 17, 'baochi2-key-22022019162838.jpg', 'baochi2 key 22022019162838'),
('baochi3-ke...jpg', 'jpg', 'image', 210858, 'assets/news/2019_03/baochi3-key-22022019162859.jpg', 80, 49, '600|364', 1, 1617697096, 17, 'baochi3-key-22022019162859.jpg', 'baochi3 key 22022019162859'),
('baochi4-ke...jpg', 'jpg', 'image', 235415, 'assets/news/2019_03/baochi4-key-22022019162918.jpg', 80, 53, '600|396', 1, 1617697096, 17, 'baochi4-key-22022019162918.jpg', 'baochi4 key 22022019162918'),
('baochi5-ke...jpg', 'jpg', 'image', 202235, 'assets/news/2019_03/baochi5-key-22022019162717.jpg', 80, 47, '600|354', 1, 1617697095, 17, 'baochi5-key-22022019162717.jpg', 'baochi5 key 22022019162717'),
('baochi5-ke...jpg', 'jpg', 'image', 202235, 'assets/news/2019_03/baochi5-key-22022019162820.jpg', 80, 47, '600|354', 1, 1617697095, 17, 'baochi5-key-22022019162820.jpg', 'baochi5 key 22022019162820'),
('baochi6-ke...jpg', 'jpg', 'image', 250398, 'assets/news/2019_03/baochi6-key-22022019162943.jpg', 80, 51, '600|382', 1, 1617697095, 17, 'baochi6-key-22022019162943.jpg', 'baochi6 key 22022019162943'),
('baochi7-ke...jpg', 'jpg', 'image', 245713, 'assets/news/2019_03/baochi7-key-22022019163007.jpg', 80, 50, '600|378', 1, 1617697095, 17, 'baochi7-key-22022019163007.jpg', 'baochi7 key 22022019163007'),
('baochi8-ke...jpg', 'jpg', 'image', 263873, 'assets/news/2019_03/baochi8-key-22022019163025.jpg', 80, 54, '600|406', 1, 1617697095, 17, 'baochi8-key-22022019163025.jpg', 'baochi8 key 22022019163025'),
('bcd138va389-1.jpg', 'jpg', 'image', 196056, 'assets/news/2019_03/bcd138va389-1.jpg', 80, 51, '600|385', 1, 1617697095, 17, 'bcd138va389-1.jpg', 'bcd138va389 1'),
('bcd138va389-2.jpg', 'jpg', 'image', 168730, 'assets/news/2019_03/bcd138va389-2.jpg', 80, 53, '600|400', 1, 1617697095, 17, 'bcd138va389-2.jpg', 'bcd138va389 2'),
('bcd138va38...jpg', 'jpg', 'image', 245879, 'assets/news/2019_03/bcd138va389-3-key-22012019100154.jpg', 80, 53, '600|399', 1, 1617697095, 17, 'bcd138va389-3-key-22012019100154.jpg', 'bcd138va389 3 key 22012019100154'),
('bcd138va389-3.jpg', 'jpg', 'image', 245879, 'assets/news/2019_03/bcd138va389-3.jpg', 80, 53, '600|399', 1, 1617697095, 17, 'bcd138va389-3.jpg', 'bcd138va389 3'),
('chutich2-k...jpg', 'jpg', 'image', 177443, 'assets/news/2019_03/chutich2-key-15072017074617-key-10082017085236.jpg', 80, 50, '600|371', 1, 1617697094, 17, 'chutich2-key-15072017074617-key-10082017085236.jpg', 'chutich2 key 15072017074617 key 10082017085236'),
('clbbecamex...jpg', 'jpg', 'image', 261623, 'assets/news/2019_03/clbbecamex-key-26022019162315.jpg', 80, 60, '600|450', 1, 1617697095, 17, 'clbbecamex-key-26022019162315.jpg', 'clbbecamex key 26022019162315'),
('clbbecamex...jpg', 'jpg', 'image', 261623, 'assets/news/2019_03/clbbecamex-key-26022019162327.jpg', 80, 60, '600|450', 1, 1617697094, 17, 'clbbecamex-key-26022019162327.jpg', 'clbbecamex key 26022019162327'),
('cuba-1.jpg', 'jpg', 'image', 242149, 'assets/news/2019_03/cuba-1.jpg', 80, 55, '600|411', 1, 1617697094, 17, 'cuba-1.jpg', 'cuba 1'),
('cuba-2-key...jpg', 'jpg', 'image', 242323, 'assets/news/2019_03/cuba-2-key-22022019090814.jpg', 80, 57, '600|426', 1, 1617697080, 17, 'cuba-2-key-22022019090814.jpg', 'cuba 2 key 22022019090814'),
('cuba-2.jpg', 'jpg', 'image', 242323, 'assets/news/2019_03/cuba-2.jpg', 80, 57, '600|426', 1, 1617697094, 17, 'cuba-2.jpg', 'cuba 2'),
('daisuitali...jpg', 'jpg', 'image', 210738, 'assets/news/2019_03/daisuitalia-1-key-22012019104215.jpg', 80, 55, '600|413', 1, 1617697094, 17, 'daisuitalia-1-key-22012019104215.jpg', 'daisuitalia 1 key 22012019104215'),
('daisuitalia-2.jpg', 'jpg', 'image', 175635, 'assets/news/2019_03/daisuitalia-2.jpg', 80, 57, '600|428', 1, 1617697094, 17, 'daisuitalia-2.jpg', 'daisuitalia 2'),
('daisunhatb...jpg', 'jpg', 'image', 205503, 'assets/news/2019_03/daisunhatban-1.jpg', 80, 61, '600|457', 1, 1617697094, 17, 'daisunhatban-1.jpg', 'daisunhatban 1'),
('daisunhatb...jpg', 'jpg', 'image', 183924, 'assets/news/2019_03/daisunhatban-2-key-14122018103814.jpg', 80, 62, '600|463', 1, 1617697094, 17, 'daisunhatban-2-key-14122018103814.jpg', 'daisunhatban 2 key 14122018103814'),
('dichtalon-1.jpg', 'jpg', 'image', 224361, 'assets/news/2019_03/dichtalon-1.jpg', 80, 50, '600|372', 1, 1617697094, 17, 'dichtalon-1.jpg', 'dichtalon 1'),
('dichtalon-2.jpg', 'jpg', 'image', 214252, 'assets/news/2019_03/dichtalon-2.jpg', 80, 49, '600|365', 1, 1617697094, 17, 'dichtalon-2.jpg', 'dichtalon 2'),
('dichtalonc...jpg', 'jpg', 'image', 194456, 'assets/news/2019_03/dichtaloncp-2-key-04032019165801-key-04032019214610.jpg', 80, 54, '600|401', 1, 1617697094, 17, 'dichtaloncp-2-key-04032019165801-key-04032019214610.jpg', 'dichtaloncp 2 key 04032019165801 key 04032019214610'),
('dtc-1-key-...jpg', 'jpg', 'image', 237346, 'assets/news/2019_03/dtc-1-key-03032019085035.jpg', 80, 53, '600|397', 1, 1617697093, 17, 'dtc-1-key-03032019085035.jpg', 'dtc 1 key 03032019085035'),
('dtc-2.jpg', 'jpg', 'image', 215950, 'assets/news/2019_03/dtc-2.jpg', 80, 52, '600|388', 1, 1617697093, 17, 'dtc-2.jpg', 'dtc 2'),
('emmen1-key...jpg', 'jpg', 'image', 230068, 'assets/news/2019_03/emmen1-key-09032019113255.jpg', 80, 52, '600|390', 1, 1617697093, 17, 'emmen1-key-09032019113255.jpg', 'emmen1 key 09032019113255'),
('emmen2-key...jpg', 'jpg', 'image', 201448, 'assets/news/2019_03/emmen2-key-09032019113323.jpg', 80, 49, '600|370', 1, 1617697093, 17, 'emmen2-key-09032019113323.jpg', 'emmen2 key 09032019113323'),
('fdi1-key-1...jpg', 'jpg', 'image', 198803, 'assets/news/2019_03/fdi1-key-14022019171530.jpg', 80, 50, '600|372', 1, 1617697093, 17, 'fdi1-key-14022019171530.jpg', 'fdi1 key 14022019171530'),
('fdi2-key-1...jpg', 'jpg', 'image', 223986, 'assets/news/2019_03/fdi2-key-14022019171712.jpg', 80, 53, '600|400', 1, 1617697093, 17, 'fdi2-key-14022019171712.jpg', 'fdi2 key 14022019171712'),
('fdi3-key-1...jpg', 'jpg', 'image', 203110, 'assets/news/2019_03/fdi3-key-14022019171941.jpg', 80, 53, '600|393', 1, 1617697093, 17, 'fdi3-key-14022019171941.jpg', 'fdi3 key 14022019171941'),
('fdi4-key-1...jpg', 'jpg', 'image', 182960, 'assets/news/2019_03/fdi4-key-14022019171808.jpg', 80, 49, '600|370', 1, 1617697093, 17, 'fdi4-key-14022019171808.jpg', 'fdi4 key 14022019171808'),
('fdi5-key-1...jpg', 'jpg', 'image', 225219, 'assets/news/2019_03/fdi5-key-14022019171852.jpg', 80, 54, '600|403', 1, 1617697093, 17, 'fdi5-key-14022019171852.jpg', 'fdi5 key 14022019171852'),
('fdi6-key-1...jpg', 'jpg', 'image', 211327, 'assets/news/2019_03/fdi6-key-14022019183049.jpg', 80, 51, '600|383', 1, 1617697093, 17, 'fdi6-key-14022019183049.jpg', 'fdi6 key 14022019183049'),
('giamsatnuo...jpg', 'jpg', 'image', 225792, 'assets/news/2019_03/giamsatnuocngoai-1-key-26022019094458.jpg', 80, 50, '600|377', 1, 1617697093, 17, 'giamsatnuocngoai-1-key-26022019094458.jpg', 'giamsatnuocngoai 1 key 26022019094458'),
('giamsatnuo...jpg', 'jpg', 'image', 225792, 'assets/news/2019_03/giamsatnuocngoai-1.jpg', 80, 50, '600|377', 1, 1617697092, 17, 'giamsatnuocngoai-1.jpg', 'giamsatnuocngoai 1'),
('giamsatnuo...jpg', 'jpg', 'image', 164885, 'assets/news/2019_03/giamsatnuocngoai-2.jpg', 80, 53, '600|399', 1, 1617697092, 17, 'giamsatnuocngoai-2.jpg', 'giamsatnuocngoai 2'),
('go1-key-09...jpg', 'jpg', 'image', 296589, 'assets/news/2019_03/go1-key-09032019095433.jpg', 80, 60, '600|450', 1, 1617697092, 17, 'go1-key-09032019095433.jpg', 'go1 key 09032019095433'),
('go2-key-09...jpg', 'jpg', 'image', 225386, 'assets/news/2019_03/go2-key-09032019095503.jpg', 80, 56, '600|420', 1, 1617697092, 17, 'go2-key-09032019095503.jpg', 'go2 key 09032019095503'),
('go3-key-09...jpg', 'jpg', 'image', 225029, 'assets/news/2019_03/go3-key-09032019095525.jpg', 80, 54, '600|405', 1, 1617697092, 17, 'go3-key-09032019095525.jpg', 'go3 key 09032019095525'),
('hoiin1-key...jpg', 'jpg', 'image', 211962, 'assets/news/2019_03/hoiin1-key-26022019160943.jpg', 80, 53, '600|394', 1, 1617697092, 17, 'hoiin1-key-26022019160943.jpg', 'hoiin1 key 26022019160943'),
('hoiin1-key...jpg', 'jpg', 'image', 211962, 'assets/news/2019_03/hoiin1-key-26022019161350.jpg', 80, 53, '600|394', 1, 1617697092, 17, 'hoiin1-key-26022019161350.jpg', 'hoiin1 key 26022019161350'),
('hoiin2-key...jpg', 'jpg', 'image', 246296, 'assets/news/2019_03/hoiin2-key-26022019161315.jpg', 80, 60, '600|450', 1, 1617697092, 17, 'hoiin2-key-26022019161315.jpg', 'hoiin2 key 26022019161315'),
('hoiin3-key...jpg', 'jpg', 'image', 215055, 'assets/news/2019_03/hoiin3-key-26022019161132.jpg', 80, 53, '600|393', 1, 1617697092, 17, 'hoiin3-key-26022019161132.jpg', 'hoiin3 key 26022019161132'),
('img-0199ok...jpg', 'jpg', 'image', 198911, 'assets/news/2019_03/img-0199ok-key-06012019135246.jpg', 80, 53, '600|393', 1, 1617697092, 17, 'img-0199ok-key-06012019135246.jpg', 'img 0199ok key 06012019135246'),
('img-0218ok...jpg', 'jpg', 'image', 212755, 'assets/news/2019_03/img-0218ok-key-06012019135206.jpg', 80, 49, '600|365', 1, 1617697092, 17, 'img-0218ok-key-06012019135206.jpg', 'img 0218ok key 06012019135206'),
('img-0225ok...jpg', 'jpg', 'image', 228817, 'assets/news/2019_03/img-0225ok-key-06012019135326.jpg', 80, 51, '600|382', 1, 1617697092, 17, 'img-0225ok-key-06012019135326.jpg', 'img 0225ok key 06012019135326'),
('img-0226ok...jpg', 'jpg', 'image', 224178, 'assets/news/2019_03/img-0226ok-key-06012019135417.jpg', 80, 52, '600|391', 1, 1617697092, 17, 'img-0226ok-key-06012019135417.jpg', 'img 0226ok key 06012019135417'),
('img-0427ok...jpg', 'jpg', 'image', 143263, 'assets/news/2019_03/img-0427ok-key-04022019224624.jpg', 80, 50, '600|372', 1, 1617697091, 17, 'img-0427ok-key-04022019224624.jpg', 'img 0427ok key 04022019224624'),
('img-0437ok...jpg', 'jpg', 'image', 156094, 'assets/news/2019_03/img-0437ok-key-04022019224653.jpg', 80, 53, '600|395', 1, 1617697091, 17, 'img-0437ok-key-04022019224653.jpg', 'img 0437ok key 04022019224653'),
('img-0438ok...jpg', 'jpg', 'image', 157560, 'assets/news/2019_03/img-0438ok-key-04022019224621.jpg', 80, 54, '600|407', 1, 1617697091, 17, 'img-0438ok-key-04022019224621.jpg', 'img 0438ok key 04022019224621'),
('img-0438ok...jpg', 'jpg', 'image', 157560, 'assets/news/2019_03/img-0438ok-key-04022019224712.jpg', 80, 54, '600|407', 1, 1617697091, 17, 'img-0438ok-key-04022019224712.jpg', 'img 0438ok key 04022019224712'),
('img-1967ok...jpg', 'jpg', 'image', 189452, 'assets/news/2019_03/img-1967ok-key-21022019181106.jpg', 80, 53, '600|400', 1, 1617697091, 17, 'img-1967ok-key-21022019181106.jpg', 'img 1967ok key 21022019181106'),
('img-1973ok...jpg', 'jpg', 'image', 192682, 'assets/news/2019_03/img-1973ok-key-21022019181109.jpg', 80, 53, '600|400', 1, 1617697091, 17, 'img-1973ok-key-21022019181109.jpg', 'img 1973ok key 21022019181109'),
('img-1980ok...jpg', 'jpg', 'image', 218954, 'assets/news/2019_03/img-1980ok-key-21022019181203.jpg', 80, 56, '600|419', 1, 1617697091, 17, 'img-1980ok-key-21022019181203.jpg', 'img 1980ok key 21022019181203'),
('img-1984ok...jpg', 'jpg', 'image', 188663, 'assets/news/2019_03/img-1984ok-key-21022019181246.jpg', 80, 56, '600|420', 1, 1617697091, 17, 'img-1984ok-key-21022019181246.jpg', 'img 1984ok key 21022019181246'),
('img-1995ok...jpg', 'jpg', 'image', 172141, 'assets/news/2019_03/img-1995ok-key-21022019181020.jpg', 80, 46, '600|342', 1, 1617697091, 17, 'img-1995ok-key-21022019181020.jpg', 'img 1995ok key 21022019181020'),
('img-2077ok...jpg', 'jpg', 'image', 146129, 'assets/news/2019_03/img-2077ok-key-14032019164619.jpg', 80, 49, '600|364', 1, 1617697091, 17, 'img-2077ok-key-14032019164619.jpg', 'img 2077ok key 14032019164619'),
('img-6902ok...jpg', 'jpg', 'image', 147481, 'assets/news/2019_03/img-6902ok-key-22012019140713.jpg', 80, 54, '600|401', 1, 1617697091, 17, 'img-6902ok-key-22012019140713.jpg', 'img 6902ok key 22012019140713'),
('img-6935ok...jpg', 'jpg', 'image', 137868, 'assets/news/2019_03/img-6935ok-key-22012019140736.jpg', 80, 55, '600|414', 1, 1617697090, 17, 'img-6935ok-key-22012019140736.jpg', 'img 6935ok key 22012019140736'),
('img-6938ok...jpg', 'jpg', 'image', 148024, 'assets/news/2019_03/img-6938ok-key-22012019140604.jpg', 80, 55, '600|413', 1, 1617697091, 17, 'img-6938ok-key-22012019140604.jpg', 'img 6938ok key 22012019140604'),
('img-6982ok...jpg', 'jpg', 'image', 229087, 'assets/news/2019_03/img-6982ok-key-22012019140927-key-22012019140927.jpg', 80, 54, '600|403', 1, 1617697091, 17, 'img-6982ok-key-22012019140927-key-22012019140927.jpg', 'img 6982ok key 22012019140927 key 22012019140927'),
('img-7018ok...jpg', 'jpg', 'image', 164043, 'assets/news/2019_03/img-7018ok-key-22012019141000.jpg', 80, 50, '600|373', 1, 1617697091, 17, 'img-7018ok-key-22012019141000.jpg', 'img 7018ok key 22012019141000'),
('kandal1-ke...jpg', 'jpg', 'image', 258093, 'assets/news/2019_03/kandal1-key-26012019092653.jpg', 80, 55, '600|414', 1, 1617697090, 17, 'kandal1-key-26012019092653.jpg', 'kandal1 key 26012019092653'),
('kandal2-ke...jpg', 'jpg', 'image', 253286, 'assets/news/2019_03/kandal2-key-26012019092622.jpg', 80, 53, '600|394', 1, 1617697090, 17, 'kandal2-key-26012019092622.jpg', 'kandal2 key 26012019092622'),
('khdt1-key-...jpg', 'jpg', 'image', 219465, 'assets/news/2019_03/khdt1-key-16012019164937.jpg', 80, 52, '600|388', 1, 1617697090, 17, 'khdt1-key-16012019164937.jpg', 'khdt1 key 16012019164937'),
('khdt1-key-...jpg', 'jpg', 'image', 219465, 'assets/news/2019_03/khdt1-key-16012019165126.jpg', 80, 52, '600|388', 1, 1617697090, 17, 'khdt1-key-16012019165126.jpg', 'khdt1 key 16012019165126'),
('khdt2-key-...jpg', 'jpg', 'image', 211669, 'assets/news/2019_03/khdt2-key-16012019165025.jpg', 80, 51, '600|380', 1, 1617697090, 17, 'khdt2-key-16012019165025.jpg', 'khdt2 key 16012019165025'),
('ktdang1-ke...jpg', 'jpg', 'image', 207121, 'assets/news/2019_03/ktdang1-key-29012019154951.jpg', 80, 50, '600|375', 1, 1617697090, 17, 'ktdang1-key-29012019154951.jpg', 'ktdang1 key 29012019154951'),
('ktdang2-ke...jpg', 'jpg', 'image', 217485, 'assets/news/2019_03/ktdang2-key-29012019155021.jpg', 80, 51, '600|385', 1, 1617697090, 17, 'ktdang2-key-29012019155021.jpg', 'ktdang2 key 29012019155021'),
('mohinhtptm...jpg', 'jpg', 'image', 55821, 'assets/news/2019_03/mohinhtptm-key-04032019155046.jpg', 80, 68, '349|295', 1, 1617697089, 17, 'mohinhtptm-key-04032019155046.jpg', 'mohinhtptm key 04032019155046'),
('mt1-key-21...jpg', 'jpg', 'image', 208894, 'assets/news/2019_03/mt1-key-21022019163151.jpg', 80, 53, '600|397', 1, 1617697090, 17, 'mt1-key-21022019163151.jpg', 'mt1 key 21022019163151'),
('mt2-key-21...jpg', 'jpg', 'image', 256969, 'assets/news/2019_03/mt2-key-21022019163218.jpg', 80, 52, '600|390', 1, 1617697089, 17, 'mt2-key-21022019163218.jpg', 'mt2 key 21022019163218'),
('mt3-key-21...jpg', 'jpg', 'image', 209249, 'assets/news/2019_03/mt3-key-21022019163150.jpg', 80, 55, '600|416', 1, 1617697089, 17, 'mt3-key-21022019163150.jpg', 'mt3 key 21022019163150'),
('mt3-key-21...jpg', 'jpg', 'image', 209249, 'assets/news/2019_03/mt3-key-21022019163302.jpg', 80, 55, '600|416', 1, 1617697089, 17, 'mt3-key-21022019163302.jpg', 'mt3 key 21022019163302'),
('mt4-key-21...jpg', 'jpg', 'image', 190167, 'assets/news/2019_03/mt4-key-21022019163340.jpg', 80, 54, '600|405', 1, 1617697089, 17, 'mt4-key-21022019163340.jpg', 'mt4 key 21022019163340'),
('nc1-key-22...jpg', 'jpg', 'image', 195385, 'assets/news/2019_03/nc1-key-22012019102002.jpg', 80, 46, '600|347', 1, 1617697089, 17, 'nc1-key-22012019102002.jpg', 'nc1 key 22012019102002'),
('nc2-key-22...jpg', 'jpg', 'image', 193922, 'assets/news/2019_03/nc2-key-22012019102025.jpg', 80, 53, '600|399', 1, 1617697089, 17, 'nc2-key-22012019102025.jpg', 'nc2 key 22012019102025'),
('nc3-key-22...jpg', 'jpg', 'image', 225171, 'assets/news/2019_03/nc3-key-22012019101855.jpg', 80, 52, '600|390', 1, 1617697089, 17, 'nc3-key-22012019101855.jpg', 'nc3 key 22012019101855'),
('nc3-key-22...jpg', 'jpg', 'image', 225171, 'assets/news/2019_03/nc3-key-22012019102057.jpg', 80, 52, '600|390', 1, 1617697089, 17, 'nc3-key-22012019102057.jpg', 'nc3 key 22012019102057'),
('nganhnuoc1...jpg', 'jpg', 'image', 162971, 'assets/news/2019_03/nganhnuoc1-key-01032019141315.jpg', 80, 45, '600|338', 1, 1617697089, 17, 'nganhnuoc1-key-01032019141315.jpg', 'nganhnuoc1 key 01032019141315'),
('nganhnuoc2...jpg', 'jpg', 'image', 226035, 'assets/news/2019_03/nganhnuoc2-key-01032019141346.jpg', 80, 51, '600|386', 1, 1617697089, 17, 'nganhnuoc2-key-01032019141346.jpg', 'nganhnuoc2 key 01032019141346'),
('nganhnuoc3...jpg', 'jpg', 'image', 237737, 'assets/news/2019_03/nganhnuoc3-key-01032019141418.jpg', 80, 60, '600|450', 1, 1617697089, 17, 'nganhnuoc3-key-01032019141418.jpg', 'nganhnuoc3 key 01032019141418'),
('nganhnuoc4...jpg', 'jpg', 'image', 240802, 'assets/news/2019_03/nganhnuoc4-key-01032019141434.jpg', 80, 58, '600|431', 1, 1617697089, 17, 'nganhnuoc4-key-01032019141434.jpg', 'nganhnuoc4 key 01032019141434'),
('nhat-nhi-k...jpg', 'jpg', 'image', 172484, 'assets/news/2019_03/nhat-nhi-key-24092017152850-key-28062018225343-key-14032019173325.jpg', 80, 45, '730|410', 1, 1617697088, 17, 'nhat-nhi-key-24092017152850-key-28062018225343-key-14032019173325.jpg', 'nhat nhi key 24092017152850 key 28062018225343 key 14032019173325'),
('nongnghiep...jpg', 'jpg', 'image', 197424, 'assets/news/2019_03/nongnghiepbd-1-key-10012019161209.jpg', 80, 39, '600|289', 1, 1617697088, 17, 'nongnghiepbd-1-key-10012019161209.jpg', 'nongnghiepbd 1 key 10012019161209'),
('nongnghiep...jpg', 'jpg', 'image', 197424, 'assets/news/2019_03/nongnghiepbd-1.jpg', 80, 39, '600|289', 1, 1617697088, 17, 'nongnghiepbd-1.jpg', 'nongnghiepbd 1'),
('nongnghiep...jpg', 'jpg', 'image', 251721, 'assets/news/2019_03/nongnghiepbd-2.jpg', 80, 51, '600|382', 1, 1617697088, 17, 'nongnghiepbd-2.jpg', 'nongnghiepbd 2'),
('nongnghiep...jpg', 'jpg', 'image', 238260, 'assets/news/2019_03/nongnghiepbd-3.jpg', 80, 53, '600|400', 1, 1617697088, 17, 'nongnghiepbd-3.jpg', 'nongnghiepbd 3'),
('nongnghiep...jpg', 'jpg', 'image', 233014, 'assets/news/2019_03/nongnghiepbd-4.jpg', 80, 53, '600|400', 1, 1617697088, 17, 'nongnghiepbd-4.jpg', 'nongnghiepbd 4'),
('nongnghiep...jpg', 'jpg', 'image', 210980, 'assets/news/2019_03/nongnghiepbd-5.jpg', 80, 53, '600|400', 1, 1617697088, 17, 'nongnghiepbd-5.jpg', 'nongnghiepbd 5'),
('nongnghiep...jpg', 'jpg', 'image', 154538, 'assets/news/2019_03/nongnghiepbd-6.jpg', 80, 55, '600|412', 1, 1617697088, 17, 'nongnghiepbd-6.jpg', 'nongnghiepbd 6'),
('nongthonmo...jpg', 'jpg', 'image', 208330, 'assets/news/2019_03/nongthonmoi-key-14032019140002.jpg', 80, 55, '600|409', 1, 1617697088, 17, 'nongthonmoi-key-14032019140002.jpg', 'nongthonmoi key 14032019140002'),
('pcmatuy1-k...jpg', 'jpg', 'image', 259007, 'assets/news/2019_03/pcmatuy1-key-09032019113802.jpg', 80, 53, '600|398', 1, 1617697088, 17, 'pcmatuy1-key-09032019113802.jpg', 'pcmatuy1 key 09032019113802'),
('pcmatuy2-k...jpg', 'jpg', 'image', 285356, 'assets/news/2019_03/pcmatuy2-key-09032019113700.jpg', 80, 53, '600|400', 1, 1617697088, 17, 'pcmatuy2-key-09032019113700.jpg', 'pcmatuy2 key 09032019113700'),
('pcmatuy2-k...jpg', 'jpg', 'image', 285356, 'assets/news/2019_03/pcmatuy2-key-09032019113848.jpg', 80, 53, '600|400', 1, 1617697088, 17, 'pcmatuy2-key-09032019113848.jpg', 'pcmatuy2 key 09032019113848'),
('pcmatuy3-k...jpg', 'jpg', 'image', 275854, 'assets/news/2019_03/pcmatuy3-key-09032019113905.jpg', 80, 50, '600|376', 1, 1617697087, 17, 'pcmatuy3-key-09032019113905.jpg', 'pcmatuy3 key 09032019113905'),
('pcmatuy4-k...jpg', 'jpg', 'image', 257805, 'assets/news/2019_03/pcmatuy4-key-09032019113926.jpg', 80, 49, '600|366', 1, 1617697087, 17, 'pcmatuy4-key-09032019113926.jpg', 'pcmatuy4 key 09032019113926'),
('pcmatuy5-k...jpg', 'jpg', 'image', 288208, 'assets/news/2019_03/pcmatuy5-key-09032019113943.jpg', 80, 53, '600|400', 1, 1617697087, 17, 'pcmatuy5-key-09032019113943.jpg', 'pcmatuy5 key 09032019113943'),
('pn1-key-09...jpg', 'jpg', 'image', 267450, 'assets/news/2019_03/pn1-key-09032019094543.jpg', 80, 49, '600|368', 1, 1617697087, 17, 'pn1-key-09032019094543.jpg', 'pn1 key 09032019094543'),
('pn1-key-09...jpg', 'jpg', 'image', 267450, 'assets/news/2019_03/pn1-key-09032019094715.jpg', 80, 49, '600|368', 1, 1617697087, 17, 'pn1-key-09032019094715.jpg', 'pn1 key 09032019094715'),
('pn2-key-09...jpg', 'jpg', 'image', 293468, 'assets/news/2019_03/pn2-key-09032019094817.jpg', 80, 49, '600|370', 1, 1617697087, 17, 'pn2-key-09032019094817.jpg', 'pn2 key 09032019094817'),
('pn3-key-09...jpg', 'jpg', 'image', 282622, 'assets/news/2019_03/pn3-key-09032019094847.jpg', 80, 56, '600|420', 1, 1617697087, 17, 'pn3-key-09032019094847.jpg', 'pn3 key 09032019094847'),
('pn4-key-09...jpg', 'jpg', 'image', 238413, 'assets/news/2019_03/pn4-key-09032019094910.jpg', 80, 44, '600|331', 1, 1617697087, 17, 'pn4-key-09032019094910.jpg', 'pn4 key 09032019094910'),
('quanchinh1...jpg', 'jpg', 'image', 240372, 'assets/news/2019_03/quanchinh1-key-22012019113544.jpg', 80, 49, '600|368', 1, 1617697087, 17, 'quanchinh1-key-22012019113544.jpg', 'quanchinh1 key 22012019113544'),
('quanchinh2...jpg', 'jpg', 'image', 198963, 'assets/news/2019_03/quanchinh2-key-22012019113610.jpg', 80, 52, '600|391', 1, 1617697087, 17, 'quanchinh2-key-22012019113610.jpg', 'quanchinh2 key 22012019113610'),
('quanchinh3...jpg', 'jpg', 'image', 233003, 'assets/news/2019_03/quanchinh3-key-22012019113629.jpg', 80, 54, '600|403', 1, 1617697087, 17, 'quanchinh3-key-22012019113629.jpg', 'quanchinh3 key 22012019113629'),
('quanchinh4...jpg', 'jpg', 'image', 216546, 'assets/news/2019_03/quanchinh4-key-22012019113657.jpg', 80, 51, '600|379', 1, 1617697087, 17, 'quanchinh4-key-22012019113657.jpg', 'quanchinh4 key 22012019113657'),
('ramthanggi...jpg', 'jpg', 'image', 239562, 'assets/news/2019_03/ramthanggieng1-key-18022019162314.jpg', 80, 54, '600|405', 1, 1617697087, 17, 'ramthanggieng1-key-18022019162314.jpg', 'ramthanggieng1 key 18022019162314'),
('ramthanggi...jpg', 'jpg', 'image', 197464, 'assets/news/2019_03/ramthanggieng3-key-18022019162222.jpg', 80, 51, '600|384', 1, 1617697087, 17, 'ramthanggieng3-key-18022019162222.jpg', 'ramthanggieng3 key 18022019162222'),
('ramthanggi...jpg', 'jpg', 'image', 197464, 'assets/news/2019_03/ramthanggieng3-key-18022019162516.jpg', 80, 51, '600|384', 1, 1617697086, 17, 'ramthanggieng3-key-18022019162516.jpg', 'ramthanggieng3 key 18022019162516'),
('suckhoevn-...jpg', 'jpg', 'image', 204824, 'assets/news/2019_03/suckhoevn-key-28022019154919.jpg', 80, 48, '600|360', 1, 1617697086, 17, 'suckhoevn-key-28022019154919.jpg', 'suckhoevn key 28022019154919'),
('t4t-key-14...jpg', 'jpg', 'image', 199293, 'assets/news/2019_03/t4t-key-14032019173933.jpg', 80, 60, '500|374', 1, 1617697086, 17, 't4t-key-14032019173933.jpg', 't4t key 14032019173933'),
('tai-xuong-...jpg', 'jpg', 'image', 30929, 'assets/news/2019_03/tai-xuong-key-02072018092314-key-04122018172356-key-05032019164044.jpg', 80, 53, '275|183', 1, 1617697086, 17, 'tai-xuong-key-02072018092314-key-04122018172356-key-05032019164044.jpg', 'tai xuong key 02072018092314 key 04122018172356 key 05032019164044'),
('taichinh-k...jpg', 'jpg', 'image', 240184, 'assets/news/2019_03/taichinh-key-09012019201049.jpg', 80, 54, '600|405', 1, 1617697086, 17, 'taichinh-key-09012019201049.jpg', 'taichinh key 09012019201049'),
('taichinh-k...jpg', 'jpg', 'image', 240184, 'assets/news/2019_03/taichinh-key-09012019201142.jpg', 80, 54, '600|405', 1, 1617697086, 17, 'taichinh-key-09012019201142.jpg', 'taichinh key 09012019201142'),
('thanghanhd...jpg', 'jpg', 'image', 268011, 'assets/news/2019_03/thanghanhdong8-key-28052017104410-key-23102018144441-key-05032019163720.jpg', 80, 51, '600|385', 1, 1617697086, 17, 'thanghanhdong8-key-28052017104410-key-23102018144441-key-05032019163720.jpg', 'thanghanhdong8 key 28052017104410 key 23102018144441 key 05032019163720'),
('tiepkratie...jpg', 'jpg', 'image', 215999, 'assets/news/2019_03/tiepkratie1-key-28012019172713.jpg', 80, 50, '600|376', 1, 1617697086, 17, 'tiepkratie1-key-28012019172713.jpg', 'tiepkratie1 key 28012019172713'),
('tiepkratie...jpg', 'jpg', 'image', 216630, 'assets/news/2019_03/tiepkratie2-key-28012019172631.jpg', 80, 53, '600|399', 1, 1617697086, 17, 'tiepkratie2-key-28012019172631.jpg', 'tiepkratie2 key 28012019172631'),
('tieplao1-k...jpg', 'jpg', 'image', 186585, 'assets/news/2019_03/tieplao1-key-28122018160843.jpg', 80, 53, '600|394', 1, 1617697086, 17, 'tieplao1-key-28122018160843.jpg', 'tieplao1 key 28122018160843'),
('tieplao2-k...jpg', 'jpg', 'image', 202985, 'assets/news/2019_03/tieplao2-key-28122018160945.jpg', 80, 55, '600|414', 1, 1617697086, 17, 'tieplao2-key-28122018160945.jpg', 'tieplao2 key 28122018160945'),
('tnnuoc-key...jpg', 'jpg', 'image', 118056, 'assets/news/2019_03/tnnuoc-key-14032019195219.jpg', 80, 55, '600|415', 1, 1617697085, 17, 'tnnuoc-key-14032019195219.jpg', 'tnnuoc key 14032019195219'),
('tongdieutr...jpg', 'jpg', 'image', 230279, 'assets/news/2019_03/tongdieutrads-1.jpg', 80, 53, '600|400', 1, 1617697085, 17, 'tongdieutrads-1.jpg', 'tongdieutrads 1'),
('tongdieutr...jpg', 'jpg', 'image', 238120, 'assets/news/2019_03/tongdieutrads-2-key-14032019113003.jpg', 80, 54, '600|402', 1, 1617697084, 17, 'tongdieutrads-2-key-14032019113003.jpg', 'tongdieutrads 2 key 14032019113003'),
('tongdieutr...jpg', 'jpg', 'image', 238120, 'assets/news/2019_03/tongdieutrads-2.jpg', 80, 54, '600|402', 1, 1617697084, 17, 'tongdieutrads-2.jpg', 'tongdieutrads 2'),
('trucvb-1-k...jpg', 'jpg', 'image', 278639, 'assets/news/2019_03/trucvb-1-key-13032019101829.jpg', 80, 49, '600|368', 1, 1617697084, 17, 'trucvb-1-key-13032019101829.jpg', 'trucvb 1 key 13032019101829'),
('trucvb-1.jpg', 'jpg', 'image', 278639, 'assets/news/2019_03/trucvb-1.jpg', 80, 49, '600|368', 1, 1617697084, 17, 'trucvb-1.jpg', 'trucvb 1'),
('trucvb-2.jpg', 'jpg', 'image', 174065, 'assets/news/2019_03/trucvb-2.jpg', 80, 53, '600|400', 1, 1617697083, 17, 'trucvb-2.jpg', 'trucvb 2'),
('trucvb-3.jpg', 'jpg', 'image', 231625, 'assets/news/2019_03/trucvb-3.jpg', 80, 52, '600|388', 1, 1617697083, 17, 'trucvb-3.jpg', 'trucvb 3'),
('trungquoc-...jpg', 'jpg', 'image', 213276, 'assets/news/2019_03/trungquoc-1-key-25012019105320.jpg', 80, 59, '600|439', 1, 1617697082, 17, 'trungquoc-1-key-25012019105320.jpg', 'trungquoc 1 key 25012019105320'),
('trungquoc-2.jpg', 'jpg', 'image', 241803, 'assets/news/2019_03/trungquoc-2.jpg', 80, 61, '600|456', 1, 1617697082, 17, 'trungquoc-2.jpg', 'trungquoc 2'),
('ttn1-key-2...jpg', 'jpg', 'image', 215305, 'assets/news/2019_03/ttn1-key-26022019163119.jpg', 80, 53, '600|400', 1, 1617697082, 17, 'ttn1-key-26022019163119.jpg', 'ttn1 key 26022019163119'),
('ttn2-key-2...jpg', 'jpg', 'image', 202410, 'assets/news/2019_03/ttn2-key-26022019163147.jpg', 80, 53, '600|400', 1, 1617697082, 17, 'ttn2-key-26022019163147.jpg', 'ttn2 key 26022019163147'),
('ttn3-key-2...jpg', 'jpg', 'image', 282342, 'assets/news/2019_03/ttn3-key-26022019163213.jpg', 80, 53, '600|400', 1, 1617697082, 17, 'ttn3-key-26022019163213.jpg', 'ttn3 key 26022019163213'),
('ttn5-key-2...jpg', 'jpg', 'image', 289570, 'assets/news/2019_03/ttn5-key-26022019163259.jpg', 80, 53, '600|400', 1, 1617697082, 17, 'ttn5-key-26022019163259.jpg', 'ttn5 key 26022019163259'),
('ttn6-key-2...jpg', 'jpg', 'image', 222152, 'assets/news/2019_03/ttn6-key-26022019163028.jpg', 80, 49, '600|367', 1, 1617697082, 17, 'ttn6-key-26022019163028.jpg', 'ttn6 key 26022019163028'),
('ubpl1-key-...jpg', 'jpg', 'image', 198051, 'assets/news/2019_03/ubpl1-key-25022019163750.jpg', 80, 46, '600|347', 1, 1617697082, 17, 'ubpl1-key-25022019163750.jpg', 'ubpl1 key 25022019163750'),
('ubpl2-key-...jpg', 'jpg', 'image', 171507, 'assets/news/2019_03/ubpl2-key-25022019163839.jpg', 80, 51, '600|381', 1, 1617697081, 17, 'ubpl2-key-25022019163839.jpg', 'ubpl2 key 25022019163839'),
('ubpl3-key-...jpg', 'jpg', 'image', 178349, 'assets/news/2019_03/ubpl3-key-25022019163955.jpg', 80, 54, '600|403', 1, 1617697081, 17, 'ubpl3-key-25022019163955.jpg', 'ubpl3 key 25022019163955'),
('vannghesi1...jpg', 'jpg', 'image', 260206, 'assets/news/2019_03/vannghesi1-key-26022019161849.jpg', 80, 52, '600|390', 1, 1617697081, 17, 'vannghesi1-key-26022019161849.jpg', 'vannghesi1 key 26022019161849'),
('vannghesi2...jpg', 'jpg', 'image', 231304, 'assets/news/2019_03/vannghesi2-key-26022019161851.jpg', 80, 51, '600|382', 1, 1617697081, 17, 'vannghesi2-key-26022019161851.jpg', 'vannghesi2 key 26022019161851'),
('vannghesi3...jpg', 'jpg', 'image', 242549, 'assets/news/2019_03/vannghesi3-key-26022019161941.jpg', 80, 50, '600|376', 1, 1617697081, 17, 'vannghesi3-key-26022019161941.jpg', 'vannghesi3 key 26022019161941'),
('vannghesi4...jpg', 'jpg', 'image', 239901, 'assets/news/2019_03/vannghesi4-key-26022019162003.jpg', 80, 51, '600|383', 1, 1617697081, 17, 'vannghesi4-key-26022019162003.jpg', 'vannghesi4 key 26022019162003'),
('xedapnu1-k...jpg', 'jpg', 'image', 267223, 'assets/news/2019_03/xedapnu1-key-08032019105254.jpg', 80, 56, '600|418', 1, 1617697081, 17, 'xedapnu1-key-08032019105254.jpg', 'xedapnu1 key 08032019105254'),
('xedapnu2-k...jpg', 'jpg', 'image', 255960, 'assets/news/2019_03/xedapnu2-key-08032019105356.jpg', 80, 56, '600|422', 1, 1617697081, 17, 'xedapnu2-key-08032019105356.jpg', 'xedapnu2 key 08032019105356'),
('xedapnu3-k...jpg', 'jpg', 'image', 253137, 'assets/news/2019_03/xedapnu3-key-08032019105429.jpg', 80, 53, '600|400', 1, 1617697081, 17, 'xedapnu3-key-08032019105429.jpg', 'xedapnu3 key 08032019105429'),
('xedapnu4-k...jpg', 'jpg', 'image', 230888, 'assets/news/2019_03/xedapnu4-key-08032019105219.jpg', 80, 50, '600|376', 1, 1617697081, 17, 'xedapnu4-key-08032019105219.jpg', 'xedapnu4 key 08032019105219'),
('xedapnu4-k...jpg', 'jpg', 'image', 230888, 'assets/news/2019_03/xedapnu4-key-08032019105455.jpg', 80, 50, '600|376', 1, 1617697081, 17, 'xedapnu4-key-08032019105455.jpg', 'xedapnu4 key 08032019105455'),
('xskt1-key-...jpg', 'jpg', 'image', 194975, 'assets/news/2019_03/xskt1-key-01032019140819.jpg', 80, 53, '600|400', 1, 1617697081, 17, 'xskt1-key-01032019140819.jpg', 'xskt1 key 01032019140819'),
('xskt2-key-...jpg', 'jpg', 'image', 199866, 'assets/news/2019_03/xskt2-key-01032019140903.jpg', 80, 49, '600|364', 1, 1617697080, 17, 'xskt2-key-01032019140903.jpg', 'xskt2 key 01032019140903');

-- --------------------------------------------------------

--
-- Table structure for table `tms_users`
--

CREATE TABLE IF NOT EXISTS `tms_users` (
  `userid` mediumint(8) unsigned NOT NULL,
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci,
  `regdate` int(11) NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `passlostkey` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `view_mail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remember` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `in_groups` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active2step` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `secretkey` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checknum` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_openid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_update` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Thời điểm cập nhật thông tin lần cuối',
  `idsite` int(11) NOT NULL DEFAULT '0',
  `safemode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `safekey` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email_verification_time` int(11) NOT NULL DEFAULT '-1' COMMENT '-3: Tài khoản sys, -2: Admin kích hoạt, -1 không cần kích hoạt, 0: Chưa xác minh, > 0 thời gian xác minh',
  `active_obj` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SYSTEM' COMMENT 'SYSTEM, EMAIL, OAUTH:xxxx, quản trị kích hoạt thì lưu userid'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_users`
--

INSERT INTO `tms_users` (`userid`, `group_id`, `username`, `md5username`, `password`, `email`, `first_name`, `last_name`, `gender`, `photo`, `birthday`, `sig`, `regdate`, `question`, `answer`, `passlostkey`, `view_mail`, `remember`, `in_groups`, `active`, `active2step`, `secretkey`, `checknum`, `last_login`, `last_ip`, `last_agent`, `last_openid`, `last_update`, `idsite`, `safemode`, `safekey`, `email_verification_time`, `active_obj`) VALUES
(1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '{SSHA512}Mb+5+FtJSYBOyG2GDMuF1AlhH4VdCsmKP11m81Xcuwc9p0Fr0LttFx0R5ZBl93mFv51Qm2liznvOmPH9Olk4umQ2M2I=', 'info@tms.vn', 'admin', '', 'M', '', -991292400, '', 1629627309, 'admin', 'admin', '', 0, 1, '1,4', 1, 0, '', '', 1629627309, '', '', '', 1629631904, 0, 0, '', -3, 'SYSTEM');

-- --------------------------------------------------------

--
-- Table structure for table `tms_users_backupcodes`
--

CREATE TABLE IF NOT EXISTS `tms_users_backupcodes` (
  `userid` mediumint(8) unsigned NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_used` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `time_used` int(11) unsigned NOT NULL DEFAULT '0',
  `time_creat` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_users_config`
--

CREATE TABLE IF NOT EXISTS `tms_users_config` (
  `config` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_users_config`
--

INSERT INTO `tms_users_config` (`config`, `content`, `edit_time`) VALUES
('access_admin', 'a:8:{s:15:"access_viewlist";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:"access_addus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:14:"access_waiting";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:17:"access_editcensor";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:"access_editus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:"access_delus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:"access_passus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:"access_groups";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}}', 1629631884),
('password_simple', '000000|1234|2000|12345|111111|123123|123456|654321|696969|1234567|1234569|11223344|12345678|12345679|23456789|66666666|66668888|68686868|87654321|88888888|99999999|123456789|999999999|1234567890|aaaaaa|abc123|abc123@|abc@123|admin123|admin123@|admin@123|adobe1|adobe123|azerty|baseball|dragon|football|harley|hoilamgi|iloveyou|jennifer|jordan|khongbiet|khongco|khongcopass|letmein|macromedia|master|michael|monkey|mustang|nuke123|nuke123@|nuke@123|password|photoshop|pussy|qwerty|shadow|superman', 1629631884),
('deny_email', 'yoursite.com|mysite.com|localhost|xxx', 1629631884),
('deny_name', 'anonimo|anonymous|god|linux|nobody|operator|root', 1629631884),
('avatar_width', '80', 1629631884),
('avatar_height', '80', 1629631884),
('active_group_newusers', '0', 1629631884),
('active_editinfo_censor', '0', 1629631884),
('active_user_logs', '1', 1629631884),
('min_old_user', '16', 1629631884),
('register_active_time', '86400', 1629627264),
('auto_assign_oauthuser', '0', 1629631884),
('siteterms_vi', '<p> Để trở thành thành viên, bạn phải cam kết đồng ý với các điều khoản dưới đây. Chúng tôi có thể thay đổi lại những điều khoản này vào bất cứ lúc nào và chúng tôi sẽ cố gắng thông báo đến bạn kịp thời.<br /> <br /> Bạn cam kết không gửi bất cứ bài viết có nội dung lừa đảo, thô tục, thiếu văn hoá; vu khống, khiêu khích, đe doạ người khác; liên quan đến các vấn đề tình dục hay bất cứ nội dung nào vi phạm luật pháp của quốc gia mà bạn đang sống, luật pháp của quốc gia nơi đặt máy chủ của website này hay luật pháp quốc tế. Nếu vẫn cố tình vi phạm, ngay lập tức bạn sẽ bị cấm tham gia vào website. Địa chỉ IP của tất cả các bài viết đều được ghi nhận lại để bảo vệ các điều khoản cam kết này trong trường hợp bạn không tuân thủ.<br /> <br /> Bạn đồng ý rằng website có quyền gỡ bỏ, sửa, di chuyển hoặc khoá bất kỳ bài viết nào trong website vào bất cứ lúc nào tuỳ theo nhu cầu công việc.<br /> <br /> Đăng ký làm thành viên của chúng tôi, bạn cũng phải đồng ý rằng, bất kỳ thông tin cá nhân nào mà bạn cung cấp đều được lưu trữ trong cơ sở dữ liệu của hệ thống. Mặc dù những thông tin này sẽ không được cung cấp cho bất kỳ người thứ ba nào khác mà không được sự đồng ý của bạn, chúng tôi không chịu trách nhiệm về việc những thông tin cá nhân này của bạn bị lộ ra bên ngoài từ những kẻ phá hoại có ý đồ xấu tấn công vào cơ sở dữ liệu của hệ thống.</p>', 1274757129);

-- --------------------------------------------------------

--
-- Table structure for table `tms_users_edit`
--

CREATE TABLE IF NOT EXISTS `tms_users_edit` (
  `userid` mediumint(8) unsigned NOT NULL,
  `lastedit` int(11) unsigned NOT NULL DEFAULT '0',
  `info_basic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_custom` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_users_field`
--

CREATE TABLE IF NOT EXISTS `tms_users_field` (
  `fid` mediumint(8) NOT NULL,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(10) unsigned NOT NULL DEFAULT '1',
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','unicodename','email','url','regex','callback') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` bigint(20) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_register` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_editable` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_profile` tinyint(4) NOT NULL DEFAULT '1',
  `class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_system` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_users_field`
--

INSERT INTO `tms_users_field` (`fid`, `field`, `weight`, `field_type`, `field_choices`, `sql_choices`, `match_type`, `match_regex`, `func_callback`, `min_length`, `max_length`, `required`, `show_register`, `user_editable`, `show_profile`, `class`, `language`, `default_value`, `is_system`) VALUES
(1, 'first_name', 1, 'textbox', '', '', 'none', '', '', 0, 100, 1, 1, 1, 1, 'input', 'a:1:{s:2:"vi";a:2:{i:0;s:4:"Tên";i:1;s:0:"";}}', '', 1),
(2, 'last_name', 2, 'textbox', '', '', 'none', '', '', 0, 100, 0, 1, 1, 1, 'input', 'a:1:{s:2:"vi";a:2:{i:0;s:20:"Họ và tên đệm";i:1;s:0:"";}}', '', 1),
(3, 'gender', 3, 'select', 'a:3:{s:1:"N";s:3:"N/A";s:1:"M";s:3:"Nam";s:1:"F";s:4:"Nữ";}', '', 'none', '', '', 0, 255, 0, 0, 1, 1, 'input', 'a:1:{s:2:"vi";a:2:{i:0;s:12:"Giới tính";i:1;s:0:"";}}', '2', 1),
(4, 'birthday', 4, 'date', 'a:1:{s:12:"current_date";i:0;}', '', 'none', '', '', 0, 0, 0, 0, 1, 1, 'input', 'a:1:{s:2:"vi";a:2:{i:0;s:22:"Ngày tháng năm sinh";i:1;s:0:"";}}', '0', 1),
(5, 'sig', 5, 'textarea', '', '', 'none', '', '', 0, 1000, 0, 0, 1, 1, 'input', 'a:1:{s:2:"vi";a:2:{i:0;s:9:"Chữ ký";i:1;s:0:"";}}', '', 1),
(6, 'question', 6, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:"vi";a:2:{i:0;s:22:"Câu hỏi bảo mật";i:1;s:0:"";}}', '', 1),
(7, 'answer', 7, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:"vi";a:2:{i:0;s:22:"Trả lời câu hỏi";i:1;s:0:"";}}', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tms_users_groups`
--

CREATE TABLE IF NOT EXISTS `tms_users_groups` (
  `group_id` smallint(5) unsigned NOT NULL,
  `alias` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `group_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0:Sys, 1:approval, 2:public',
  `group_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `require_2step_admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `require_2step_site` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL,
  `exp_time` int(11) NOT NULL,
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL,
  `idsite` int(11) unsigned NOT NULL DEFAULT '0',
  `numbers` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `siteus` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `config` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_users_groups`
--

INSERT INTO `tms_users_groups` (`group_id`, `alias`, `email`, `group_type`, `group_color`, `group_avatar`, `require_2step_admin`, `require_2step_site`, `is_default`, `add_time`, `exp_time`, `weight`, `act`, `idsite`, `numbers`, `siteus`, `config`) VALUES
(1, 'Super-Admin', '', 0, '', '', 0, 0, 0, 1629627264, 0, 1, 1, 0, 1, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}'),
(2, 'General-Admin', '', 0, '', '', 0, 0, 0, 1629627264, 0, 2, 1, 0, 0, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}'),
(3, 'Module-Admin', '', 0, '', '', 0, 0, 0, 1629627264, 0, 3, 1, 0, 0, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}'),
(4, 'Users', '', 0, '', '', 0, 0, 0, 1629627264, 0, 4, 1, 0, 1, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}'),
(7, 'New-Users', '', 0, '', '', 0, 0, 0, 1629627264, 0, 5, 1, 0, 0, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}'),
(5, 'Guest', '', 0, '', '', 0, 0, 0, 1629627264, 0, 6, 1, 0, 0, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}'),
(6, 'All', '', 0, '', '', 0, 0, 0, 1629627264, 0, 7, 1, 0, 0, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `tms_users_groups_detail`
--

CREATE TABLE IF NOT EXISTS `tms_users_groups_detail` (
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_users_groups_detail`
--

INSERT INTO `tms_users_groups_detail` (`group_id`, `lang`, `title`, `description`, `content`) VALUES
(1, 'vi', 'Super Admin', '', ''),
(2, 'vi', 'General Admin', '', ''),
(3, 'vi', 'Module Admin', '', ''),
(4, 'vi', 'Users', '', ''),
(7, 'vi', 'New Users', '', ''),
(5, 'vi', 'Guest', '', ''),
(6, 'vi', 'All', '', ''),
(10, 'vi', 'Người hâm mộ', 'Nhóm những người hâm mộ hệ thống NukeViet', ''),
(11, 'vi', 'Người quản lý', 'Nhóm những người quản lý website xây dựng bằng hệ thống NukeViet', ''),
(12, 'vi', 'Lập trình viên', 'Nhóm Lập trình viên hệ thống NukeViet', '');

-- --------------------------------------------------------

--
-- Table structure for table `tms_users_groups_users`
--

CREATE TABLE IF NOT EXISTS `tms_users_groups_users` (
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_leader` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `approved` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_requested` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Thời gian yêu cầu tham gia',
  `time_approved` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Thời gian duyệt yêu cầu tham gia'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_users_groups_users`
--

INSERT INTO `tms_users_groups_users` (`group_id`, `userid`, `is_leader`, `approved`, `data`, `time_requested`, `time_approved`) VALUES
(1, 1, 1, 1, '0', 1629627309, 1629627309);

-- --------------------------------------------------------

--
-- Table structure for table `tms_users_info`
--

CREATE TABLE IF NOT EXISTS `tms_users_info` (
  `userid` mediumint(8) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_users_info`
--

INSERT INTO `tms_users_info` (`userid`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `tms_users_openid`
--

CREATE TABLE IF NOT EXISTS `tms_users_openid` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `opid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_users_question`
--

CREATE TABLE IF NOT EXISTS `tms_users_question` (
  `qid` smallint(5) unsigned NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_users_question`
--

INSERT INTO `tms_users_question` (`qid`, `title`, `lang`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Bạn thích môn thể thao nào nhất', 'vi', 1, 1274840238, 1274840238),
(2, 'Món ăn mà bạn yêu thích', 'vi', 2, 1274840250, 1274840250),
(3, 'Thần tượng điện ảnh của bạn', 'vi', 3, 1274840257, 1274840257),
(4, 'Bạn thích nhạc sỹ nào nhất', 'vi', 4, 1274840264, 1274840264),
(5, 'Quê ngoại của bạn ở đâu', 'vi', 5, 1274840270, 1274840270),
(6, 'Tên cuốn sách &quot;gối đầu giường&quot;', 'vi', 6, 1274840278, 1274840278),
(7, 'Ngày lễ mà bạn luôn mong đợi', 'vi', 7, 1274840285, 1274840285);

-- --------------------------------------------------------

--
-- Table structure for table `tms_users_reg`
--

CREATE TABLE IF NOT EXISTS `tms_users_reg` (
  `userid` mediumint(8) unsigned NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci,
  `regdate` int(11) unsigned NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checknum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_info` text COLLATE utf8mb4_unicode_ci,
  `openid_info` text COLLATE utf8mb4_unicode_ci,
  `idsite` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_about`
--

CREATE TABLE IF NOT EXISTS `tms_vi_about` (
  `id` mediumint(8) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_about`
--

INSERT INTO `tms_vi_about` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(1, 'Giới thiệu về NukeViet', 'gioi-thieu-ve-nukeviet', '', '', 0, '', '<h2><span style="font-size:20px;"><strong>Giới thiệu khái quát</strong></span></h2>  <p>NukeViet là một ứng dụng trên nền web có thể sử dụng vào nhiều mục đích khác nhau. Phiên bản đang được phát hành theo giấy phép phần mềm tự do nguồn mở có tên gọi đầy đủ là <a href="/about/Gioi-thieu-ve-NukeViet-CMS.html"><b>NukeViet CMS</b></a> gồm 2 phần chính là phần nhân (core) của hệ thống NukeViet và nhóm chức năng quản trị nội dung của CMS thường được sử dụng để xây dựng các website tin tức do đó người dùng thường nghĩ rằng NukeViet mạnh về hệ thống tin tức. Tuy nhiên, đội ngũ phát triển NukeViet đã phát triển nhiều hệ thống khác nhau cho NukeViet, nổi bật nhất là:</p>  <ul> 	<li>NukeViet Portal: Cổng thông tin hai chiều dùng cho doanh nghiệp.</li> 	<li><a href="http://edu.nukeviet.vn" target="_blank">NukeViet Edu Gate</a>: Cổng thông tin tích hợp nhiều website, sử dụng cho phòng giáo dục, sở giáo dục.</li> 	<li><a href="http://toasoandientu.vn" target="_blank">NukeViet Tòa Soạn Điện Tử</a>: Sử dụng cho các tòa soạn báo điện tử, trang tin điện tử.</li> </ul> Theo định hướng phát triển của NukeViet, ngoài NukeViet CMS đã được phát hành theo giấy phép tự do nguồn mở trong nhiều năm qua, NukeViet sẽ có thêm 2 nhóm ứng dụng nữa là:  <ul> 	<li>NukeViet Blog: Dành cho các website và người dùng tạo các trang nhật ký cá nhân.</li> 	<li>NukeViet Shop: dành cho các website thương mại điện tử với hoạt động chính là bán hàng trực tuyến, hiện đã có thể sử dụng bằng cách cài bổ sung <a href="https://github.com/nukeviet/module-shops" target="_blank">module Shop</a> lên NukeViet CMS.</li> </ul> &nbsp;  <h2><span style="font-size:20px;"><strong>Video giới thiệu</strong></span></h2> <span style="font-size:14px;">Video clip &quot;Giới thiệu mã nguồn mở NukeViet&quot; trong bản tin Tiêu điểm của chương trình Xã hội thông tin<br  /> (Đài truyền hình kỹ thuật số VTC) phát sóng lúc 20h chủ nhật, ngày 05-09-2010 trên VTC1</span>  <div style="text-align: center;"> <div style="text-align: center;"> <div class="youtube-embed-wrapper" style="position:relative;padding-bottom:56.25%;padding-top:30px;height:0;overflow:hidden;"><iframe allowfullscreen="" height="480" src="//www.youtube.com/embed/Cxp1kCyVhqY?rel=0&amp;autoplay=1" style="position: absolute;top: 0;left: 0;width: 100%;height: 100%;" width="640"></iframe></div> <br  /> <span style="font-size:12px;"><em>Video clip &quot;Giới thiệu mã nguồn mở NukeViet&quot;</em></span></div> </div>  <h2><br  /> <span style="font-size:20px;"><strong><span class="mw-headline" id=".E1.BB.A8ng_d.E1.BB.A5ng">Lịch sử phát triển</span></strong></span></h2> NukeViet ra đời từ năm 2004, bắt đầu từ việc sử dụng sản phẩm PHP-Nuke để làm cho website cá nhân, anh Nguyễn Anh Tú - một lưu học sinh người Việt tại Nga - đã cùng cộng đồng Việt hóa, cải tiến theo nhu cầu sử dụng của người Việt. Được sự đón nhận của đông đảo người sử dụng, NukeViet đã liên tục được phát triển và trở thành một ứng dụng thuần Việt. Cho đến phiên bản 3.0, NukeViet đã được phát triển thành một ứng dụng khác biệt hoàn toàn, và không chỉ là một CMS, NukeViet được định hướng để trở thành phần mềm đa chức năng trên nền web.<br  /> <br  /> Kể từ năm 2010, NukeViet đã phát triển theo mô hình chuyên nghiệp, đội ngũ quản trị đã thành lập doanh nghiệp chuyên quản và đạt được những tiến bộ vượt bậc. NukeViet đã trở thành hệ quản trị nội dung nguồn mở duy nhất của Việt Nam được Bộ GD&amp;ĐT khuyến khích sử dụng trong giáo dục (thông tư 08/2010/TT-BGDĐT). Tiếp đó, NukeViet CMS đã được trao giải Nhân Tài Đất Việt 2011 và trở thành phần mềm nguồn mở đầu tiên đạt giải thưởng cao quý này. <h2><br  /> <span style="font-size:20px;"><strong><span class="mw-headline" id="Di.E1.BB.85n_.C4.91.C3.A0n_NukeViet.vn">Diễn đàn NukeViet.vn</span></strong></span></h2>  <p>Diễn đàn NukeViet hoạt động trên website: <a href="http://nukeviet.vn">http://nukeviet.vn</a>, đây là kênh chính thức và hữu hiệu cho các bạn đam mê về NukeViet có thể chia sẻ các kiến thức về NukeViet với nhau. Tính đến tháng 12 năm 2015 diễn đàn đã có trên 34.500 thành viên tham gia, bao gồm học sinh, sinh viên &amp; nhiều thành phần khác thuộc giới trí thức ở trong và ngoài nước.</p>  <p>Là một diễn đàn của các nhà quản lý website, rất nhiều thành viên trong diễn đàn NukeViet là cán bộ, lãnh đạo từ đủ mọi lĩnh vực: công nghệ thông tin, xây dựng, văn hóa - xã hội, thể thao, dịch vụ - du lịch... từ cử nhân, bác sĩ, kỹ sư cho đến bộ đội, công an..</p>  <h2><br  /> <span style="font-size:20px;"><span class="mw-headline" id="Th.C3.A0nh_t.C3.ADch_.26_gi.E1.BA.A3i_th.C6.B0.E1.BB.9Fng"><strong>Thành tích &amp; giải thưởng</strong></span></span></h2>  <h3><span style="font-size:14px;"><em><strong><span class="mw-headline" id="Khen_th.C6.B0.E1.BB.9Fng_.26_Th.C3.A0nh_t.C3.ADch">Khen thưởng &amp; Thành tích</span></strong></em></span></h3>  <ul> 	<li>Giải Ba Nhân tài Đất Việt 2011 ở Lĩnh vực Công nghệ thông tin/Sản phẩm đã ứng dụng rộng rãi (không có giải nhất, nhì).</li> 	<li>Bằng khen của Hội Tin học Việt Nam vì những đóng góp xuất sắc cho sự phát triển của cộng đồng nguồn mở tại Việt Nam.</li> </ul> <span style="font-size:14px;"><em><strong><span class="mw-headline" id=".C4.90.C6.B0.E1.BB.A3c_B.E1.BB.99_gi.C3.A1o_d.E1.BB.A5c_.26_.C4.90.C3.A0o_t.E1.BA.A1o_.E1.BB.A7ng_h.E1.BB.99">Được Bộ giáo dục &amp; Đào tạo ủng hộ</span></strong></em></span>  <p>NukeViet CMS là hệ quản trị nội dung nguồn mở duy nhất của Việt Nam nằm trong danh mục các sản phẩm phần mềm nguồn mở được khuyến khích sử dụng trong thông tư số 08/2010/TT-BGDĐT do Bộ GD&amp;ĐT ban hành ngày 01-03-2010 quy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục). Trong bài thuyết trình &quot;Hiện trạng triển khai nội dung thông tư 08/2010/TT-BGDĐT về sử dụng PMNM trong các cơ sở giáo dục và định hướng cho thời gian tới&quot;<sup> </sup>tại Hội thảo phần mềm nguồn mở trong các cơ quan, tổ chức nhà nước năm 2012, Cục trưởng cục CNTT Quách Tuấn Ngọc cho biết: &quot;NukeViet có thể thay thế SharePoint server&quot;, &quot;NukeViet được nhiều cơ sở giáo dục thích dùng&quot;<sup> </sup>NukeViet được Bộ GD&amp;ĐT đưa vào văn bản hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016. Trong văn bản số 4983/BGDĐT-CNTT của Bộ Giáo dục và Đào tạo (Bộ GDĐT) hướng dẫn việc triển khai nhiệm vụ công nghệ thông tin (CNTT) cho năm học 2015 - 2016 có những nội dung như sau liên quan đến NukeViet:</p>  <ul> 	<li>Nhiệm vụ số &quot;5. Công tác bồi dưỡng ứng dụng CNTT cho giáo viên và cán bộ quản lý giáo dục&quot;, mục &quot;5.1 Một số nội dung cần bồi dưỡng&quot; có ghi &quot;Tập huấn sử dụng phần mềm nguồn mở NukeViet.&quot;</li> 	<li>Nhiệm vụ số &quot; 10. Khai thác, sử dụng và dạy học bằng phần mềm nguồn mở&quot; có ghi: &quot;Khai thác và áp dụng phần mềm nguồn mở NukeViet trong giáo dục.&quot;</li> 	<li>Phụ lục văn bản, có trong nội dung &quot;Khuyến cáo khi sử dụng các hệ thống CNTT&quot;, hạng mục số 3 ghi rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.</li> </ul>  <h3><span style="font-size:14px;"><em><strong><span class="mw-headline" id=".C4.90.C6.B0.E1.BB.A3c_.C6.B0u_ti.C3.AAn_mua_s.E1.BA.AFm_s.E1.BB.AD_d.E1.BB.A5ng_trong_ch.C3.ADnh_ph.E1.BB.A7">Được ưu tiên mua sắm sử dụng trong chính phủ</span></strong></em></span></h3>  <p>NukeViet CMS là hệ quản trị nội dung nguồn mở được quy định ưu tiên mua sắm, sử dụng trong các cơ quan, tổ chức nhà nước Việt Nam theo thông tư 20/2014/TT-BTTTT ký ngày 05/12/2014 và có hiệu lực từ ngày 20/1/2015 quy định về các sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước</p>  <h2><br  /> <span style="font-size:20px;"><span class="mw-headline" id="T.C3.ADnh_n.C4.83ng"><strong>Tính năng</strong></span></span></h2>  <h3><span style="font-size:14px;"><strong>NukeViet CMS 3.0 bản gốc có các module cơ bản là:</strong></span></h3>  <ul> 	<li>Quản lý Tin tức (<i>News</i>: Tạo bản tin chủ đề đa cấp, phân quyền theo chủ đề, hẹn giờ đăng tin, tạo bản in, bản tải về, thảo luận bản tin),</li> 	<li>Giới thiệu (<i>About</i>),</li> 	<li>Quản lý quảng cáo thương mại (banners),</li> 	<li>Quản lý người dùng (<i>users</i>),</li> 	<li>Liên hệ qua site (<i>Contact</i>),</li> 	<li>Cấp tin RSS (<i>RSS feeds</i>) và thu thập tin RSS (&quot;RSS reader&quot;),</li> 	<li>Bình chọn (thăm dò ý kiến - <i>Voting</i>),</li> 	<li>Thư viện file (<i>Download</i>),</li> 	<li>Thư viện Web (<i>Weblinks</i>),</li> 	<li>Hỏi nhanh đáp gọn(<i>Faq</i>),</li> 	<li>Thống kê truy cập (<i>statistics</i>),</li> 	<li>Tìm kiếm trong site (<i>Search</i>),</li> 	<li>Bán hàng trực tuyến (<i>Shop</i>) (có từ NukeViet 3.1)...</li> </ul>  <h3><span style="font-size:14px;"><strong>Tính năng hệ thống:</strong></span></h3>  <ul> 	<li>Cài đặt, nâng cấp và đóng gói tự động.</li> 	<li>Hỗ trợ đa ngôn ngữ giao diện và đa ngôn ngữ Cơ sở dữ liệu 100%, cho phép người sử dụng tự xây dựng ngôn ngữ mới.</li> 	<li>Thay đổi &amp; tùy biến giao diện nhiều cấp độ, cho phép người sử dụng có thể cài thêm giao diện mới hoặc tùy biến giao diện trên site theo ý thích. Người sử dụng có thể tùy biến bố cục giao diện theo layout, theo block ở các khu vực khác nhau của website.</li> 	<li>Quản lý module với khả năng xử lý đa nhân module (ảo hóa module).</li> 	<li>Cho phép phân nhóm thành viên và phân quyền người quản trị theo nhiều cấp độ khác nhau.</li> 	<li>Hỗ trợ tối ưu hóa cho các công cụ tìm kiếm (SEO): Rewrite, tạo Sitemap, Ping sitemap, chẩn đoán site, phân tích từ khóa, tạo keyword, quản lý máy chủ tìm kiếm (Bot)...</li> 	<li>Quản lý và sao lưu cơ sở dữ liệu.</li> 	<li>Cấu hình tùy biến, tường lửa đa cấp, xử lý tiến trình tự động...</li> 	<li>Hỗ trợ thiết bị di động (mobile), cho phép thay đổi giao diện tương thích (từ phiên bản 3.3)</li> 	<li>...</li> </ul>  <h2><span style="font-size:20px;"><strong><span class="mw-headline" id=".E1.BB.A8ng_d.E1.BB.A5ng">Ứng dụng</span></strong></span></h2>  <p>NukeViet được sử dụng ở nhiều website, từ những website cá nhân cho tới những hệ thống website doanh nghiệp, nó cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng bằng cách cài thêm các module, block... Trước đây, NukeViet chủ yếu được sử dụng làm trang tin tức nhờ module News tích hợp sẵn trong NukeViet được viết rất công phu, nó lại đặc biệt phù hợp với yêu cầu và đặc điểm sử dụng cho hệ thống tin tức. Kể từ phiên bản NukeViet 3, đội ngũ phát triển NukeViet đã định nghĩa lại NukeViet, theo đó, NukeViet được coi như phần mềm trực tuyến mà chức năng CMS chỉ là một module của NukeViet. NukeViet có thể dễ dàng cài đặt, dễ dàng quản lý kể cả với những người mới sử dụng do đó thường được những đối tượng người dùng không chuyên ưa thích.<br  /> <br  /> NukeViet có mã nguồn mở do đó việc sử dụng NukeViet là hoàn toàn miễn phí cho tất cả mọi người trên thế giới. Từ bản 2.0 trở về trước, đối tượng người dùng chủ yếu của NukeViet là người Việt vì những đặc điểm của bản thân mã nguồn (có nguồn gốc từ PHP-Nuke) và vì chính sách của nhóm phát triển là: &quot;hệ thống Portal dành cho người Việt&quot;. Kể từ phiên bản 3.0, đội ngũ phát triển NukeViet định hướng đưa NukeViet ra cộng đồng quốc tế.</p>  <ul> 	<li>Các cổng thông tin điện tử</li> 	<li>Các tập đoàn kinh tế</li> 	<li>Giải trí trực tuyến, văn hóa, nghệ thuật.</li> 	<li>Báo điện tử, tạp chí điện tử</li> 	<li>Website của các doanh nghiệp vừa và nhỏ</li> 	<li>Website của các cơ quan, tổ chức chính phủ</li> 	<li>Website giáo dục, trường học</li> 	<li>Website của gia đình, cá nhân, nhóm sở thích...</li> </ul>  <p><br  /> Ngoài các ứng dụng website ở trên, thực tế NukeViet đã được ứng dụng làm rất nhiều phần mềm khác như: Phần mềm quản lý kho hàng, phần mềm bán hàng, phần mềm quản lý quán BI-A trợ giúp bật tắt điện đèn bàn bóng, phần mềm tòa soạn điện tử, phần mềm quản lý hồ sơ, quản lý nhân sự trực tuyến, phần mềm tra cứu điểm thi hỗ trợ SMS...</p>', '', 0, '4', '', 1, 1, 1629627264, 1629627264, 1, 0, 0),
(2, 'Giới thiệu về NukeViet CMS', 'gioi-thieu-ve-nukeviet-cms', '', '', 0, '', '<p>CMS là gì?<br  /> CMS là từ viết tắt từ Content Management System. Theo wikipedia</p>  <blockquote> <p><strong>Định nghĩa.</strong><br  /> Hệ quản trị nội dung, cũng được gọi là hệ thống quản lý nội dung hay CMS (từ Content Management System của tiếng Anh) là phần mềm để tổ chức và tạo môi trường cộng tác thuận lợi nhằm mục đích xây dựng một hệ thống tài liệu và các loại nội dung khác một cách thống nhất. Mới đây thuật ngữ này liên kết với chương trình quản lý nội dung của website. Quản lý nội dung web (web content management) cũng đồng nghĩa như vậy.<br  /> <br  /> <span class="mw-headline" id="Ch.E1.BB.A9c_n.C4.83ng"><strong>Chức năng</strong>.</span><br  /> Quản trị những nội dung tài liệu điện tử (bao gồm những tài liệu, văn bản số và đã được số hoá) của tổ chức. Những chức năng bao gồm:</p>  <ul> 	<li>Tạo lập nội dung;</li> 	<li>Lưu trữ nội dung;</li> 	<li>Chỉnh sửa nội dung;</li> 	<li>Chuyển tải nội dung;</li> 	<li>Chia sẻ nội dung;</li> 	<li>Tìm kiếm nội dung;</li> 	<li>Phân quyền người dùng và nội dung...</li> </ul>  <p><strong>Đặc điểm.</strong><br  /> Các đặc điểm cơ bản của CMS bao gồm:</p>  <ul> 	<li>Phê chuẩn việc tạo hoặc thay đổi nội dung trực tuyến</li> 	<li>Chế độ Soạn thảo &quot;Nhìn là biết&quot; WYSIWYG</li> 	<li>Quản lý người dùng</li> 	<li>Tìm kiếm và lập chỉ mục</li> 	<li>Lưu trữ</li> 	<li>Tùy biến giao diện</li> 	<li>Quản lý ảnh và các liên kết (URL)</li> </ul> </blockquote>  <p><br  /> NukeViet CMS là một <strong>hệ quản trị nội dung</strong> (<em>Content Management System - CMS</em>) cho phép bạn quản lý các cổng thông tin điện tử trên Internet. Nói đơn giản, NukeViet giống như một phần mềm giúp bạn<strong> xây dựng</strong> và <strong>vận hành</strong> các trang web của mình một cách dễ dàng nhất.</p>  <p>NukeViet CMS là một phần mềm <strong>mã nguồn mở</strong>, do đó việc sử dụng <strong>hoàn toàn miễn phí</strong>, bạn có thể tải NukeViet CMS về bất cứ lúc nào tại website chính thức của NukeViet là <strong><a href="http://nukeviet.vn">nukeviet.vn</a></strong>. Bạn có thể cài NukeViet lên hosting để sử dụng hoặc cũng có thể thử nghiệm bằng cách cài ngay lên máy tính cá nhân.</p>  <p>NukeViet cho phép xây dựng một website động, đa chức năng, hiện đại một cách nhanh chóng mà người vận hành nó thậm chí <strong>không cần phải biết một tí gì về lập trình</strong> bởi tất cả các tác vụ quản lý phức tạp đều được tự động hóa ở mức cao. NukeViet đặc biệt dễ dàng sử dụng vì hoàn toàn bằng tiếng Việt và được thiết kế phù hợp nhất với thói quen sử dụng mạng của <strong>người Việt Nam</strong>.</p>  <p>Bằng việc sử dụng các công nghệ web mới nhất hiện nay, thiết kế hệ thống uyển chuyển và sở hữu những tính năng độc đáo, NukeViet sẽ giúp bạn triển khai các ứng dụng web từ nhỏ đến lớn một cách nhanh chóng và tiết kiệm: từ các website cá nhân cho tới các cổng thông tin điện tử; từ các gian hàng trực tuyến cho tới các mạng xã hội...</p> NukeViet là CMS <strong>mã nguồn mở đầu tiên của Việt Nam</strong> có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là <a href="http://vinades.vn" target="_blank">VINADES.,JSC</a> - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp.', '', 0, '4', '', 2, 1, 1629627264, 1629627264, 1, 0, 0),
(3, 'Logo và tên gọi NukeViet', 'logo-va-ten-goi-nukeviet', '', '', 0, '', '<p><span style="color: rgb(255, 0, 0);"><span style="font-size: 14px;"><strong>Tên gọi:</strong></span></span><br  /> <strong>NukeViet </strong>phát âm là <strong>&#91;Nu-Ke-Việt</strong>&#93;, đây là cách đọc riêng, không phải là cách phát âm chuẩn của tiếng Anh.<br  /> <br  /> <strong>Ý nghĩa:</strong><br  /> NukeViet là từ ghép từ chữ <strong>Nuke </strong>và <strong>Việt Nam</strong>.<br  /> <br  /> Sở dĩ có tên gọi này là vì phiên bản 1.0 và 2.0 của NukeViet được phát triển từ mã nguồn mở<strong> PHP-Nuke</strong>.</p>  <p>Mặc dù từ phiên bản 3.0, NukeViet được viết mới hoàn toàn và trong quá trình phát triển của mình, nhiều cái tên đã được đưa ra để thay thế nhưng cuối cùng cái tên NukeViet đã được giữ lại để nhớ rằng <strong>NukeViet </strong>được khởi đầu từ <strong>PHP-Nuke</strong> và để cảm ơn <strong>Franscisco Burzi</strong> - Tác giả PHP-Nuke - vì chính ông là nhân tố để có một cộng đồng mã nguồn mở NukeViet với hàng chục ngàn người dùng như hiện nay.</p>  <p><strong>Nuke</strong> trong tiếng Anh (từ lóng) có nghĩa là &quot;<strong>vũ khí hạt nhân</strong>&quot; (nuclear weapons). Xem: <a href="http://vi.wiktionary.org/wiki/nuke" target="_blank">http://vi.wiktionary.org/wiki/nuke</a></p>  <p>Đội ngũ phát triển cũng hy vọng rằng <strong>NukeViet </strong>sẽ phát triển bùng nổ như đúng tên gọi của nó.</p>  <p><span style="color: rgb(255, 0, 0);"><span style="font-size: 14px;"><strong>Logo NukeViet 3.0:</strong></span></span><br  /> Sau thời gian dài lựa chọn từ hàng chục mẫu thiết kế của thành viên diễn đàn NukeViet.VN và các nhà thiết kế đồ họa chuyên nghiệp... logo chính thức của NukeViet 3.0 đã được Ban Quản Trị chọn lựa đúng trước ngày Offline phát hành bản NukeViet 3.0 một ngày.<br  /> <br  /> Logo NukeViet 3.0 được lấy hình tượng từ Biển, Đêm, và Ánh Trăng trong khung hình giọt nước:</p>  <p style="text-align:center"><img alt="w" height="143" src="/uploads/about/w.png" style="width: 288px; height: 143px; border-width: 0px; border-style: solid;" width="288" /></p>  <p>Dưới nền trắng, cả logo nhìn như cảnh biển đêm huyền ảo, tĩnh mịch với mặt nước biển, bầu trời, thuyền buồm và ánh trăng. Đây là những hình ảnh biểu tượng cho sự thanh bình mà bất cứ ai cũng mong ước được thấy khi ngắm biển về đêm.<br  /> <br  /> Màu xanh thẫm là màu hòa quyện của của mặt biển, bầu trời về đêm, màu này cũng gần với màu xanh tượng trưng cho hòa bình.<br  /> Hai vệt khuyết chính là ánh trăng sáng màu bạc phản chiếu lên giọt nước.<br  /> <br  /> Giọt nước còn là biểu tượng cho sự sống, cho khát khao bất diệt của vạn vật trên trái đất này.<br  /> <br  /> <strong>Thông số chuẩn của màu logo:</strong><br  /> -&nbsp;&nbsp;&nbsp; Màu xanh: C80, M60, Y0, K0<br  /> <br  /> <strong>Tác giả mẫu thiết kế:</strong> Lê Thanh Xuân, chuyên viên thiết kế đồ họa của VINADES.,JSC</p>  <p><span style="color: rgb(255, 0, 0);"><span style="font-size: 14px;"><strong>Slogan NukeViet 3.0:</strong></span></span> “Chia sẻ thành công, kết nối đam mê”, Tiếng Anh: “Sharing success, connect passions”</p>  <p>Slogan này của tác giả HoaiNamDr, đây là slogan đã đoạt giải trong cuộc thi sáng tác slogan trên diễn đàn NukeViet.VN</p>  <div style="text-align:center"><img alt="nukevietcms 180x84" height="84" src="/uploads/about/nukevietcms-180x84.png" width="180" /></div>  <p style="text-align: center;">Mẫu phối Logo, slogan và tên NukeViet CMS (180x84px)<br  /> Tải về mẫu kích thước lớn <a href="/uploads/about/nukevietcms.png">logo-nukeviet-cms.png</a> (1500x700px)</p>  <div style="text-align:center"><img alt="nukevietcms mu noel 180x84" height="84" src="/uploads/about/nukevietcms_mu_noel_180x84.png" width="180" /></div>  <p style="text-align: center;">Mẫu phối Logo, slogan và tên NukeViet CMS với chiếc mũ ông già Noel (184x84px)<br  /> &nbsp;</p>  <div style="text-align:center"><img alt="logo nukeviet3 flag 180x75" height="75" src="/uploads/about/logo-nukeviet3-flag-180x75.png" width="180" /></div>  <p style="text-align: center;">Mẫu phối Logo, slogan và tên NukeViet CMS cắm cờ Việt Nam (180x75px)<br  /> &nbsp;</p>  <div style="text-align:center"><img alt="nukevietcms laco 180x57" height="57" src="/uploads/about/nukevietcms_laco_180x57.png" width="180" /></div>  <p style="text-align: center;">Mẫu phối Logo, slogan và tên NukeViet CMS với chiếc ruy băng cờ Việt Nam (180x57px)</p>  <div style="text-align:center"><img alt="nukevietvn 180x84" height="84" src="/uploads/about/nukevietvn_180x84.png" width="180" /></div>  <p style="text-align: center;">Mẫu phối Logo, slogan và tên NukeViet.VN (180x84px)<br  /> Tải về mẫu kích thước lớn <a href="/uploads/about/nukevietvn.png">logo-nukeviet-big.png</a> (1500x700px)</p>  <p><br  /> <strong>Tải về file đồ họa gốc:</strong><br  /> - <a href="http://nukeviet.vn/vi/download/Tai-lieu/NukeViet-logo/">NukeViet logo</a> - hình ảnh gốc có độ phân giải cao, bao gồm cả font chữ, có thể sử dụng cho in ấn sticker, in logo lên áo hoặc in Backdrop, Standy khổ lớn.</p>', '', 0, '4', '', 3, 1, 1629627264, 1629627264, 1, 0, 0),
(4, 'Giấy phép sử dụng NukeViet', 'giay-phep-su-dung-nukeviet', '', '', 0, 'Giấy phép công cộng GNU (tiếng Anh: GNU General Public License, viết tắt GNU GPL hay chỉ GPL) là giấy phép phần mềm tự do được sử dụng để phân phối mã nguồn mở NukeViet.', '<p><strong>Bản dịch tiếng Việt của Giấy phép Công cộng GNU</strong></p>\r\n\r\n<p>Người dịch&nbsp;<a href="mailto:dangtuan@vietkey.net">Đặng Minh Tuấn &lt;dangtuan@vietkey.net&gt;</a></p>\r\n\r\n<p>Đây là bản dịch tiếng Việt không chính thức của Giấy phép Công cộng GNU. Bản dịch này không phải do Tổ chức Phần mềm Tự do ấn hành, và nó không quy định về mặt pháp lý các điều khoản cho các phần mềm sử dụng giấy phép GNU GPL -- chỉ có bản tiếng Anh gốc của GNU GPL mới có tính pháp lý. Tuy nhiên, chúng tôi hy vọng rằng bản dịch này sẽ giúp cho những người nói tiếng Việt hiểu rõ hơn về GNU GPL.</p>\r\n\r\n<p>This is an unofficial translation of the GNU General Public License into Vietnamese. It was not published by the Free Software Foundation, and does not legally state the distribution terms for software that uses the GNU GPL--only the original English text of the GNU GPL does that. However, we hope that this translation will help Vietnamese speakers understand the GNU GPL better.</p>\r\n\r\n<hr  />\r\n<h3>GIẤY PHÉP CÔNG CỘNG GNU (GPL)</h3>\r\nGiấy phép công cộng GNU<br />\r\nPhiên bản 2, tháng 6/1991<br />\r\nCopyright (C) 1989, 1991 Free Software Foundation, Inc. &nbsp;<br />\r\n59 Temple Place - Suite 330, Boston, MA&nbsp; 02111-1307, USA\r\n<p>Mọi người đều được phép sao chép và lưu hành bản sao nguyên bản nhưng không được phép thay đổi nội dung của giấy phép này.<br />\r\n<br />\r\n<strong>Lời nói đầu</strong><br />\r\n<br />\r\nGiấy phép sử dụng của hầu hết các phần mềm đều được đưa ra nhằm hạn chế bạn tự do chia sẻ và thay đổi nó. Ngược lại, Giấy phép Công cộng của GNU có mục đích đảm bảo cho bạn có thể tự do chia sẻ và thay đổi phần mềm tự do - tức là đảm bảo rằng phần mềm đó là tự do đối với mọi người sử dụng. Giấy phép Công cộng này áp dụng cho hầu hết các phần mềm của Tổ chức Phần mềm Tự do và cho tất cả các chương trình khác mà tác giả cho phép sử dụng. (Đối với một số phần mềm khác của Tổ chức Phần Mềm Tự do, áp dụng Giấy phép Công cộng Hạn chế của GNU thay cho giấy phép công cộng). Bạn cũng có thể áp dụng nó cho các chương trình của mình.<br />\r\n<br />\r\nKhi nói đến phần mềm tự do, chúng ta nói đến sự tự do sử dụng chứ không quan tâm về giá cả. Giấy phép Công cộng của chúng tôi được thiết kế để đảm bảo rằng bạn hoàn toàn tự do cung cấp các bản sao của phần mềm tự do (cũng như kinh doanh dịch vụ này nếu bạn muốn), rằng bạn có thể nhận được mã nguồn nếu bạn có yêu cầu, rằng bạn có thể thay đổi phần mềm hoặc sử dụng các thành phần của phần mềm đó cho những chương trình tự do mới; và rằng bạn biết chắc là bạn có thể làm được những điều này.<br />\r\n<br />\r\nĐể bảo vệ bản quyền của bạn, chúng tôi cần đưa ra những hạn chế để ngăn chặn những ai chối bỏ quyền của bạn, hoặc yêu cầu bạn chối bỏ quyền của mình. Những hạn chế này cũng có nghĩa là những trách nhiệm nhất định của bạn khi cung cấp các bản sao phần mềm hoặc khi chỉnh sửa phần mềm đó.<br />\r\n<br />\r\nVí dụ, nếu bạn cung cấp các bản sao của một chương trình, dù miễn phí hay không, bạn phải cho người nhận tất cả các quyền mà bạn có. Bạn cũng phải đảm bảo rằng họ cũng nhận được hoặc tiếp cận được mã nguồn. Và bạn phải thông báo những điều khoản này cho họ để họ biết rõ về quyền của mình.<br />\r\n<br />\r\nChúng tôi bảo vệ quyền của bạn với hai bước: (1) bảo vệ bản quyền phần mềm, và (2) cung cấp giấy phép này để bạn có thể sao chép, lưu hành và/hoặc chỉnh sửa phần mềm một cách hợp pháp.<br />\r\n<br />\r\nNgoài ra, để bảo vệ các tác giả cũng như để bảo vệ chính mình, chúng tôi muốn chắc chắn rằng tất cả mọi người đều hiểu rõ rằng không hề có bảo hành đối với phần mềm tự do này. Nếu phần mềm được chỉnh sửa thay đổi bởi một người khác và sau đó lưu hành, thì chúng tôi muốn những người sử dụng biết rằng phiên bản họ đang có không phải là bản gốc, do đó tất cả những trục trặc do những người khác gây ra hoàn toàn không ảnh hưởng tới uy tín của tác giả ban đầu.<br />\r\n<br />\r\nCuối cùng, bất kỳ một chương trình tự do nào cũng đều thường xuyên có nguy cơ bị đe doạ về giấy phép bản quyền. Chúng tôi muốn tránh nguy cơ khi những người cung cấp lại một chương trình tự do có thể có được giấy phép bản quyền cho bản thân họ, từ đó trở thành độc quyền đối với chương trình đó. Để ngăn ngừa trường hợp này, chúng tôi đã nêu rõ rằng mỗi giấy phép bản quyền hoặc phải được cấp cho tất cả mọi người sử dụng một cách tự do hoặc hoàn toàn không cấp phép.<br />\r\n<br />\r\nDưới đây là những điều khoản và điều kiện rõ ràng đối với việc sao chép, lưu hành và chỉnh sửa.<br />\r\n<br />\r\n<strong>Những điều khoản và điều kiện đối với việc sao chép, lưu hành và chỉnh sửa</strong><br />\r\n<br />\r\n<strong>0.</strong>&nbsp;Giấy phép này áp dụng cho bất kỳ một chương trình hay sản phẩm nào mà người giữ bản quyền công bố rằng nó có thể được cung cấp trong khuôn khổ những điều khoản của Giấy phép Công cộng này. Từ “Chương trình” dưới đây có nghĩa là tất cả các chương trình hay sản phẩm như vậy, và “sản phẩm dựa trên Chương trình” có nghĩa là Chương trình hoặc bất kỳ một sản phẩm nào bắt nguồn từ chương trình đó tuân theo luật bản quyền, nghĩa là một sản phẩm dựa trên Chương trình hoặc một phần của nó, đúng nguyên bản hoặc có một số chỉnh sửa và/hoặc được dịch ra một ngôn ngữ khác. (Dưới đây, việc dịch cũng được hiểu trong khái niệm “chỉnh sửa”). Mỗi người được cấp phép được gọi là “bạn”.<br />\r\n<br />\r\nTrong Giấy phép này không đề cập tới các hoạt động khác ngoài việc sao chép, lưu hành và chỉnh sửa; chúng nằm ngoài phạm vi của giấy phép này. Hành động chạy chương trình không bị hạn chế, và những kết quả từ việc chạy chương trình chỉ được đề cập tới nếu nội dung của nó tạo thành một sản phẩm dựa trên chương trình (độc lập với việc chạy chương trình). Điều này đúng hay không là phụ thuộc vào Chương trình.<br />\r\n<br />\r\n<strong>1.</strong>&nbsp;Bạn có thể sao chép và lưu hành những phiên bản nguyên bản của mã nguồn Chương trình đúng như khi bạn nhận được, qua bất kỳ phương tiện phân phối nào, với điều kiện trên mỗi bản sao bạn đều kèm theo một ghi chú bản quyền rõ ràng và từ chối bảo hành; giữ nguyên tất cả các ghi chú về Giấy phép và về việc không có bất kỳ một sự bảo hành nào; và cùng với Chương trình bạn cung cấp cho người sử dụng một bản sao của Giấy phép này.<br />\r\n<br />\r\nBạn có thể tính phí cho việc chuyển giao bản sao, và tuỳ theo quyết định của mình bạn có thể cung cấp bảo hành để đổi lại với chi phí mà bạn đã tính.<br />\r\n<br />\r\n<strong>2.</strong>&nbsp;Bạn có thể chỉnh sửa bản sao của bạn hoặc các bản sao của Chương trình hoặc của bất kỳ phần nào của nó, từ đó hình thành một sản phẩm dựa trên Chương trình, và sao chép cũng như lưu hành sản phẩm đó hoặc những chỉnh sửa đó theo điều khoản trong Mục 1 ở trên, với điều kiện bạn đáp ứng được những điều kiện dưới đây:<br />\r\n•&nbsp;&nbsp; &nbsp;a) Bạn phải có ghi chú rõ ràng trong những tập tin đã chỉnh sửa là bạn đã chỉnh sửa nó, và ngày tháng của bất kỳ một thay đổi nào.<br />\r\n•&nbsp;&nbsp; &nbsp;b) Bạn phải cấp phép miễn phí cho tất cả các bên thứ ba đối với các sản phẩm bạn cung cấp hoặc phát hành, bao gồm Chương trình nguyên bản, từng phần của nó hay các sản phẩm dựa trên Chương trình hay dựa trên từng phần của Chương trình, theo những điều khoản của Giấy phép này.<br />\r\n•&nbsp;&nbsp; &nbsp;c) Nếu chương trình đã chỉnh sửa thường đọc lệnh tương tác trong khi chạy, bạn phải thực hiện sao cho khi bắt đầu chạy để sử dụng tương tác theo cách thông thường nhất phải có một thông báo bao gồm bản quyền và thông báo về việc không có bảo hành (hoặc thông báo bạn là người cung cấp bảo hành), và rằng người sử dụng có thể cung cấp lại Chương trình theo những điều kiện này, và thông báo để người sử dụng có thể xem bản sao của Giấy phép này. (Ngoại lệ: nếu bản thân Chương trình là tương tác nhưng không có một thông báo nào như trên, thì sản phẩm của bạn dựa trên Chương trình đó cũng không bắt buộc phải có thông báo như vậy).<br />\r\n<br />\r\nNhững yêu cầu trên áp dụng cho toàn bộ các sản phẩm chỉnh sửa. Nếu có những phần của sản phẩm rõ ràng không bắt nguồn từ Chương trình, và có thể được xem là độc lập và riêng biệt, thì Giấy phép này và các điều khoản của nó sẽ không áp dụng cho những phần đó khi bạn cung cấp chúng như những sản phẩm riêng biệt. Nhưng khi bạn cung cấp những phần đó như những phần nhỏ trong cả một sản phẩm dựa trên Chương trình, thì việc cung cấp này phải tuân theo những điều khoản của Giấy phép này, cho phép những người được cấp phép có quyền đối với toàn bộ sản phẩm, cũng như đối với từng phần trong đó, bất kể ai đã viết nó.<br />\r\n<br />\r\nNhư vậy, điều khoản này không nhằm mục đích xác nhận quyền hoặc tranh giành quyền của bạn đối với những sản phẩm hoàn toàn do bạn viết; mà mục đích của nó là nhằm thi hành quyền kiểm soát đối với việc cung cấp những sản phẩm bắt nguồn hoặc tổng hợp dựa trên Chương trình.<br />\r\n<br />\r\nNgoài ra, việc kết hợp thuần tuý Chương trình (hoặc một sản phẩm dựa trên Chương trình) với một sản phẩm không dựa trên Chương trình với mục đích lưu trữ hoặc quảng bá không đưa sản phẩm đó vào trong phạm vi áp dụng của Giấy phép này.<br />\r\n<br />\r\n<strong>3.</strong>&nbsp;Bạn có thể sao chép và cung cấp Chương trình (hoặc một sản phẩm dựa trên Chương trình, nêu trong Mục 2) dưới hình thức mã đã biên dịch hoặc dạng có thể thực thi được trong khuôn khổ các điều khoản nêu trong Mục 1 và 2 ở trên, nếu như bạn:<br />\r\n•&nbsp;&nbsp; &nbsp;a) Kèm theo đó một bản mã nguồn dạng đầy đủ có thể biên dịch được theo các điều khoản trong Mục 1 và 2 nêu trên trong một môi trường trao đổi phần mềm thông thường; hoặc,<br />\r\n•&nbsp;&nbsp; &nbsp;b) Kèm theo đó một đề nghị có hạn trong ít nhất 3 năm, theo đó cung cấp cho bất kỳ một bên thứ ba nào một bản sao đầy đủ của mã nguồn tương ứng, và phải được cung cấp với giá chi phí không cao hơn giá chi phí vật lý của việc cung cấp theo các điều khoản trong Mục 1 và 2 nêu trên trong một môi trường trao đổi phần mềm thông thường; hoặc<br />\r\n•&nbsp;&nbsp; &nbsp;c) Kèm theo đó thông tin bạn đã nhận được để đề nghị cung cấp mã nguồn tương ứng. (Phương án này chỉ được phép đối với việc cung cấp phi thương mại và chỉ với điều kiện nếu bạn nhận được Chương trình dưới hình thức mã đã biên dịch hoặc dạng có thể thực thi được cùng với lời đề nghị như vậy, theo phần b trong điều khoản nêu trên).<br />\r\n<br />\r\nMã nguồn của một sản phẩm là một dạng ưu tiên của sản phẩm dành cho việc chỉnh sửa nó. Với một sản phẩm có thể thi hành, mã nguồn hoàn chỉnh có nghĩa là tất cả các mã nguồn cho các môđun trong sản phẩm đó, cộng với tất cả các tệp tin định nghĩa giao diện đi kèm với nó, cộng với các hướng dẫn dùng để kiểm soát việc biên dịch và cài đặt các tệp thi hành. Tuy nhiên, một ngoại lệ đặc biệt là mã nguồn không cần chứa bất kỳ một thứ gì mà bình thường được cung cấp (từ nguồn khác hoặc hình thức nhị phân) cùng với những thành phần chính (chương trình biên dịch, nhân, và những phần tương tự) của hệ điều hành mà các chương trình chạy trong đó, trừ khi bản thân thành phần đó lại đi kèm với một tệp thi hành.<br />\r\n<br />\r\nNếu việc cung cấp lưu hành mã đã biên dịch hoặc tập tin thi hành được thực hiện qua việc cho phép tiếp cận và sao chép từ một địa điểm được chỉ định, thì việc cho phép tiếp cận tương đương tới việc sao chép mã nguồn từ cùng địa điểm cũng được tính như việc cung cấp mã nguồn, mặc dù thậm chí các bên thứ ba không bị buộc phải sao chép mã nguồn cùng với mã đã biên dịch.<br />\r\n<br />\r\n<strong>4.</strong>&nbsp;Bạn không được phép sao chép, chỉnh sửa, cấp phép hoặc cung cấp Chương trình trừ phi phải tuân thủ một cách chính xác các điều khoản trong Giấy phép. Bất kỳ ý định sao chép, chỉnh sửa, cấp phép hoặc cung cấp Chương trình theo cách khác đều làm mất hiệu lực và tự động huỷ bỏ quyền của bạn trong khuôn khổ Giấy phép này. Tuy nhiên, các bên đã nhận được bản sao hoặc quyền từ bạn với Giấy phép này sẽ không bị huỷ bỏ giấy phép nếu các bên đó vẫn tuân thủ đầy đủ các điều khoản của giấy phép.<br />\r\n<br />\r\n<strong>5.</strong>&nbsp;Bạn không bắt buộc phải chấp nhận Giấy phép này khi bạn chưa ký vào đó. Tuy nhiên, không có gì khác đảm bảo cho bạn được phép chỉnh sửa hoặc cung cấp Chương trình hoặc các sản phẩm bắt nguồn từ Chương trình. Những hành động này bị luật pháp nghiêm cấm nếu bạn không chấp nhận Giấy phép này. Do vậy, bằng việc chỉnh sửa hoặc cung cấp Chương trình (hoặc bất kỳ một sản phẩm nào dựa trên Chương trình), bạn đã thể hiện sự chấp thuận đối với Giấy phép này, cùng với tất cả các điều khoản và điều kiện đối với việc sao chép, cung cấp hoặc chỉnh sửa Chương trình hoặc các sản phẩm dựa trên nó.<br />\r\n<br />\r\n<strong>6.</strong> Mỗi khi bạn cung cấp lại Chương trình (hoặc bất kỳ một sản phẩm nào dựa trên Chương trình), người nhận sẽ tự động nhận được giấy phép từ người cấp phép đầu tiên cho phép sao chép, cung cấp và chỉnh sửa Chương trình theo các điều khoản và điều kiện này. Bạn không thể áp đặt bất cứ hạn chế nào khác đối với việc thực hiện quyền của người nhận đã được cấp phép từ thời điểm đó. Bạn cũng không phải chịu trách nhiệm bắt buộc các bên thứ ba tuân thủ theo Giấy phép này.<br />\r\n<br />\r\n<strong>7.</strong>&nbsp;Nếu như, theo quyết định của toà án hoặc với những bằng chứng về việc vi phạm bản quyền hoặc vì bất kỳ lý do nào khác (không giới hạn trong các vấn đề về bản quyền), mà bạn phải tuân theo các điều kiện (nêu ra trong lệnh của toà án, biên bản thoả thuận hoặc ở nơi khác) trái với các điều kiện của Giấy phép này, thì chúng cũng không thể miễn cho bạn khỏi những điều kiện của Giấy phép này. Nếu bạn không thể đồng thời thực hiện các nghĩa vụ của mình trong khuôn khổ Giấy phép này và các nghĩa vụ thích đáng khác, thì hậu quả là bạn hoàn toàn không được cung cấp Chương trình. Ví dụ, nếu trong giấy phép bản quyền không cho phép những người nhận được bản sao trực tiếp hoặc gián tiếp qua bạn có thể cung cấp lại Chương trình thì trong trường hợp này cách duy nhất bạn có thể thoả mãn cả hai điều kiện là hoàn toàn không cung cấp Chương trình.<br />\r\n<br />\r\nNếu bất kỳ một phần nào trong điều khoản này không có hiệu lực hoặc không thể thi hành trong một hoàn cảnh cụ thể, thì sẽ cân đối áp dụng các điều khoản, và toàn bộ điều khoản sẽ được áp dụng trong những hoàn cảnh khác.<br />\r\n<br />\r\nMục đích của điều khoản này không nhằm buộc bạn phải vi phạm bất kỳ một bản quyền nào hoặc các quyền sở hữu khác hoặc tranh luận về giá trị hiệu lực của bất kỳ quyền hạn nào như vậy; mục đích duy nhất của điều khoản này là nhằm bảo vệ sự toàn vẹn của hệ thống cung cấp phần mềm tự do đang được thực hiện với giấy phép công cộng. Nhiều người đã đóng góp rất nhiều vào sự đa dạng của các phần mềm tự do được cung cấp thông qua hệ thống này với sự tin tưởng rằng hệ thống được sử dụng một cách thống nhất; tác giả/người cung cấp có quyền quyết định rằng họ có mong muốn cung cấp phần mềm thông qua hệ thống nào khác hay không, và người được cấp phép không thể có ảnh hưởng tới sự lựa chọn này.<br />\r\n<br />\r\nĐiều khoản này nhằm làm rõ những hệ quả của các phần còn lại của Giấy phép này.<br />\r\n<br />\r\n<strong>8.</strong>&nbsp;Nếu việc cung cấp và/hoặc sử dụng Chương trình bị cấm ở một số nước nhất định bởi quy định về bản quyền, người giữ bản quyền gốc đã đưa Chương trình vào dưới Giấy phép này có thể bổ sung một điều khoản hạn chế việc cung cấp ở những nước đó, nghĩa là việc cung cấp chỉ được phép ở các nước không bị liệt kê trong danh sách hạn chế. Trong trường hợp này, Giấy phép đưa vào những hạn chế được ghi trong nội dung của nó.<br />\r\n<br />\r\n<strong>9.&nbsp;</strong>Tổ chức Phần mềm Tự do có thể theo thời gian công bố những phiên bản chỉnh sửa và/hoặc phiên bản mới của Giấy phép Công cộng. Những phiên bản đó sẽ đồng nhất với tinh thần của phiên bản hiện này, nhưng có thể khác ở một số chi tiết nhằm giải quyết những vấn đề hay những lo ngại mới.<br />\r\n<br />\r\nMỗi phiên bản sẽ có một mã số phiên bản riêng. Nếu Chương trình và &quot;bất kỳ một phiên bản nào sau đó&quot; có áp dụng một phiên bản Giấy phép cụ thể, bạn có quyền lựa chọn tuân theo những điều khoản và điều kiện của phiên bản giấy phép đó hoặc của bất kỳ một phiên bản nào sau đó do Tổ chức Phần mềm Tự do công bố. Nếu Chương trình không nêu cụ thể mã số phiên bản giấy phép, bạn có thể lựa chọn bất kỳ một phiên bản nào đã từng được công bố bởi Tổ chức Phần mềm Tự do.<br />\r\n<br />\r\n<strong>10.</strong>&nbsp;Nếu bạn muốn kết hợp các phần của Chương trình vào các chương trình tự do khác mà điều kiện cung cấp khác với chương trình này, hãy viết cho tác giả để được phép. Đối với các phần mềm được cấp bản quyền bởi Tổ chức Phầm mềm Tự do, hãy đề xuất với tổ chức này; đôi khi chúng tôi cũng có những ngoại lệ. Quyết định của chúng tôi sẽ dựa trên hai mục tiêu là bảo hộ tình trạng tự do của tất cả các sản phẩm bắt nguồn từ phần mềm tự do của chúng tôi, và thúc đẩy việc chia sẻ và tái sử dụng phần mềm nói chung.<br />\r\n<br />\r\n<strong>KHÔNG BẢO HÀNH</strong><br />\r\nDO CHƯƠNG TRÌNH ĐƯỢC CẤP PHÉP MIỄN PHÍ NÊN KHÔNG CÓ MỘT CHẾ ĐỘ BẢO HÀNH NÀO TRONG MỨC ĐỘ CHO PHÉP CỦA LUẬT PHÁP. TRỪ KHI ĐƯỢC CÔNG BỐ KHÁC ĐI BẰNG VĂN BẢN, NHỮNG NGƯỜI GIỮ BẢN QUYỀN VÀ/HOẶC CÁC BÊN CUNG CẤP CHƯƠNG TRÌNH NGUYÊN BẢN SẼ KHÔNG BẢO HÀNH DƯỚI BẤT KỲ HÌNH THỨC NÀO, BAO GỒM NHƯNG KHÔNG GIỚI HẠN TRONG CÁC HÌNH THỨC BẢO HÀNH ĐỐI VỚI TÍNH THƯƠNG MẠI CŨNG NHƯ TÍNH THÍCH HỢP CHO MỘT MỤC ĐÍCH CỤ THỂ. BẠN LÀ NGƯỜI CHỊU TOÀN BỘ RỦI RO VỀ CHẤT LƯỢNG CŨNG NHƯ VIỆC VẬN HÀNH CHƯƠNG TRÌNH. TRONG TRƯỜNG HỢP CHƯƠNG TRÌNH CÓ KHIẾM KHUYẾT, BẠN PHẢI CHỊU TOÀN BỘ CHI PHÍ CHO NHỮNG DỊCH VỤ SỬA CHỮA CẦN THIẾT.<br />\r\n<br />\r\nTRONG TẤT CẢ CÁC TRƯỜNG HỢP TRỪ KHI CÓ YÊU CẦU CỦA LUẬT PHÁP HOẶC CÓ THOẢ THUẬN BẰNG VĂN BẢN, NHỮNG NGƯỜI CÓ BẢN QUYỀN HOẶC BẤT KỲ MỘT BÊN NÀO CHỈNH SỬA VÀ/HOẶC CUNG CẤP LẠI CHƯƠNG TRÌNH TRONG CÁC ĐIỀU KIỆN NHƯ ĐÃ NÊU TRÊN ĐỀU KHÔNG CÓ TRÁCH NHIỆM VỚI BẠN VỀ CÁC LỖI HỎNG HÓC, BAO GỒM CÁC LỖI CHUNG HAY ĐẶC BIỆT, NGẪU NHIÊN HAY TẤT YẾU NẢY SINH DO VIỆC SỬ DỤNG HOẶC KHÔNG SỬ DỤNG ĐƯỢC CHƯƠNG TRÌNH (BAO GỒM NHƯNG KHÔNG GIỚI HẠN TRONG VIỆC MẤT DỮ LIỆU, DỮ LIỆU THIẾU CHÍNH XÁC HOẶC CHƯƠNG TRÌNH KHÔNG VẬN HÀNH ĐƯỢC VỚI CÁC CHƯƠNG TRÌNH KHÁC), THẬM CHÍ CẢ KHI NGƯỜI CÓ BẢN QUYỀN VÀ CÁC BÊN KHÁC ĐÃ ĐƯỢC THÔNG BÁO VỀ KHẢ NĂNG XẢY RA NHỮNG THIỆT HẠI ĐÓ.<br />\r\n<br />\r\n<strong>KẾT THÚC CÁC ĐIỀU KIỆN VÀ ĐIỀU KHOẢN.</strong></p>\r\n\r\n<p><strong>Áp dụng những điều khoản trên như thế nào đối với chương trình của bạn</strong><br />\r\n<br />\r\nNếu bạn xây dựng một chương trình mới, và bạn muốn cung cấp một cách tối đa cho công chúng sử dụng, thì biện pháp tốt nhất để đạt được điều này là phát triển chương trình đó thành phần mềm tự do để ai cũng có thể cung cấp lại và thay đổi theo những điều khoản như trên.<br />\r\n<br />\r\nĐể làm được việc này, hãy đính kèm những thông báo như sau cùng với chương trình của mình. An toàn nhất là đính kèm chúng trong phần đầu của tập tin mã nguồn để thông báo một cách hiệu quả nhất về việc không có bảo hành; và mỗi tệp tin đều phải có ít nhất một dòng về “bản quyền” và trỏ đến toàn bộ thông báo.</p>\r\n\r\n<blockquote>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; <strong>Một dòng đề tên chương trình và nội dung của nó.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; Bản quyền (C) năm,&nbsp; tên tác giả.</strong><br />\r\n<br />\r\nChương trình này là phần mềm tự do, bạn có thể cung cấp lại và/hoặc chỉnh sửa nó theo những điều khoản của Giấy phép Công cộng của GNU do Tổ chức Phần mềm Tự do công bố; phiên bản 2 của Giấy phép, hoặc bất kỳ một phiên bản sau đó (tuỳ sự lựa chọn của bạn).<br />\r\n<br />\r\nChương trình này được cung cấp với hy vọng nó sẽ hữu ích, tuy nhiên KHÔNG CÓ BẤT KỲ MỘT BẢO HÀNH NÀO; thậm chí kể cả bảo hành về KHẢ NĂNG THƯƠNG MẠI hoặc TÍNH THÍCH HỢP CHO MỘT MỤC ĐÍCH CỤ THỂ. Xin xem Giấy phép Công cộng của GNU để biết thêm chi tiết.<br />\r\n<br />\r\nBạn phải nhận được một bản sao của Giấy phép Công cộng của GNU kèm theo chương trình này; nếu bạn chưa nhận được, xin gửi thư về Tổ chức Phần mềm Tự do, 59 Temple Place - Suite 330, Boston, MA&nbsp; 02111-1307, USA.<br />\r\n<br />\r\nXin hãy bổ sung thông tin về địa chỉ liên lạc của bạn (thư điện tử và bưu điện).</p>\r\n</blockquote>\r\n\r\n<p>Nếu chương trình chạy tương tác, hãy đưa một thông báo ngắn khi bắt đầu chạy chương trình như sau:</p>\r\n\r\n<blockquote>\r\n<p>Gnomovision phiên bản 69, Copyright (C) năm, tên tác giả.<br />\r\n<br />\r\nGnomovision HOÀN TOÀN KHÔNG CÓ BẢO HÀNH; để xem chi tiết hãy gõ `show w&#039;.&nbsp; Đây là một phần mềm miễn phí, bạn có thể cung cấp lại với những điều kiện nhất định, gõ ‘show c’ để xem chi tiết.<br />\r\nGiả thiết lệnh `show w&#039; và `show c&#039; cho xem những phần tương ứng trong Giấy phép Công cộng. Tất nhiên những lệnh mà bạn dùng có thể khác với ‘show w&#039; và `show c&#039;; những lệnh này có thể là nhấn chuột hoặc lệnh trong thanh công cụ - tuỳ theo chương trình của bạn.</p>\r\n</blockquote>\r\n\r\n<p>Bạn cũng cần phải lấy chữ ký của người phụ trách (nếu bạn là người lập trình) hoặc của trường học (nếu có) xác nhận từ chối bản quyền đối với chương trình. Sau đây là ví dụ:</p>\r\n\r\n<blockquote>\r\n<p>Yoyodyne, Inc., tại đây từ chối tất cả các quyền lợi bản quyền đối với chương trình `Gnomovision&#039; viết bởi James Hacker.<br />\r\n<br />\r\nchữ ký của Ty Coon, 1 April 1989<br />\r\nTy Coon, Phó Tổng Giám đốc.</p>\r\n</blockquote>\r\n\r\n<p>Giấy phép Công cộng này không cho phép đưa chương trình của bạn vào trong các chương trình độc quyền. Nếu chương trình của bạn là một thư viện thủ tục phụ, bạn có thể thấy nó hữu ích hơn nếu cho thư viện liên kết với các ứng dụng độc quyền. Nếu đây là việc bạn muốn làm, hãy sử dụng Giấy phép Công cộng Hạn chế của GNU thay cho Giấy phép này.</p>\r\n\r\n<hr  />\r\n<p><strong>Bản gốc của giấy phép bằng tiếng Anh có tại các địa chỉ sau:</strong></p>\r\n\r\n<ol>\r\n	<li>GNU General Public License, version 1, February 1989:&nbsp;<a href="http://www.gnu.org/licenses/old-licenses/gpl-1.0.txt" target="_blank">http://www.gnu.org/licenses/old-licenses/gpl-1.0.txt</a></li>\r\n	<li>GNU General Public License, version 2, June 1991:&nbsp;<a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html" target="_blank">http://www.gnu.org/licenses/old-licenses/gpl-2.0.html</a></li>\r\n	<li>GNU General Public License, version 3, 29 June 2007:&nbsp;<a href="http://www.gnu.org/licenses/gpl-3.0.txt" target="_blank">http://www.gnu.org/licenses/gpl-3.0.txt</a></li>\r\n</ol>\r\n\r\n<p><strong>Tài liệu tham khảo:</strong></p>\r\n\r\n<ol>\r\n	<li>Bản dịch tiếng Việt của Giấy phép Công cộng GNU tại OpenOffice.org:&nbsp;<br />\r\n	<a href="http://vi.openoffice.org/gplv.html" target="_blank">http://vi.openoffice.org/gplv.html</a></li>\r\n	<li>GPL tại&nbsp;Văn thư lưu trữ mở Wikisource:&nbsp;<a href="http://vi.wikisource.org/wiki/GPL" target="_blank">http://vi.wikisource.org/wiki/GPL</a></li>\r\n</ol>\r\n\r\n<p><strong>Xem thêm:</strong></p>\r\n\r\n<ol>\r\n	<li>LGPL tại&nbsp;Văn thư lưu trữ mở Wikisource:&nbsp;<a href="http://vi.wikisource.org/wiki/LGPL" target="_blank">http://vi.wikisource.org/wiki/LGPL</a></li>\r\n	<li>Giấy phép Công cộng GNU - WikiPedia:&nbsp;<br />\r\n	<a href="http://vi.wikipedia.org/wiki/Gi%E1%BA%A5y_ph%C3%A9p_C%C3%B4ng_c%E1%BB%99ng_GNU" target="_blank">http://vi.wikipedia.org/wiki/Giấy_phép_Công_cộng_GNU</a></li>\r\n	<li>Thảo luận giấy phép GNU GPL - HVA:<br />\r\n	&nbsp;<a href="http://www.hvaonline.net/hvaonline/posts/list/7120.hva" target="_blank">http://www.hvaonline.net/hvaonline/posts/list/7120.hva</a></li>\r\n	<li>Thảo luận tại diễn đàn:&nbsp;<a href="http://nukeviet.vn/phpbb/viewtopic.php?f=83&amp;t=1591" target="_blank">http://nukeviet.vn/phpbb/viewtopic.php?f=83&amp;t=1591</a></li>\r\n</ol>', 'giấy phép,công cộng,tiếng anh,gnu general,public license,gnu gpl,phần mềm,là tự,sử dụng,mã nguồn,bản dịch,tiếng việt,của gnu,đây là,này không,do tổ,chức tự,hành và,các điều,cho các,có bản,tuy nhiên,chúng tôi,cho những,phiên bản,mọi người,được phép,sao chép,lưu hành,bản sao,nguyên bản,nhưng không,và thay,nội dung,của này,hạn chế,tự do,chia sẻ,nukeviet,portal,mysql,php,cms,mã nguồn mở,thiết kế website', 0, '4', '', 4, 1, 1629627264, 1629627264, 1, 0, 0);
INSERT INTO `tms_vi_about` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(5, 'Những tính năng của NukeViet CMS 4.0', 'nhung-tinh-nang-cua-nukeviet-cms-4-0', '', '', 0, '', '<p><span style="font-size: 150%; line-height: 116%;"><span style="font-weight: bold;">Giới thiệu chung</span></span><br  /> <span style="font-weight: bold;">Mã nguồn mở NukeViet là sản phẩm của sự làm việc chuyên nghiệp: </span><br  /> Để xây dựng lên NukeViet 4, đội ngũ phát triển đã thành lập công ty VINADES.,JSC. Trong quá trình phát triển NukeViet 4, VINADES.,JSC đã hợp tác với nhiều đơn vị cung cấp hosting trong và ngoài nước để thử nghiệm host, đảm bảo tương thích với đa số các hosting chuyên nghiệp.<br  /> NukeViet 4 cũng được vận hành thử nghiệm, góp ý bởi nhiều webmaster có kinh nghiệm quản trị ở nhiều hệ thống khác nhau nhằm tối ưu các tính năng hệ thống cho người sử dụng.<br  /> NukeViet 4 được lập trình bởi các lập trình viên mà kinh nghiệm và tên tuổi của họ đã được xác lập cùng với tên tuổi của bộ mã nguồn mở tạo web đầu tiên của Việt Nam.<br  /> <br  /> <span style="font-weight: bold;">NukeViet 4 là một hệ thống mạnh:</span><br  /> Rút kinh nghiệm từ chính NukeViet 2, NukeViet 3, NukeViet 4 được viết mới hoàn toàn trên nền tảng kỹ thuật tiên tiến nhất hiện nay cho phép xây dựng các nền tảng ứng dụng trực tuyến lớn như Các cổng thông tin điện tử, các tòa soạn báo điện tử, các mạng xã hội và các hệ thống thương mại trực tuyến.<br  /> NukeViet 4 đã được thử nghiệm vận hành với dữ liệu lớn lên tới hàng triệu bản tin. Trên thực tế, NukeViet 4 cũng đã triển khai thành công cho các hiệp hội, doanh nghiệp có lượng truy cập rất lớn.<br  /> <br  /> <span style="font-weight: bold;">NukeViet 4 thích hợp cho mọi đối tượng:</span><br  /> NukeViet lấy người sử dụng làm trọng tâm, những tính năng của NukeViet tạo nên chuẩn mực trong việc sử dụng và quản trị. Vì thế, NukeViet 4 tốt cho cả người sử dụng lẫn người phát triển.<br  /> Với người sử dụng, NukeViet 4 cho phép tùy biến dễ dàng và sử dụng ngay mà không cần can thiệp vào hệ thống.<br  /> Với người phát triển, sử dụng NukeViet cho phép nhanh chóng xây dựng các nền tảng khác nhau nhờ việc viết thêm các module cho hệ thống thay vì phải tự mình viết cả một hệ thống.</p>  <p><span style="font-size: 150%; line-height: 116%;"><span style="font-weight: bold;">Các tính năng của NukeViet 4</span></span></p> <span style="font-weight: bold;">Nền tảng công nghệ</span>  <ul> 	<li><span id="cke_bm_178S" style="display: none;">&nbsp;</span>NukeViet CMS 4 lập trình trên PHP 5.4 và MySQL 5, Sử dụng PDO để kết nối với MySQL (Sẵn sàng kết nối với các CSDL khác) cho phép vận dụng tối đa sức mạnh của công nghệ mới.</li> 	<li>Sử dụng Composer để quản lý các thư viện PHP được cài vào hệ thống.</li> 	<li>Từng bước áp dụng các tiêu chuẩn viết code PHP theo khuyến nghị của http://www.php-fig.org/psr/</li> 	<li>Ứng dụng Xtemplate và jQuery cho phép vận dụng Ajax uyển chuyển từ trong nhân hệ thống.</li> 	<li>Giai diện trong NukeViet 4 được làm mới, tương thích với nhiều màn hình hơn, Sử dụng thư viện bootstrap để việc phát triển giao diện thống nhất và dễ dàng hơn.</li> 	<li>Tận dụng các thành tựu mã nguồn mở có sẵn nhưng NukeViet 4 vẫn đảm bảo rằng từng dòng code là được code tay. Điều này có nghĩa là NukeViet 4 hoàn toàn không lệ thuộc vào bất cứ framework nào trong quá trình phát triển của mình; Bạn hoàn toàn có thể đọc hiểu để tự lập trình trên NukeViet 4 nếu bạn biết PHP và MySQL (đồng nghĩa với việc NukeViet 4 hoàn toàn mở và dễ nghiên cứu cho bất cứ ai muốn tìm hiểu về code của NukeViet).<span id="cke_bm_178E" style="display: none;">&nbsp;</span></li> </ul>  <ul id="docs-internal-guid-7ec786f5-1ade-f016-4c9b-c9a8e36cc922"> </ul>  <p><span style="font-weight: bold;">Kiến trúc Module</span></p>  <ul> 	<li>NukeViet CMS 4 tái cấu trúc lại module, theo đó, toàn bộ tệp tin của mỗi module được gói gọn trong một thư mục riêng nhằm đơn giản trong việc quản lý và đóng gói ứng dụng. Kiến trúc module này tạo ra khái niệm block của module và theme của module giúp đa dạng hóa việc trình bày module.</li> 	<li>Hệ thống NukeViet 4 hỗ trợ công nghệ đa nhân module. Chúng tôi gọi đó là công nghệ ảo hóa module. Công nghệ này cho phép người sử dụng có thể khởi tạo hàng ngàn module một cách tự động mà không cần động đến một dòng code. Các module được sinh ra từ công nghệ này gọi là module ảo. Module ảo là module được nhân bản từ một module bất kỳ của hệ thống nukeviet nếu module đó cho phép tạo module ảo.</li> 	<li>NukeViet 4 cũng hỗ trợ việc cài đặt từ động 100% các module kèm theo block, theme từ Admin Control Panel, người sử dụng có thể cài module mà không cần làm bất cứ thao tác phức tạp nào. NukeViet 4 còn cho phép bạn đóng gói module để chia sẻ cho người khác.</li> 	<li>Hệ thống cho phép quản lý module từ trong Admin Control Panel, quản trị cấp cao có thể phân quyền truy cập cũng như tạm ngưng hoạt động hay thậm chí cài lại hoặc xóa module tùy theo nhu cầu sử dụng.</li> </ul>  <p><br  /> <span style="font-weight: bold;">Đa ngôn ngữ</span></p>  <ul> 	<li>NukeViet 4 đa ngôn ngữ 100% với 2 loại: đa ngôn ngữ giao diện và đa ngôn ngữ xử lý dữ liệu (database).</li> 	<li>NukeViet 4 có tính năng cho phép người quản trị tự xây dựng ngôn ngữ mới cho site. Cho phép đóng gói file ngôn ngữ để chia sẻ cho cộng đồng...</li> 	<li>NukeViet cũng có trung tâm dịch thuật riêng dành cho việc chung tay góp sức xây dựng những ngôn ngữ mới tại địa chỉ: <a href="http://translate.nukeviet.vn" target="_blank">http://translate.nukeviet.vn</a></li> 	<li>NukeViet 4 tách bạch ngôn ngữ quản trị và ngôn ngữ người dùng, ngôn ngữ giao diện và ngôn ngữ database giúp dễ dàng xây dựng và quản lý các hệ thống đa ngôn ngữ.</li> 	<li>NukeViet 4 còn có khả năng tự động nhận diện và chuyển ngôn ngữ phù hợp cho người sử dụng.</li> 	<li>NukeViet 4 còn có sẵn 3 ngôn ngữ mặc định là Việt, Anh và Pháp.</li> </ul>  <p><span style="font-weight: bold;">Phân quyền</span><strong> cấp độ hệ thống</strong><br  /> NukeViet 4 tách biệt 2 khu vực: Khu vực quản trị và Khu vực người dùng. Toàn bộ các tính năng quản lý nằm trong khu vực quản trị nhằm đảm bảo việc phân quyền được thực hiện chính xác và an toàn nhất.<br  /> <br  /> <span style="font-weight: bold;">Phân quyền Quản trị</span><br  /> NukeViet 4 phân quyền theo module và theo ngôn ngữ, do đó dễ dàng xác lập quyền quản trị cho các hệ thống lớn, nhiều người quản trị cùng làm việc.<br  /> <br  /> <span style="font-weight: bold;">Phân quyền thành viên</span><br  /> NukeViet 4 cho phép quản lý và phân nhóm người sử dụng thành các nhóm khác nhau để dễ dàng phân quyền người sử dụng theo từng module cụ thể.<br  /> <br  /> <strong>Phân quyền cấp độ module</strong><br  /> Ở cấp module, tùy chức năng module được thiết kế mà nó có thể được phân quyền theo các cơ chế khác nhau, việc này đặc biệt linh hoạt khi xây dựng các hệ thống lớn. Với module News tích hợp trong hệ thống được trang bị việc phân quyền tới từng chuyên mục.<br  /> <br  /> <span style="font-weight: bold;">Đa giao diện</span></p>  <ul> 	<li>Cài đặt: NukeViet 4 hỗ trợ cài đặt và gỡ bỏ giao diện hoàn toàn tự động. Hơn thế nữa, bạn có thể đóng gói giao diện để chia sẻ cho website khác một cách dễ dàng.</li> 	<li>NukeViet hỗ trợ giao diện theo ngôn ngữ, giao diện theo module, định nghĩa giao diện mobile (NukeViet 4) và giao diện PC tùy theo ý người quản trị.</li> 	<li>NukeViet hỗ trợ hệ thống đa giao diện cực kỳ uyển chuyển cho cả người sử dụng lẫn người lập trình. Với NukeViet 4, người sử dụng có thể tùy biến một cách dễ dàng: gán giao diện theo module, thiết lập bố cục giao diện cho từng tính năng của module.</li> 	<li>Với người thiết kế giao diện: có thể tùy ý thiết kế không giới hạn bố cục giao diện. Giao diện đã được tách bạch phần HTML và CSS khỏi PHP vì vậy người thiết kế tùy trình độ mà có thể can thiệp vào các lớp giao diện để chỉnh sửa hoặc thiết kế giao diện mới một cách dễ dàng.</li> </ul>  <p><strong>Hỗ trợ truy cập từ điện thoại, máy tính bảng.</strong><br  /> Từ bản NukeViet 4, NukeViet có thể tự động nhận diện thiết bị di động để chuyển giao diện và chế độ tương tác phù hợp. Ngoài ra NukeViet 4 còn có giao diện tùy biến, để có thể hiển thị tốt trên các màn hình khác nhau.<br  /> <br  /> <span style="font-weight: bold;">Tùy biến site bằng Block</span><br  /> NukeViet cho phép đa dạng hóa bố cục và chức năng cho website nhờ các khối (block) khác nhau trên website. Các khối này có thể là các ứng dụng, các khối quảng cáo hoặc dữ liệu bất kỳ nào được người sử dụng định nghĩa. Block của NukeViet 4 cũng phân theo 2 cấp: Block của hệ thống và block cho từng module.<br  /> Người sử dụng có thể tùy ý bố trí vị trí block ở các vị trí khác nhau: toàn bộ website, theo từng module và thậm chí là từng tính năng của module. Block có thể có các giao diện khác nhau theo theme. Có thể hẹn giờ bật/tắt cũng như phân quyền cho từng đối tượng người truy cập.<br  /> Việc bố trí block có thể thực hiện trong Admin Control Panel hoặc kéo thả trực quan ngay tại giao diện người dùng.<br  /> <br  /> <span style="font-weight: bold;">An ninh, bảo mật</span><br  /> NukeViet 4 được thiết kế để nhận biết và chống các truy cập bất hợp pháp vào hệ thống cũng như gửi các dữ liệu có hại lên hệ thống.</p>  <ul> 	<li>Sau khi các chuyên giả bảo mật của HP gửi đánh giá, chúng tôi đã tối ưu NukeViet 4.0 để hệ thống an toàn hơn.</li> 	<li>Mã hóa các mật khẩu lưu trữ trong hệ thống: Các mật khẩu như FTP, SMTP,... đã được mã hóa, bảo mật thông tin người dùng.<br  /> 	Tường lửa Admin bảo vệ khu vực bằng mật khẩu và IP.</li> 	<li>Bộ lọc IP cấm và bộ lọc file cấm giúp ngăn ngừa các nguy cơ biết trước.</li> 	<li>Dữ liệu gửi qua hệ thống được kiểm duyệt bằng bộ lọc an ninh kép nhằm ngăn chặn các dữ liệu có khả năng tấn công vào hệ thống.</li> 	<li>NukeViet có khả năng ngăn chặn, theo dõi và kiểm soát truy cập vào hệ thống của tất cả các máy chủ tìm kiếm như yahoo và google hay bất cứ máy chủ tìm kiếm nào khác.</li> 	<li>Hệ thống có khả năng chống Spam bằng Captcha, chống lụt dữ liệu bằng nhiều hình thức như giới hạn thời gian gửi dữ liệu (sử dụng các công thức kép)...</li> 	<li>Hệ thống cho phép theo dõi, ghi nhận các thông số của máy tính truy cập đến site như: Hệ điều hành, Trình duyệt, quốc gia, các liên kết đến site (referer) để từ đó có thể kịp thời ngăn ngừa các nguy cơ tấn công bằng các hình thức như: kiểm tra và chặn các máy tình dùng proxy, chặn IP truy cập...</li> 	<li>hật ký hệ thống sẽ ghi nhận truy cập và thao tác tới cơ sở dữ liệu &amp; tệp tin, giúp người quản trị cũng như các thành viên dễ dàng phát hiện ra những đăng nhập bất hợp pháp từ lần đăng nhập trước đó.</li> 	<li>Hệ thống có thể phát hiện các bản nâng cấp mới của phần mềm để nhắc nhở người sử dụng nâng cấp và sửa chữa các lỗi (nếu có)</li> </ul>  <p><span style="font-weight: bold;">Quản lý CSDL</span></p>  <ul> 	<li>NukeViet 4 cho phép quản lý CSDL, người sử dụng có thể tối ưu, sao lưu trên máy chủ và tải dữ liệu về để phục vụ cho công tác phục hồi nếu xảy ra sự cố.</li> 	<li>Hỗ trợ mô hình CSDL theo mô hình master/slave để phân tải CSDL.</li> </ul>  <p><span style="font-weight: bold;">Kiểm soát lỗi tự động và báo lỗi thông minh</span></p>  <ul> 	<li>NukeViet 4 có hệ thống kiểm soát lỗi tự động và báo lỗi cho người dùng.</li> 	<li>Các lỗi (nếu có) sẽ được hệ thống kiểm soát có chủ đích, nó chỉ hiển thị lên màn hình người sử dụng ở lần đầu nó xuất hiện, sau đó hệ thống ghi nhận và báo về cho người quản trị qua email.</li> 	<li>Quản trị có thể cấu hình việc bật tắt việc có ghi nhận lỗi hay không.</li> </ul>  <p><span style="font-weight: bold;">Tối ưu hóa cho công cụ tìm kiếm (SEO)</span></p>  <ul> 	<li>Loại bỏ tên module khỏi URL khi không dùng đa ngôn ngữ.</li> 	<li>Cho phép đổi đường dẫn module</li> 	<li>Thêm chức năng xác thực Google+ (Bản quyền tác giả)</li> 	<li>Thêm chức năng ping đến các công cụ tìm kiếm: Submit url mới đến google để việc hiển thị bài viết mới lên kết quả tìm kiếm nhanh chóng hơn.</li> 	<li>Hỗ trợ Meta OG của facebook</li> 	<li>Hỗ trợ chèn Meta GEO qua Cấu hình Meta-Tags<br  /> 	Hỗ trợ SEO link.</li> 	<li>Quản lý và tùy biến tiêu đề site, description</li> 	<li>Hỗ trợ quản lý các thẻ meta như: keywords, description</li> 	<li>Hỗ trợ sử dụng keywords để phát sinh trang thống kê một cách tự động nhờ công cụ tìm kiếm.</li> 	<li>Hỗ trợ quản lý máy chủ tìm kiếm.</li> 	<li>Hỗ trợ quản lý cấu hình robots.txt</li> 	<li>Hỗ trợ chuẩn đoán site (site Diagnostic).</li> </ul>  <p><span style="font-weight: bold;">Sẵn sàng cho việc tích hợp các ứng dụng của bên thứ 3</span><br  /> NukeViet 3.4 sử dụng Cơ sở dữ liệu thành viên độc lập và xây dựng sẵn các phương thức kết nối với các ứng dụng Forum. Cơ sở dữ liệu thành viên độc lập giúp việc quản lý thành viên được chủ động, khi có nhu cầu kết nối hoặc trao quyền quản lý cho các ứng dụng từ bên thứ 3, NukeViet 3.4 vẫn hoàn toàn chủ động với dữ liệu thành viên của mình. Với NukeViet 3.4, các kết nối trực tiếp dành cho Forum như PHPBB hay VBB đều sẵn sàng.<br  /> <br  /> <span style="font-weight: bold;">Hỗ trợ Đăng nhập phân tán</span><br  /> NukeViet hỗ trợ thư viện OAuth , cho phép người truy cập có thể đăng nhập phân tán từ các hệ thống như FaceBook và Google hay các hệ thống OpenID khác giúp các website mới xây dựng có cơ hội thu hút lượng người sử dụng khổng lồ từ các hệ thống lớn.<br  /> Trong mọi trường hợp, hệ thống cho phép admin kiểm duyệt việc login OAuth. Tùy nhu cầu sử dụng mà có thể thiết đặt mức độ login cao nhất (tự động) tới mức độ vẫn phải đăng ký thành viên (bớt bước kích hoạt qua email). Người sử dụng cũng có thể quản lý nhiều tài khoản OAuth để từ đó có thể đăng nhập bằng tài khoản bất kỳ (nếu hệ thống cho phép).</p>  <p><strong>Trình soạn thảo tích hợp sẵn:</strong></p>  <p>Tại những vị trí phù hợp, NukeViet tích hợp sẵn trình soạn thảo CKeditor giúp người sử dụng dễ dàng biên tập nội dung trên giao diện trực quan và thân thiện như làm việc với phần mềm Microsoft Word hay OpenOffice. Hiện tại NukeViet 4 cũng đã mở sẵn để tích hợp các trình soạn thảo khác.</p>  <p><span style="font-weight: bold;">Các tiện ích khác</span><br  /> Hệ thống cho phép gửi mail bằng các phương thức: SMTP, Linux Mail, PHPmail.<br  /> Cho phép sử dụng phương thức FTP để ghi file nếu máy chủ không cho phép làm điều đó bằng PHP<br  /> Cho phép xây dựng và quản lý các tác vụ xử lý tự động như tự động sao lưu CSDL, tự động xóa các dữ liệu cũ hoặc gửi báo lỗi tới người quản trị...<br  /> Cung cấp đầy đủ các thông tin về hệ thống giúp nhà phát triển dễ dàng sử dụng các thông tin này phục vụ cho việc lập trình, kiểm tra và báo lỗi hệ thống.<br  /> <br  /> <span style="font-size: 150%; line-height: 116%;"><span style="font-weight: bold;">Các module tích hợp sẵn trong NukeViet CMS 4:</span></span><br  /> <span style="font-weight: bold;">Quản lý Upload</span></p>  <ul> 	<li>Upload file từ máy tính hoặc một địa chỉ bất kỳ trên mạng.</li> 	<li>Quản lý: Di chuyển, đổi tên, sửa, xóa, tạo hình thu nhỏ...</li> 	<li>Hỗ trợ tìm kiểm các file và mô tả các file được upload lên trong khu vực quản trị.</li> </ul>  <p><span style="font-weight: bold;">Quản trị và xuất bản Tin tức:</span> (cho phép tạo module ảo)<br  /> Hệ thống tin tức của NukeViet là hệ thống quản trị tin tức chuyên nghiệp đặc biệt phù hợp với các website tin tức. Nó cho phép xử lý nhiều tác vụ nền thông minh mà không cần người sử dụng can thiệp nhằm tối ưu cho hệ thống tin tức, Ví dụ: tạo hình thu nhỏ, tự động chia thư mục và sắp xếp hình vào các thư mục theo thời gian...</p>  <ul> 	<li>Quản lý chủ đề đa cấp trong đó bản tin có thể nằm ở 1 hoặc nhiều chủ đề không phụ thuộc quan hệ cha con giữa các chủ đề.</li> 	<li>Phân quyền cho người quản lý module, đến từng chủ đề</li> 	<li>Quản lý nhóm tin liên quan (phân luồn tin theo dòng đơn)</li> 	<li>Quản lý block tin (nhóm tin đa luồng)</li> 	<li>Quản lý Tags</li> 	<li>Quản lý nguồn tin</li> 	<li>Tùy chỉnh bố cục trang tin.</li> 	<li>Gửi bài viết, hẹn giờ đăng và nhiều tùy chỉnh khác: cho phép gửi bản tin, in, lưu bản tin.</li> 	<li>Cấp tin RSS</li> 	<li>Công cụ tương tác với mạng xã&nbsp; hội.</li> </ul>  <p><span style="font-weight: bold;">Module Page:</span></p>  <ul> 	<li>Module này thích hợp làm các bài viết không cần quản lý chủ đề, như các module ảo: giới thiệu, nội quy site ...</li> 	<li>Hỗ trợ SEO: Ảnh minh họa, chú thích ảnh minh họa, mô tả, từ khóa cho bài viết, hiển thị các công cụ tương tác với các mạng xã hội.</li> 	<li>Hỗ trợ RSS</li> 	<li>Cấu hình phương án hiển thị các bài viết trên trang chính.</li> </ul>  <p><span style="font-weight: bold;">Quản lý thành viên:</span></p>  <ul> 	<li>Quản lý việc đăng nhập, đăng ký.</li> 	<li>Quản lý phương thức đăng nhập: Qua openid hoặc đăng nhập trực tiếp.</li> 	<li>Quản lý câu hỏi bảo mật.</li> 	<li>Quản lý nội quy.</li> 	<li>Quản lý thông tin thành viên.</li> 	<li>Cho phép đăng nhập 1 lần tài khoản người dùng NukeViet với Alfresco, Zimbra, Moodle, Koha thông qua CAS.</li> 	<li>Chức năng tùy biến trường dữ liệu thành viên</li> 	<li>Chức năng phân quyền sử dụng module users</li> 	<li>Cấu hình Số ký tự username, độ phức tạp mật khẩu, tạo mật khảu ngẫu nhiên,....</li> 	<li>Cho phép sử dụng tên truy cập, hoặc email để đăng nhập</li> </ul>  <p><span style="font-weight: bold;">Quản lý liên hệ gửi đến website</span></p>  <ul> 	<li>Quản lý thông tin liên hệ trên site.</li> 	<li>Quản lý các bộ phận tiếp nhận liên hệ.</li> 	<li>Quản lý và trả lời các thư gửi tới. Admin có thể trả lời khách nhiều lần, hệ thống lưu lại lịch sử trao đổi đó.</li> 	<li>Hệ thống nhận thông báo: đây là một tiện ích nhỏ, song nó rất hữu dụng để admin tương tác với hệ thống một cách nhanh chóng. Admin có thể nhận thông báo từ hệ thống (hoặc từ module) khi có sự kiện nào đó. Ví dụ: Khi có khách gửi liên hệ (qua module contact) đến thì hệ thống xuất hiện biểu tượng thông báo “Có liên hệ mới” ở góc phải, Admin sẽ nhận được ngay lập tức thông báo khi người dùng đang ở Admin control panel (ACP).</li> </ul>  <p><span style="font-weight: bold;">Quản lý thăm dò ý kiến:</span></p>  <ul> 	<li>Tạo các thăm dò ý kiến</li> </ul>  <p><span style="font-weight: bold;">Quản lý quảng cáo chuyên nghiệp:</span></p>  <ul> 	<li>Quản lý khách hàng.</li> 	<li>Quản lý các khu vực quảng cáo</li> 	<li>Quản lý các nội dung quảng cáo.</li> 	<li>Kết hợp với việc quản lý block. Các quản cáo có thể đặt vào các khu vực khác nhau, dễ dàng thay đổi theo nhu cầu của người dùng.</li> </ul>  <p><span style="font-weight: bold;">Thống kê:</span> Thống kê theo năm, tháng, ngày, tuần, giờ.</p>  <ul> 	<li>Theo liên kết đến site</li> 	<li>Theo quốc gia</li> 	<li>Theo trình duyệt</li> 	<li>Theo hệ điều hành</li> 	<li>Máy chủ tìm kiếm</li> </ul>  <p><span style="font-weight: bold;">Tìm kiếm</span></p>  <ul> 	<li>Tìm kiếm chung toàn hệ thống</li> 	<li>Tìm kiếm nâng cao từng khu vực</li> </ul>  <div><strong>Module menu:</strong></div>  <ul> 	<li>Module này cung cấp để quản lý các menu tùy biên, có thể lấy liên kết từ nhiều mục khác nhau.</li> 	<li>Phương án quản lý menu được thay đổi hướng tới việc quản lý menu nhanh chóng, tiện lợi nhất cho admin.</li> 	<li>Admin có thể nạp nhanh menu theo các tùy chọn mà hệ thống cung cấp.</li> 	<li>Mẫu menu cũng được thay đổi, đa dạng và hiển thị tốt với các giao diện hiện đại.</li> </ul>  <p><strong>Quản lý Bình luận</strong></p>  <ul> 	<li>Các bình luận của các module sẽ được tích hợp quản lý tập trung để cấu hình, phân quyền.</li> 	<li>Khi xây dựng mới module, Chỉ cần nhúng 1 đoạn mã vào. Tránh phải việc copy mã code gây khó khăn cho bảo trì.</li> </ul>  <p><br  /> Trên đây là các tính năng chính của bộ nhân hệ thống NukeViet 4, để xem đầy đủ hơn các tính năng <strong><a href="http://wiki.nukeviet.vn/nukeviet4:feature">click vào đây</a></strong>. Với NukeViet, việc mở rộng thêm các tính năng là không hạn chế, đơn giản là cài thêm các module tương ứng hoặc xây dựng thêm các module đó cho NukeViet.</p>', '', 0, '4', '', 5, 1, 1629627264, 1629627264, 1, 0, 0),
(6, 'Yêu cầu sử dụng NukeViet 4', 'Yeu-cau-su-dung-NukeViet-4', '', '', 0, '', '<h2 class="sectionedit2" id="moi_truong_may_chủ">1. Môi trường máy chủ</h2>  <div class="level2"> <p><strong>Yêu cầu bắt buộc</strong></p>  <ul> 	<li class="level1"> 	<div class="li">Hệ điều hành: Unix (Linux, Ubuntu, Fedora …) hoặc Windows</div> 	</li> 	<li class="level1"> 	<div class="li">PHP: PHP 5.4 hoặc phiên bản mới nhất.</div> 	</li> 	<li class="level1"> 	<div class="li">MySQL: MySQL 5.5 hoặc phiên bản mới nhất</div> 	</li> </ul>  <p><strong>Tùy chọn bổ sung</strong></p>  <ul> 	<li class="level1"> 	<div class="li">Máy chủ Apache cần hỗ trợ mod mod_rewrite.</div> 	</li> 	<li class="level1"> 	<div class="li">Máy chủ Nginx cấu hình các thông số rewite.</div> 	</li> 	<li class="level1"> 	<div class="li">Máy chủ IIS 7.0 hoặc IIS 7.5 cần cài thêm module rewrite</div> 	</li> 	<li class="level1"> 	<div class="li">Môi trường PHP mở rộng: Các thư viện PHP cần có: file_uploads, session, mbstring, curl, gd2, zlib, soap, php_zip.</div> 	</li> </ul>  <p><em class="u"><strong>Ghi chú:</strong></em></p>  <ul> 	<li class="level1"> 	<div class="li">Những yêu cầu trên không có nghĩa là NukeViet 4 không làm việc trên các hệ thống khác, điều quan trọng là cần thiết lập môi trường làm việc phù hợp.</div> 	</li> 	<li class="level1"> 	<div class="li">Với những website sử dụng hosting, NukeViet 4 làm việc tốt nhất trên các hosting Linux cài sẵn Apache 2.2, PHP 5, MySQL 5, DirectAdmin hoặc Cpanel.</div> 	</li> 	<li class="level1"> 	<div class="li">Với các website cần chịu tải cao, nên sử dụng Nginx, PHP7 (php-fpm). Tham khảo thêm mô hình <a class="urlextern" href="http://wiki.nukeviet.vn/web_server:cai-dat-server-chi-tai-cao" rel="nofollow" target="_blank" title="http://wiki.nukeviet.vn/web_server:cai-dat-server-chi-tai-cao">http://wiki.nukeviet.vn/web_server:cai-dat-server-chi-tai-cao</a></div> 	</li> </ul> </div>  <div class="secedit editbutton_section editbutton_2">  <div class="no">&nbsp;</div>  </div>  <h2 class="sectionedit3" id="may_tinh_nguời_truy_cập">2. Máy tính người truy cập</h2>  <div class="level2"> <p>NukeViet 4 cho kết quả là chuẩn HTML5 và CSS 3, đây là định dạng chuẩn mà hầu hết các trình duyệt hiện nay đang hỗ trợ. Chính vì vậy các website làm trên nền NukeViet 4 có thể truy cập tốt trên các phiên bản mới nhất của trình duyệt FireFox, Internet Explorer 9, Google Chrome … Máy tính người truy cập chỉ cần cài một trong các trình duyệt này là có thể tương tác với NukeViet thông qua internet hoặc intranet.</p> </div>', '', 0, '4', '', 6, 1, 1629627264, 1629627264, 1, 0, 0),
(7, 'Giới thiệu về Công ty cổ phần phát triển nguồn mở Việt Nam', 'gioi-thieu-ve-cong-ty-co-phan-phat-trien-nguon-mo-viet-nam', '', '', 0, '', '<p><strong>Công ty cổ phần phát triển nguồn mở Việt Nam</strong> (VINADES.,JSC) là công ty mã nguồn mở đầu tiên của Việt Nam sở hữu riêng một mã nguồn mở nổi tiếng và đang được sử dụng ở hàng ngàn website lớn nhỏ trong mọi lĩnh vực. Wbsite đang hoạt động chính thức: <a href="http://vinades.vn/">http://vinades.vn/</a><br  /> <br  /> Ra đời từ hoạt động của tổ chức nguồn mở NukeViet (từ năm 2004) và chính thức được thành lập đầu 2010 tại Hà Nội, khi đó báo chí đã gọi VINADES.,JSC là <em><strong>&quot;Công ty mã nguồn mở đầu tiên tại Việt Nam&quot;</strong></em>.<br  /> <br  /> Ngay sau khi thành lập, VINADES.,JSC đã thành công trong việc xây dựng <strong><a href="http://nukeviet.vn/" target="_blank">NukeViet</a></strong> thành một <a href="http://nukeviet.vn/" target="_blank">mã nguồn mở</a> thuần Việt. Với khả năng mạnh mẽ, cùng các ưu điểm vượt trội về công nghệ, độ an toàn và bảo mật, NukeViet đã được hàng ngàn website lựa chọn sử dụng trong năm qua. Ngay khi ra mắt phiên bản mới năm 2010, NukeViet đã tạo nên hiệu ứng truyền thông chưa từng có trong lịch sử mã nguồn mở Việt Nam. Tiếp đó, năm 2011 Mã nguồn mở NukeViet đã giành giải thưởng Nhân tài đất Việt cho sản phẩm Công nghệ thông tin đã được ứng dụng rộng rãi.</p>  <div style="text-align: center;"> <div class="youtube-embed-wrapper" style="position:relative;padding-bottom:56.25%;padding-top:30px;height:0;overflow:hidden;"><iframe allowfullscreen="" height="480" src="//www.youtube.com/embed/ZOhu2bLE-eA?rel=0&amp;autoplay=1" style="position: absolute;top: 0;left: 0;width: 100%;height: 100%;" width="640"></iframe></div> <br  /> <span style="font-size:12px;"><strong>Video clip trao giải Nhân tài đất Việt 2011.</strong><br  /> Sản phẩm &quot;Mã nguồn mở NukeViet&quot; đã nhận giải cao nhất (Giải ba, không có giải nhất, giải nhì) của Giải thưởng Nhân Tài Đất Việt 2011 ở lĩnh vực Công nghệ thông tin - Sản phẩm đã có ứng dụng rộng rãi.</span></div>  <p><br  /> Tự chuyên nghiệp hóa mình, thoát khỏi mô hình phát triển tự phát, công ty đã nỗ lực vươn mình ra thế giới và đang phấn đấu trở thành một trong những hiện tượng của thời &quot;dotcom&quot; ở Việt Nam.<br  /> <br  /> Để phục vụ hoạt động của công ty, công ty liên tục mở rộng và tuyển thêm nhân sự ở các vị trí: Lập trình viên, chuyên viên đồ họa, nhân viên kinh doanh... Hãy liên hệ ngay để gia nhập VINADES.,JSC và cùng chúng tôi trở thành một công ty phát triển nguồn mở thành công nhất Việt Nam.</p>  <p>Nếu bạn có nhu cầu triển khai các hệ thống <strong><a href="http://toasoandientu.vn" target="_blank">Tòa Soạn Điện Tử</a></strong>, <strong><a href="http://webnhanh.vn" target="_blank">phần mềm trực tuyến</a></strong>, <strong><a href="http://vinades.vn" target="_blank">thiết kế website</a></strong> theo yêu cầu hoặc dịch vụ có liên quan, hãy liên hệ công ty chuyên quản NukeViet theo thông tin dưới đây:</p>  <p><strong><span style="font-family: Tahoma; color: rgb(255, 69, 0); font-size: 14px;">CÔNG TY CỔ PHẦN PHÁT TRIỂN NGUỒN MỞ VIỆT NAM</span></strong><br  /> <strong>VIET NAM OPEN SOURCE DEVELOPMENT JOINT STOCK COMPANY</strong> (<strong>VINADES.,JSC</strong>)<br  /> Website: <a href="http://vinades.vn/">http://vinades.vn</a> | <a href="http://nukeviet.vn/">http://nukeviet.vn</a> | <a href="http://webnhanh.vn/">http://webnhanh.vn</a><br  /> Trụ sở: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.<br  /> - Tel: +84-4-85872007<br  /> - Fax: +84-4-35500914<br  /> - Email: <a href="mailto:contact@vinades.vn">contact@vinades.vn</a></p>', 'giới thiệu,công ty,cổ phần,phát triển', 0, '4', '', 7, 1, 1629627264, 1629627264, 1, 0, 0),
(8, 'Ủng hộ, hỗ trợ và tham gia phát triển NukeViet', 'ung-ho-ho-tro-va-tham-gia-phat-trien-nukeviet', '', '', 0, 'Nếu bạn yêu thích NukeViet, bạn có thể ủng hộ và hỗ trợ NukeViet bằng nhiều cách', '<h2>1. Ủng hộ bằng tiền mặt vào Quỹ tài trợ NukeViet</h2>\r\nQua tài khoản Paypal:\r\n\r\n<p style="text-align:center"><a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&amp;hosted_button_id=5LUSNE2SV5RR2" target="_blank"><img alt="" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" /></a></p>\r\nChuyển khoản ngân hàng trực tiếp:\r\n\r\n<ul>\r\n	<li>Người đứng tên tài khoản:&nbsp;NGUYEN THE HUNG</li>\r\n	<li>Số tài khoản:&nbsp;0031000792053</li>\r\n	<li>Loại tài khoản: VND (Việt Nam Đồng)</li>\r\n	<li>Ngân hàng Vietcombank chi nhánh Hải Phòng.</li>\r\n	<li>Website:&nbsp;<a href="http://www.vietcombank.com.vn/">http://www.vietcombank.com.vn</a></li>\r\n</ul>\r\n\r\n<div class="alert alert-info">Lưu ý: Đây là tài khoản hợp lệ duy nhất mà NukeViet.VN sử dụng cho&nbsp;Quỹ tài trợ NukeViet.</div>\r\nThảo luận tại đây:&nbsp;<a href="http://forum.nukeviet.vn/viewtopic.php?f=3&amp;t=3592" target="_blank">http://forum.nukeviet.vn/viewtopic.php?f=3&amp;t=3592</a>\r\n\r\n<h2>2. Ủng hộ bằng cách sử dụng và phổ biến NukeViet đến nhiều người hơn</h2>\r\nCách đơn giản nhất để ủng hộ NukeViet phát triển là sử dụng NukeViet và giúp NukeViet phổ biến đến nhiều người hơn (ví dụ như giữ lại dòng chữ &quot;Powered by&nbsp;<a href="http://nukeviet.vn/" target="_blank">NukeViet</a>&quot; hoặc &quot;Sử dụng&nbsp;<a href="http://nukeviet.vn/" target="_blank">NukeViet</a>&quot; trên website của bạn, viết bài giới thiệu NukeViet đến mọi người).<br />\r\nNếu bạn có thời gian, bạn có thể tham gia&nbsp;<a href="http://forum.nukeviet.vn/" target="_blank">diễn đàn NukeViet</a>&nbsp;thường xuyên và giúp đỡ những người mới sử dụng NukeViet.\r\n\r\n<h2>3. Ủng hộ bằng cách tham gia phát triển NukeViet</h2>\r\n\r\n<h3>3.1. Phát triển module, giao diện cho NukeViet</h3>\r\nNếu bạn biết code, hãy tham gia viết module, block, theme cho NukeViet và đưa lên&nbsp;<a href="http://nukeviet.vn/vi/store/" target="_blank">NukeViet Store</a>&nbsp;để cung cấp cho cộng đồng. Bạn cũng có thể tham gia đội ngũ phát triển NukeViet.\r\n\r\n<h3>3.2. Tham gia phát triển nhân hệ thống</h3>\r\nToàn bộ code nhân hệ thống NukeViet đã được đưa lên GitHub.com (truy cập tắt:&nbsp;<a href="http://code.nukeviet.vn/" target="_blank">http://code.nukeviet.vn</a>), dù bạn là ai, cá nhân hay doanh nghiệp chỉ cần có một tài khoản tại GitHub và học cách sử dụng&nbsp;<a href="#git">git&nbsp;(1)</a>&nbsp;là bạn có thể tham gia phát triển code NukeViet. Tìm hiểu thêm về việc tham gia phát triển code nhân hệ thống NukeViet tại đây:&nbsp;<a href="http://wiki.nukeviet.vn/programming:github_rule" target="_blank">http://wiki.nukeviet.vn/programming:github_rule</a>\r\n\r\n<h3>3.3. Tham gia dịch thuật</h3>\r\nNếu bạn biết ngoại ngữ, hãy đăng ký tham gia đội ngũ dịch thuật tình nguyện tại&nbsp;<a href="http://translate.nukeviet.vn/" target="_blank">NukeViet Stranslate System</a>&nbsp;để dịch thuật NukeViet sang các ngôn ngữ khác, quảng bá NukeViet ra với thế giới.\r\n\r\n<h3>3.4. Tham gia viết tài liệu hướng dẫn sử dụng</h3>\r\nNếu bạn không biết code, không biết ngoại ngữ, bạn vẫn có thể tham gia đóng góp cho NukeViet bằng cách biên soạn tài liệu hướng dẫn người dùng NukeViet tại thư viện tài liệu mở của NukeViet ở địa chỉ&nbsp;<a href="http://wiki.nukeviet.vn/" target="_blank">http://wiki.nukeviet.vn</a>\r\n\r\n<hr  /> <a id="git" name="git">(1)</a>: Tìm hiểu về git:&nbsp;<a href="http://wiki.nukeviet.vn/programming:vcs:git" target="_blank">http://wiki.nukeviet.vn/programming:vcs:git</a>', 'ủng hộ,hỗ trợ,tham gia,phát triển', 0, '4', '', 8, 1, 1629627264, 1629627264, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_about_config`
--

CREATE TABLE IF NOT EXISTS `tms_vi_about_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_about_config`
--

INSERT INTO `tms_vi_about_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1'),
('socialbutton', 'facebook,twitter');

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_audio_blocks`
--

CREATE TABLE IF NOT EXISTS `tms_vi_audio_blocks` (
  `bid` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_audio_blocks`
--

INSERT INTO `tms_vi_audio_blocks` (`bid`, `title`, `description`) VALUES
(1, 'Nhạc trường họck', '');

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_audio_rows`
--

CREATE TABLE IF NOT EXISTS `tms_vi_audio_rows` (
  `id` mediumint(8) unsigned NOT NULL,
  `bid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0: In-Active, 1: Active, 2: Expired'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_audio_rows`
--

INSERT INTO `tms_vi_audio_rows` (`id`, `bid`, `title`, `description`, `link`, `target`, `image`, `start_time`, `end_time`, `weight`, `status`) VALUES
(1, 1, 'Xe đạp - Thùy Chi', '', '', '', 'xe-dap-thuy-chi-m4u.mp3', 1606547689, 0, 2, 1),
(2, 1, 'Xe đạp ơi - Phương Thảo', '', '', '', 'xe-dap-oi-phuong-thao.mp3', 1606547751, 0, 3, 1),
(3, 1, 'Tạm Biệt Nhé - Lynk Lee', '', '', '', 'tam-biet-nhe-lynk-lee-phuc-bang.mp3', 1606547807, 0, 1, 1),
(4, 1, 'Ngày ấy bạn và tôi', '', '', '', 'ngay-ay-ban-va-toi-lynk-lee.mp3', 1606547862, 0, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_blocks_groups`
--

CREATE TABLE IF NOT EXISTS `tms_vi_blocks_groups` (
  `bid` mediumint(8) unsigned NOT NULL,
  `theme` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_time` int(11) DEFAULT '0',
  `active` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_blocks_groups`
--

INSERT INTO `tms_vi_blocks_groups` (`bid`, `theme`, `module`, `file_name`, `title`, `link`, `template`, `position`, `exp_time`, `active`, `act`, `groups_view`, `all_func`, `weight`, `config`) VALUES
(1, 'default', 'news', 'module.block_headline.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:3:{s:11:"showtooltip";i:1;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:1:"0";}'),
(31, 'default', 'menu', 'global.left.php', 'Danh mục', '', 'danhmuc', '[LEFT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:"menuid";i:2;s:12:"title_length";i:0;}'),
(6, 'default', 'statistics', 'global.counter.php', 'Thống kê', '', '', '[LEFT]', 0, '1', 1, '6', 1, 4, ''),
(9, 'default', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', '', '', '[LEFT]', 0, '1', 1, '6', 1, 3, ''),
(10, 'default', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 1, 'a:6:{s:10:"number_day";i:3650;s:6:"numrow";i:10;s:11:"showtooltip";i:1;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";s:7:"nocatid";a:2:{i:0;i:10;i:1;i:11;}}'),
(13, 'default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, 'a:3:{s:5:"level";s:1:"M";s:15:"pixel_per_point";i:4;s:11:"outer_frame";i:1;}'),
(14, 'default', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''),
(15, 'default', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(16, 'default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:13:{s:12:"company_name";s:33:"CÔNG TY CỎ PHẦN TMS HOLDINGS";s:16:"company_sortname";s:12:"TMS Holdings";s:15:"company_regcode";s:10:"0316364596";s:16:"company_regplace";s:17:"TP.Hồ Chí Minh";s:21:"company_licensenumber";s:0:"";s:22:"company_responsibility";s:0:"";s:15:"company_address";s:99:"Số 17 Đường Số 7, KDC Cityland Park Hill, Phường 10, Quận Gò Vấp, TP.Hồ Chí Minh";s:15:"company_showmap";i:1;s:14:"company_mapurl";s:326:"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2634.116366996857!2d105.79399620326203!3d20.9844946314258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac93055e2f2f%3A0x91f4b423089193dd!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gUGjDoXQgdHJp4buDbiBOZ3Xhu5NuIG3hu58gVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1558315703646!5m2!1svi!2s";s:13:"company_phone";s:75:"+84-282 2030 777&#91;+842822030777&#93;|+84-904999955&#91;+84904999955&#93;";s:11:"company_fax";s:0:"";s:13:"company_email";s:22:"contact@thuongmaiso.vn";s:15:"company_website";s:22:"https://thuongmaiso.vn";}'),
(17, 'default', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:"menuid";i:1;s:12:"title_length";i:0;}'),
(19, 'default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:3:{s:8:"facebook";s:32:"http://www.facebook.com/nukeviet";s:7:"youtube";s:37:"https://www.youtube.com/user/nukeviet";s:7:"twitter";s:28:"https://twitter.com/nukeviet";}'),
(20, 'default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:"module_in_menu";a:8:{i:0;s:5:"about";i:1;s:4:"news";i:2;s:5:"users";i:3;s:7:"contact";i:4;s:6:"voting";i:5;s:7:"banners";i:6;s:4:"seek";i:7;s:5:"feeds";}}'),
(22, 'mobile_default', 'menu', 'global.metismenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:"menuid";i:1;s:12:"title_length";i:0;}'),
(23, 'mobile_default', 'users', 'global.user_button.php', 'Sign In', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 2, ''),
(24, 'mobile_default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, ''),
(25, 'mobile_default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 2, ''),
(26, 'mobile_default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 3, 'a:3:{s:8:"facebook";s:32:"http://www.facebook.com/nukeviet";s:7:"youtube";s:37:"https://www.youtube.com/user/nukeviet";s:7:"twitter";s:28:"https://twitter.com/nukeviet";}'),
(27, 'mobile_default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 4, 'a:3:{s:5:"level";s:1:"L";s:15:"pixel_per_point";i:4;s:11:"outer_frame";i:1;}'),
(28, 'mobile_default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:"copyright_by";s:0:"";s:13:"copyright_url";s:0:"";s:9:"design_by";s:12:"VINADES.,JSC";s:10:"design_url";s:18:"http://vinades.vn/";s:13:"siteterms_url";s:39:"/index.php?language=vi&amp;nv=siteterms";}'),
(29, 'mobile_default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'primary', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:"module_in_menu";a:9:{i:0;s:5:"about";i:1;s:4:"news";i:2;s:5:"users";i:3;s:7:"contact";i:4;s:6:"voting";i:5;s:7:"banners";i:6;s:4:"seek";i:7;s:5:"feeds";i:8;s:9:"siteterms";}}'),
(30, 'mobile_default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'primary', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:13:{s:12:"company_name";s:58:"Công ty cổ phần phát triển nguồn mở Việt Nam";s:15:"company_address";s:72:"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội";s:16:"company_sortname";s:12:"VINADES.,JSC";s:15:"company_regcode";s:0:"";s:16:"company_regplace";s:0:"";s:21:"company_licensenumber";s:0:"";s:22:"company_responsibility";s:0:"";s:15:"company_showmap";i:1;s:14:"company_mapurl";s:326:"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2634.116366996857!2d105.79399620326203!3d20.9844946314258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac93055e2f2f%3A0x91f4b423089193dd!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gUGjDoXQgdHJp4buDbiBOZ3Xhu5NuIG3hu58gVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1558315703646!5m2!1svi!2s";s:13:"company_phone";s:58:"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]";s:11:"company_fax";s:15:"+84-24-35500914";s:13:"company_email";s:18:"contact@vinades.vn";s:15:"company_website";s:17:"http://vinades.vn";}'),
(32, 'default', 'audio', 'global.audio.php', 'Audio', '', 'border', '[LEFT]', 0, '1', 1, '6', 1, 2, 'a:2:{s:7:"blockid";i:1;s:7:"numrows";i:9;}'),
(33, 'default', 'laws', 'module.block_search.php', 'Tìm kiếm', '', '', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:2:{s:5:"style";s:6:"center";s:14:"search_advance";i:1;}'),
(34, 'default', 'organs', 'global.search.php', 'Tìm kiếm', '', '', '[TOP]', 0, '1', 1, '6', 0, 3, 'a:1:{s:14:"display_layout";s:1:"h";}');

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_blocks_weight`
--

CREATE TABLE IF NOT EXISTS `tms_vi_blocks_weight` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `func_id` mediumint(8) NOT NULL DEFAULT '0',
  `weight` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_blocks_weight`
--

INSERT INTO `tms_vi_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(1, 4, 1),
(6, 1, 4),
(6, 4, 4),
(6, 5, 4),
(6, 6, 4),
(6, 7, 4),
(6, 8, 4),
(6, 9, 4),
(6, 10, 4),
(6, 11, 4),
(6, 12, 4),
(6, 13, 4),
(6, 20, 4),
(6, 21, 4),
(6, 22, 4),
(6, 23, 4),
(6, 24, 4),
(6, 25, 4),
(6, 26, 4),
(6, 27, 4),
(6, 28, 4),
(6, 29, 4),
(6, 30, 4),
(6, 32, 4),
(6, 33, 4),
(6, 34, 4),
(6, 35, 4),
(6, 36, 4),
(6, 37, 4),
(6, 38, 4),
(6, 39, 4),
(6, 40, 4),
(6, 50, 4),
(6, 51, 4),
(6, 52, 4),
(6, 55, 4),
(6, 56, 4),
(6, 57, 4),
(6, 58, 4),
(6, 59, 4),
(6, 60, 4),
(6, 61, 4),
(6, 63, 4),
(6, 64, 4),
(6, 65, 4),
(9, 1, 3),
(9, 4, 3),
(9, 5, 3),
(9, 6, 3),
(9, 7, 3),
(9, 8, 3),
(9, 9, 3),
(9, 10, 3),
(9, 11, 3),
(9, 12, 3),
(9, 13, 3),
(9, 20, 3),
(9, 21, 3),
(9, 22, 3),
(9, 23, 3),
(9, 24, 3),
(9, 25, 3),
(9, 26, 3),
(9, 27, 3),
(9, 28, 3),
(9, 29, 3),
(9, 30, 3),
(9, 32, 3),
(9, 33, 3),
(9, 34, 3),
(9, 35, 3),
(9, 36, 3),
(9, 37, 3),
(9, 38, 3),
(9, 39, 3),
(9, 40, 3),
(9, 44, 3),
(9, 43, 3),
(9, 42, 3),
(9, 41, 3),
(6, 44, 4),
(9, 50, 3),
(9, 51, 3),
(9, 52, 3),
(6, 43, 4),
(6, 42, 4),
(9, 55, 3),
(9, 56, 3),
(9, 57, 3),
(9, 58, 3),
(9, 59, 3),
(9, 60, 3),
(9, 61, 3),
(6, 41, 4),
(9, 63, 3),
(9, 64, 3),
(9, 65, 3),
(10, 1, 1),
(10, 2, 1),
(10, 3, 1),
(10, 4, 1),
(10, 5, 1),
(10, 6, 1),
(10, 7, 1),
(10, 8, 1),
(10, 9, 1),
(10, 10, 1),
(10, 11, 1),
(10, 12, 1),
(10, 13, 1),
(10, 14, 1),
(10, 15, 1),
(10, 16, 1),
(10, 17, 1),
(10, 18, 1),
(10, 19, 1),
(10, 20, 1),
(10, 21, 1),
(10, 22, 1),
(10, 23, 1),
(10, 24, 1),
(10, 25, 1),
(10, 26, 1),
(10, 27, 1),
(10, 28, 1),
(10, 29, 1),
(10, 30, 1),
(10, 31, 1),
(10, 32, 1),
(10, 33, 1),
(10, 34, 1),
(10, 35, 1),
(10, 36, 1),
(10, 37, 1),
(10, 38, 1),
(10, 39, 1),
(10, 40, 1),
(10, 41, 1),
(10, 42, 1),
(10, 43, 1),
(10, 44, 1),
(10, 45, 1),
(10, 46, 1),
(10, 47, 1),
(10, 48, 1),
(10, 49, 1),
(10, 50, 1),
(10, 51, 1),
(10, 52, 1),
(10, 53, 1),
(10, 54, 1),
(10, 55, 1),
(10, 56, 1),
(10, 57, 1),
(10, 58, 1),
(10, 59, 1),
(10, 60, 1),
(10, 61, 1),
(10, 62, 1),
(10, 63, 1),
(10, 64, 1),
(10, 65, 1),
(13, 1, 1),
(13, 2, 1),
(13, 3, 1),
(13, 4, 1),
(13, 5, 1),
(13, 6, 1),
(13, 7, 1),
(13, 8, 1),
(13, 9, 1),
(13, 10, 1),
(13, 11, 1),
(13, 12, 1),
(13, 13, 1),
(13, 14, 1),
(13, 15, 1),
(13, 16, 1),
(13, 17, 1),
(13, 18, 1),
(13, 19, 1),
(13, 20, 1),
(13, 21, 1),
(13, 22, 1),
(13, 23, 1),
(13, 24, 1),
(13, 25, 1),
(13, 26, 1),
(13, 27, 1),
(13, 28, 1),
(13, 29, 1),
(13, 30, 1),
(13, 31, 1),
(13, 32, 1),
(13, 33, 1),
(13, 34, 1),
(13, 35, 1),
(13, 36, 1),
(13, 37, 1),
(13, 38, 1),
(13, 39, 1),
(13, 40, 1),
(13, 41, 1),
(13, 42, 1),
(13, 43, 1),
(13, 44, 1),
(13, 45, 1),
(13, 46, 1),
(13, 47, 1),
(13, 48, 1),
(13, 49, 1),
(13, 50, 1),
(13, 51, 1),
(13, 52, 1),
(13, 53, 1),
(13, 54, 1),
(13, 55, 1),
(13, 56, 1),
(13, 57, 1),
(13, 58, 1),
(13, 59, 1),
(13, 60, 1),
(13, 61, 1),
(13, 62, 1),
(13, 63, 1),
(13, 64, 1),
(13, 65, 1),
(14, 1, 2),
(14, 2, 2),
(14, 3, 2),
(14, 4, 2),
(14, 5, 2),
(14, 6, 2),
(14, 7, 2),
(14, 8, 2),
(14, 9, 2),
(14, 10, 2),
(14, 11, 2),
(14, 12, 2),
(14, 13, 2),
(14, 14, 2),
(14, 15, 2),
(14, 16, 2),
(14, 17, 2),
(14, 18, 2),
(14, 19, 2),
(14, 20, 2),
(14, 21, 2),
(14, 22, 2),
(14, 23, 2),
(14, 24, 2),
(14, 25, 2),
(14, 26, 2),
(14, 27, 2),
(14, 28, 2),
(14, 29, 2),
(14, 30, 2),
(14, 31, 2),
(14, 32, 2),
(14, 33, 2),
(14, 34, 2),
(14, 35, 2),
(14, 36, 2),
(14, 37, 2),
(14, 38, 2),
(14, 39, 2),
(14, 40, 2),
(14, 41, 2),
(14, 42, 2),
(14, 43, 2),
(14, 44, 2),
(14, 45, 2),
(14, 46, 2),
(14, 47, 2),
(14, 48, 2),
(14, 49, 2),
(14, 50, 2),
(14, 51, 2),
(14, 52, 2),
(14, 53, 2),
(14, 54, 2),
(14, 55, 2),
(14, 56, 2),
(14, 57, 2),
(14, 58, 2),
(14, 59, 2),
(14, 60, 2),
(14, 61, 2),
(14, 62, 2),
(14, 63, 2),
(14, 64, 2),
(14, 65, 2),
(15, 1, 1),
(15, 2, 1),
(15, 3, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 10, 1),
(15, 11, 1),
(15, 12, 1),
(15, 13, 1),
(15, 14, 1),
(15, 15, 1),
(15, 16, 1),
(15, 17, 1),
(15, 18, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 26, 1),
(15, 27, 1),
(15, 28, 1),
(15, 29, 1),
(15, 30, 1),
(15, 31, 1),
(15, 32, 1),
(15, 33, 1),
(15, 34, 1),
(15, 35, 1),
(15, 36, 1),
(15, 37, 1),
(15, 38, 1),
(15, 39, 1),
(15, 40, 1),
(15, 41, 1),
(15, 42, 1),
(15, 43, 1),
(15, 44, 1),
(15, 45, 1),
(15, 46, 1),
(15, 47, 1),
(15, 48, 1),
(15, 49, 1),
(15, 50, 1),
(15, 51, 1),
(15, 52, 1),
(15, 53, 1),
(15, 54, 1),
(15, 55, 1),
(15, 56, 1),
(15, 57, 1),
(15, 58, 1),
(15, 59, 1),
(15, 60, 1),
(15, 61, 1),
(15, 62, 1),
(15, 63, 1),
(15, 64, 1),
(15, 65, 1),
(16, 1, 1),
(32, 73, 2),
(32, 66, 2),
(16, 4, 1),
(16, 5, 1),
(16, 6, 1),
(16, 7, 1),
(16, 8, 1),
(16, 9, 1),
(16, 10, 1),
(16, 11, 1),
(16, 12, 1),
(16, 13, 1),
(32, 75, 2),
(32, 74, 2),
(32, 67, 2),
(31, 72, 1),
(31, 70, 1),
(31, 68, 1),
(16, 20, 1),
(16, 21, 1),
(16, 22, 1),
(16, 23, 1),
(16, 24, 1),
(16, 25, 1),
(16, 26, 1),
(16, 27, 1),
(16, 28, 1),
(16, 29, 1),
(16, 30, 1),
(31, 73, 1),
(16, 32, 1),
(16, 33, 1),
(16, 34, 1),
(16, 35, 1),
(16, 36, 1),
(16, 37, 1),
(16, 38, 1),
(16, 39, 1),
(16, 40, 1),
(31, 66, 1),
(31, 75, 1),
(31, 74, 1),
(31, 67, 1),
(16, 72, 1),
(16, 70, 1),
(16, 68, 1),
(16, 73, 1),
(16, 66, 1),
(16, 50, 1),
(16, 51, 1),
(16, 52, 1),
(16, 75, 1),
(16, 74, 1),
(16, 55, 1),
(16, 56, 1),
(16, 57, 1),
(16, 58, 1),
(16, 59, 1),
(16, 60, 1),
(16, 61, 1),
(16, 67, 1),
(16, 63, 1),
(16, 64, 1),
(16, 65, 1),
(17, 1, 1),
(17, 2, 1),
(17, 3, 1),
(17, 4, 1),
(17, 5, 1),
(17, 6, 1),
(17, 7, 1),
(17, 8, 1),
(17, 9, 1),
(17, 10, 1),
(17, 11, 1),
(17, 12, 1),
(17, 13, 1),
(17, 14, 1),
(17, 15, 1),
(17, 16, 1),
(17, 17, 1),
(17, 18, 1),
(17, 19, 1),
(17, 20, 1),
(17, 21, 1),
(17, 22, 1),
(17, 23, 1),
(17, 24, 1),
(17, 25, 1),
(17, 26, 1),
(17, 27, 1),
(17, 28, 1),
(17, 29, 1),
(17, 30, 1),
(17, 31, 1),
(17, 32, 1),
(17, 33, 1),
(17, 34, 1),
(17, 35, 1),
(17, 36, 1),
(17, 37, 1),
(17, 38, 1),
(17, 39, 1),
(17, 40, 1),
(17, 41, 1),
(17, 42, 1),
(17, 43, 1),
(17, 44, 1),
(17, 45, 1),
(17, 46, 1),
(17, 47, 1),
(17, 48, 1),
(17, 49, 1),
(17, 50, 1),
(17, 51, 1),
(17, 52, 1),
(17, 53, 1),
(17, 54, 1),
(17, 55, 1),
(17, 56, 1),
(17, 57, 1),
(17, 58, 1),
(17, 59, 1),
(17, 60, 1),
(17, 61, 1),
(17, 62, 1),
(17, 63, 1),
(17, 64, 1),
(17, 65, 1),
(19, 1, 1),
(19, 2, 1),
(19, 3, 1),
(19, 4, 1),
(19, 5, 1),
(19, 6, 1),
(19, 7, 1),
(19, 8, 1),
(19, 9, 1),
(19, 10, 1),
(19, 11, 1),
(19, 12, 1),
(19, 13, 1),
(19, 14, 1),
(19, 15, 1),
(19, 16, 1),
(19, 17, 1),
(19, 18, 1),
(19, 19, 1),
(19, 20, 1),
(19, 21, 1),
(19, 22, 1),
(19, 23, 1),
(19, 24, 1),
(19, 25, 1),
(19, 26, 1),
(19, 27, 1),
(19, 28, 1),
(19, 29, 1),
(19, 30, 1),
(19, 31, 1),
(19, 32, 1),
(19, 33, 1),
(19, 34, 1),
(19, 35, 1),
(19, 36, 1),
(19, 37, 1),
(19, 38, 1),
(19, 39, 1),
(19, 40, 1),
(19, 41, 1),
(19, 42, 1),
(19, 43, 1),
(19, 44, 1),
(19, 45, 1),
(19, 46, 1),
(19, 47, 1),
(19, 48, 1),
(19, 49, 1),
(19, 50, 1),
(19, 51, 1),
(19, 52, 1),
(19, 53, 1),
(19, 54, 1),
(19, 55, 1),
(19, 56, 1),
(19, 57, 1),
(19, 58, 1),
(19, 59, 1),
(19, 60, 1),
(19, 61, 1),
(19, 62, 1),
(19, 63, 1),
(19, 64, 1),
(19, 65, 1),
(20, 1, 1),
(20, 2, 1),
(20, 3, 1),
(20, 4, 1),
(20, 5, 1),
(20, 6, 1),
(20, 7, 1),
(20, 8, 1),
(20, 9, 1),
(20, 10, 1),
(20, 11, 1),
(20, 12, 1),
(20, 13, 1),
(20, 14, 1),
(20, 15, 1),
(20, 16, 1),
(20, 17, 1),
(20, 18, 1),
(20, 19, 1),
(20, 20, 1),
(20, 21, 1),
(20, 22, 1),
(20, 23, 1),
(20, 24, 1),
(20, 25, 1),
(20, 26, 1),
(20, 27, 1),
(20, 28, 1),
(20, 29, 1),
(20, 30, 1),
(20, 31, 1),
(20, 32, 1),
(20, 33, 1),
(20, 34, 1),
(20, 35, 1),
(20, 36, 1),
(20, 37, 1),
(20, 38, 1),
(20, 39, 1),
(20, 40, 1),
(20, 41, 1),
(20, 42, 1),
(20, 43, 1),
(20, 44, 1),
(20, 45, 1),
(20, 46, 1),
(20, 47, 1),
(20, 48, 1),
(20, 49, 1),
(20, 50, 1),
(20, 51, 1),
(20, 52, 1),
(20, 53, 1),
(20, 54, 1),
(20, 55, 1),
(20, 56, 1),
(20, 57, 1),
(20, 58, 1),
(20, 59, 1),
(20, 60, 1),
(20, 61, 1),
(20, 62, 1),
(20, 63, 1),
(20, 64, 1),
(20, 65, 1),
(22, 1, 1),
(22, 2, 1),
(22, 3, 1),
(22, 4, 1),
(22, 5, 1),
(22, 6, 1),
(22, 7, 1),
(22, 8, 1),
(22, 9, 1),
(22, 10, 1),
(22, 11, 1),
(22, 12, 1),
(22, 13, 1),
(22, 14, 1),
(22, 15, 1),
(22, 16, 1),
(22, 17, 1),
(22, 18, 1),
(22, 19, 1),
(22, 20, 1),
(22, 21, 1),
(22, 22, 1),
(22, 23, 1),
(22, 24, 1),
(22, 25, 1),
(22, 26, 1),
(22, 27, 1),
(22, 28, 1),
(22, 29, 1),
(22, 30, 1),
(22, 31, 1),
(22, 32, 1),
(22, 33, 1),
(22, 34, 1),
(22, 35, 1),
(22, 36, 1),
(22, 37, 1),
(22, 38, 1),
(22, 39, 1),
(22, 40, 1),
(22, 41, 1),
(22, 42, 1),
(22, 43, 1),
(22, 44, 1),
(22, 45, 1),
(22, 46, 1),
(22, 47, 1),
(22, 48, 1),
(22, 49, 1),
(22, 50, 1),
(22, 51, 1),
(22, 52, 1),
(22, 53, 1),
(22, 54, 1),
(22, 55, 1),
(22, 56, 1),
(22, 57, 1),
(22, 58, 1),
(22, 59, 1),
(22, 60, 1),
(22, 61, 1),
(22, 62, 1),
(22, 63, 1),
(22, 64, 1),
(22, 65, 1),
(23, 1, 2),
(23, 2, 2),
(23, 3, 2),
(23, 4, 2),
(23, 5, 2),
(23, 6, 2),
(23, 7, 2),
(23, 8, 2),
(23, 9, 2),
(23, 10, 2),
(23, 11, 2),
(23, 12, 2),
(23, 13, 2),
(23, 14, 2),
(23, 15, 2),
(23, 16, 2),
(23, 17, 2),
(23, 18, 2),
(23, 19, 2),
(23, 20, 2),
(23, 21, 2),
(23, 22, 2),
(23, 23, 2),
(23, 24, 2),
(23, 25, 2),
(23, 26, 2),
(23, 27, 2),
(23, 28, 2),
(23, 29, 2),
(23, 30, 2),
(23, 31, 2),
(23, 32, 2),
(23, 33, 2),
(23, 34, 2),
(23, 35, 2),
(23, 36, 2),
(23, 37, 2),
(23, 38, 2),
(23, 39, 2),
(23, 40, 2),
(23, 41, 2),
(23, 42, 2),
(23, 43, 2),
(23, 44, 2),
(23, 45, 2),
(23, 46, 2),
(23, 47, 2),
(23, 48, 2),
(23, 49, 2),
(23, 50, 2),
(23, 51, 2),
(23, 52, 2),
(23, 53, 2),
(23, 54, 2),
(23, 55, 2),
(23, 56, 2),
(23, 57, 2),
(23, 58, 2),
(23, 59, 2),
(23, 60, 2),
(23, 61, 2),
(23, 62, 2),
(23, 63, 2),
(23, 64, 2),
(23, 65, 2),
(24, 1, 1),
(24, 2, 1),
(24, 3, 1),
(24, 4, 1),
(24, 5, 1),
(24, 6, 1),
(24, 7, 1),
(24, 8, 1),
(24, 9, 1),
(24, 10, 1),
(24, 11, 1),
(24, 12, 1),
(24, 13, 1),
(24, 14, 1),
(24, 15, 1),
(24, 16, 1),
(24, 17, 1),
(24, 18, 1),
(24, 19, 1),
(24, 20, 1),
(24, 21, 1),
(24, 22, 1),
(24, 23, 1),
(24, 24, 1),
(24, 25, 1),
(24, 26, 1),
(24, 27, 1),
(24, 28, 1),
(24, 29, 1),
(24, 30, 1),
(24, 31, 1),
(24, 32, 1),
(24, 33, 1),
(24, 34, 1),
(24, 35, 1),
(24, 36, 1),
(24, 37, 1),
(24, 38, 1),
(24, 39, 1),
(24, 40, 1),
(24, 41, 1),
(24, 42, 1),
(24, 43, 1),
(24, 44, 1),
(24, 45, 1),
(24, 46, 1),
(24, 47, 1),
(24, 48, 1),
(24, 49, 1),
(24, 50, 1),
(24, 51, 1),
(24, 52, 1),
(24, 53, 1),
(24, 54, 1),
(24, 55, 1),
(24, 56, 1),
(24, 57, 1),
(24, 58, 1),
(24, 59, 1),
(24, 60, 1),
(24, 61, 1),
(24, 62, 1),
(24, 63, 1),
(24, 64, 1),
(24, 65, 1),
(25, 1, 2),
(25, 2, 2),
(25, 3, 2),
(25, 4, 2),
(25, 5, 2),
(25, 6, 2),
(25, 7, 2),
(25, 8, 2),
(25, 9, 2),
(25, 10, 2),
(25, 11, 2),
(25, 12, 2),
(25, 13, 2),
(25, 14, 2),
(25, 15, 2),
(25, 16, 2),
(25, 17, 2),
(25, 18, 2),
(25, 19, 2),
(25, 20, 2),
(25, 21, 2),
(25, 22, 2),
(25, 23, 2),
(25, 24, 2),
(25, 25, 2),
(25, 26, 2),
(25, 27, 2),
(25, 28, 2),
(25, 29, 2),
(25, 30, 2),
(25, 31, 2),
(25, 32, 2),
(25, 33, 2),
(25, 34, 2),
(25, 35, 2),
(25, 36, 2),
(25, 37, 2),
(25, 38, 2),
(25, 39, 2),
(25, 40, 2),
(25, 41, 2),
(25, 42, 2),
(25, 43, 2),
(25, 44, 2),
(25, 45, 2),
(25, 46, 2),
(25, 47, 2),
(25, 48, 2),
(25, 49, 2),
(25, 50, 2),
(25, 51, 2),
(25, 52, 2),
(25, 53, 2),
(25, 54, 2),
(25, 55, 2),
(25, 56, 2),
(25, 57, 2),
(25, 58, 2),
(25, 59, 2),
(25, 60, 2),
(25, 61, 2),
(25, 62, 2),
(25, 63, 2),
(25, 64, 2),
(25, 65, 2),
(26, 1, 3),
(26, 2, 3),
(26, 3, 3),
(26, 4, 3),
(26, 5, 3),
(26, 6, 3),
(26, 7, 3),
(26, 8, 3),
(26, 9, 3),
(26, 10, 3),
(26, 11, 3),
(26, 12, 3),
(26, 13, 3),
(26, 14, 3),
(26, 15, 3),
(26, 16, 3),
(26, 17, 3),
(26, 18, 3),
(26, 19, 3),
(26, 20, 3),
(26, 21, 3),
(26, 22, 3),
(26, 23, 3),
(26, 24, 3),
(26, 25, 3),
(26, 26, 3),
(26, 27, 3),
(26, 28, 3),
(26, 29, 3),
(26, 30, 3),
(26, 31, 3),
(26, 32, 3),
(26, 33, 3),
(26, 34, 3),
(26, 35, 3),
(26, 36, 3),
(26, 37, 3),
(26, 38, 3),
(26, 39, 3),
(26, 40, 3),
(26, 41, 3),
(26, 42, 3),
(26, 43, 3),
(26, 44, 3),
(26, 45, 3),
(26, 46, 3),
(26, 47, 3),
(26, 48, 3),
(26, 49, 3),
(26, 50, 3),
(26, 51, 3),
(26, 52, 3),
(26, 53, 3),
(26, 54, 3),
(26, 55, 3),
(26, 56, 3),
(26, 57, 3),
(26, 58, 3),
(26, 59, 3),
(26, 60, 3),
(26, 61, 3),
(26, 62, 3),
(26, 63, 3),
(26, 64, 3),
(26, 65, 3),
(27, 1, 4),
(27, 2, 4),
(27, 3, 4),
(27, 4, 4),
(27, 5, 4),
(27, 6, 4),
(27, 7, 4),
(27, 8, 4),
(27, 9, 4),
(27, 10, 4),
(27, 11, 4),
(27, 12, 4),
(27, 13, 4),
(27, 14, 4),
(27, 15, 4),
(27, 16, 4),
(27, 17, 4),
(27, 18, 4),
(27, 19, 4),
(27, 20, 4),
(27, 21, 4),
(27, 22, 4),
(27, 23, 4),
(27, 24, 4),
(27, 25, 4),
(27, 26, 4),
(27, 27, 4),
(27, 28, 4),
(27, 29, 4),
(27, 30, 4),
(27, 31, 4),
(27, 32, 4),
(27, 33, 4),
(27, 34, 4),
(27, 35, 4),
(27, 36, 4),
(27, 37, 4),
(27, 38, 4),
(27, 39, 4),
(27, 40, 4),
(27, 41, 4),
(27, 42, 4),
(27, 43, 4),
(27, 44, 4),
(27, 45, 4),
(27, 46, 4),
(27, 47, 4),
(27, 48, 4),
(27, 49, 4),
(27, 50, 4),
(27, 51, 4),
(27, 52, 4),
(27, 53, 4),
(27, 54, 4),
(27, 55, 4),
(27, 56, 4),
(27, 57, 4),
(27, 58, 4),
(27, 59, 4),
(27, 60, 4),
(27, 61, 4),
(27, 62, 4),
(27, 63, 4),
(27, 64, 4),
(27, 65, 4),
(28, 1, 1),
(28, 2, 1),
(28, 3, 1),
(28, 4, 1),
(28, 5, 1),
(28, 6, 1),
(28, 7, 1),
(28, 8, 1),
(28, 9, 1),
(28, 10, 1),
(28, 11, 1),
(28, 12, 1),
(28, 13, 1),
(28, 14, 1),
(28, 15, 1),
(28, 16, 1),
(28, 17, 1),
(28, 18, 1),
(28, 19, 1),
(28, 20, 1),
(28, 21, 1),
(28, 22, 1),
(28, 23, 1),
(28, 24, 1),
(28, 25, 1),
(28, 26, 1),
(28, 27, 1),
(28, 28, 1),
(28, 29, 1),
(28, 30, 1),
(28, 31, 1),
(28, 32, 1),
(28, 33, 1),
(28, 34, 1),
(28, 35, 1),
(28, 36, 1),
(28, 37, 1),
(28, 38, 1),
(28, 39, 1),
(28, 40, 1),
(28, 41, 1),
(28, 42, 1),
(28, 43, 1),
(28, 44, 1),
(28, 45, 1),
(28, 46, 1),
(28, 47, 1),
(28, 48, 1),
(28, 49, 1),
(28, 50, 1),
(28, 51, 1),
(28, 52, 1),
(28, 53, 1),
(28, 54, 1),
(28, 55, 1),
(28, 56, 1),
(28, 57, 1),
(28, 58, 1),
(28, 59, 1),
(28, 60, 1),
(28, 61, 1),
(28, 62, 1),
(28, 63, 1),
(28, 64, 1),
(28, 65, 1),
(29, 1, 1),
(29, 2, 1),
(29, 3, 1),
(29, 4, 1),
(29, 5, 1),
(29, 6, 1),
(29, 7, 1),
(29, 8, 1),
(29, 9, 1),
(29, 10, 1),
(29, 11, 1),
(29, 12, 1),
(29, 13, 1),
(29, 14, 1),
(29, 15, 1),
(29, 16, 1),
(29, 17, 1),
(29, 18, 1),
(29, 19, 1),
(29, 20, 1),
(29, 21, 1),
(29, 22, 1),
(29, 23, 1),
(29, 24, 1),
(29, 25, 1),
(29, 26, 1),
(29, 27, 1),
(29, 28, 1),
(29, 29, 1),
(29, 30, 1),
(29, 31, 1),
(29, 32, 1),
(29, 33, 1),
(29, 34, 1),
(29, 35, 1),
(29, 36, 1),
(29, 37, 1),
(29, 38, 1),
(29, 39, 1),
(29, 40, 1),
(29, 41, 1),
(29, 42, 1),
(29, 43, 1),
(29, 44, 1),
(29, 45, 1),
(29, 46, 1),
(29, 47, 1),
(29, 48, 1),
(29, 49, 1),
(29, 50, 1),
(29, 51, 1),
(29, 52, 1),
(29, 53, 1),
(29, 54, 1),
(29, 55, 1),
(29, 56, 1),
(29, 57, 1),
(29, 58, 1),
(29, 59, 1),
(29, 60, 1),
(29, 61, 1),
(29, 62, 1),
(29, 63, 1),
(29, 64, 1),
(29, 65, 1),
(30, 1, 1),
(30, 2, 1),
(30, 3, 1),
(30, 4, 1),
(30, 5, 1),
(30, 6, 1),
(30, 7, 1),
(30, 8, 1),
(30, 9, 1),
(30, 10, 1),
(30, 11, 1),
(30, 12, 1),
(30, 13, 1),
(30, 14, 1),
(30, 15, 1),
(30, 16, 1),
(30, 17, 1),
(30, 18, 1),
(30, 19, 1),
(30, 20, 1),
(30, 21, 1),
(30, 22, 1),
(30, 23, 1),
(30, 24, 1),
(30, 25, 1),
(30, 26, 1),
(30, 27, 1),
(30, 28, 1),
(30, 29, 1),
(30, 30, 1),
(30, 31, 1),
(30, 32, 1),
(30, 33, 1),
(30, 34, 1),
(30, 35, 1),
(30, 36, 1),
(30, 37, 1),
(30, 38, 1),
(30, 39, 1),
(30, 40, 1),
(30, 41, 1),
(30, 42, 1),
(30, 43, 1),
(30, 44, 1),
(30, 45, 1),
(30, 46, 1),
(30, 47, 1),
(30, 48, 1),
(30, 49, 1),
(30, 50, 1),
(30, 51, 1),
(30, 52, 1),
(30, 53, 1),
(30, 54, 1),
(30, 55, 1),
(30, 56, 1),
(30, 57, 1),
(30, 58, 1),
(30, 59, 1),
(30, 60, 1),
(30, 61, 1),
(30, 62, 1),
(30, 63, 1),
(30, 64, 1),
(30, 65, 1),
(31, 1, 1),
(31, 4, 1),
(31, 5, 1),
(31, 6, 1),
(31, 7, 1),
(31, 8, 1),
(31, 9, 1),
(31, 10, 1),
(31, 11, 1),
(31, 12, 1),
(31, 13, 1),
(31, 20, 1),
(31, 21, 1),
(31, 22, 1),
(31, 23, 1),
(31, 24, 1),
(31, 25, 1),
(31, 26, 1),
(31, 27, 1),
(31, 28, 1),
(31, 29, 1),
(31, 30, 1),
(31, 32, 1),
(31, 33, 1),
(31, 34, 1),
(31, 35, 1),
(31, 36, 1),
(31, 37, 1),
(31, 38, 1),
(31, 39, 1),
(31, 40, 1),
(31, 41, 1),
(31, 42, 1),
(31, 43, 1),
(31, 44, 1),
(31, 50, 1),
(31, 51, 1),
(31, 52, 1),
(31, 55, 1),
(31, 56, 1),
(31, 57, 1),
(31, 58, 1),
(31, 59, 1),
(31, 60, 1),
(31, 61, 1),
(31, 63, 1),
(31, 64, 1),
(31, 65, 1),
(32, 1, 2),
(32, 4, 2),
(32, 5, 2),
(32, 6, 2),
(32, 7, 2),
(32, 8, 2),
(32, 9, 2),
(32, 10, 2),
(32, 11, 2),
(32, 12, 2),
(32, 13, 2),
(32, 20, 2),
(32, 21, 2),
(32, 22, 2),
(32, 23, 2),
(32, 24, 2),
(32, 25, 2),
(32, 26, 2),
(32, 27, 2),
(32, 28, 2),
(32, 29, 2),
(32, 30, 2),
(32, 32, 2),
(32, 33, 2),
(32, 34, 2),
(32, 35, 2),
(32, 36, 2),
(32, 37, 2),
(32, 38, 2),
(32, 39, 2),
(32, 40, 2),
(32, 50, 2),
(32, 51, 2),
(32, 52, 2),
(32, 55, 2),
(32, 56, 2),
(32, 57, 2),
(32, 58, 2),
(32, 59, 2),
(32, 60, 2),
(32, 61, 2),
(32, 63, 2),
(32, 64, 2),
(32, 65, 2),
(32, 41, 2),
(32, 42, 2),
(32, 43, 2),
(32, 44, 2),
(32, 68, 2),
(32, 70, 2),
(32, 72, 2),
(9, 67, 3),
(9, 74, 3),
(9, 75, 3),
(9, 66, 3),
(9, 73, 3),
(9, 68, 3),
(9, 70, 3),
(9, 72, 3),
(6, 67, 4),
(6, 74, 4),
(6, 75, 4),
(6, 66, 4),
(6, 73, 4),
(6, 68, 4),
(6, 70, 4),
(6, 72, 4),
(20, 67, 1),
(20, 74, 1),
(20, 75, 1),
(20, 66, 1),
(20, 73, 1),
(20, 68, 1),
(20, 70, 1),
(20, 72, 1),
(17, 67, 1),
(17, 74, 1),
(17, 75, 1),
(17, 66, 1),
(17, 73, 1),
(17, 68, 1),
(17, 70, 1),
(17, 72, 1),
(15, 67, 1),
(15, 74, 1),
(15, 75, 1),
(15, 66, 1),
(15, 73, 1),
(15, 68, 1),
(15, 70, 1),
(15, 72, 1),
(13, 67, 1),
(13, 74, 1),
(13, 75, 1),
(13, 66, 1),
(13, 73, 1),
(13, 68, 1),
(13, 70, 1),
(13, 72, 1),
(14, 67, 2),
(14, 74, 2),
(14, 75, 2),
(14, 66, 2),
(14, 73, 2),
(14, 68, 2),
(14, 70, 2),
(14, 72, 2),
(10, 67, 1),
(10, 74, 1),
(10, 75, 1),
(10, 66, 1),
(10, 73, 1),
(10, 68, 1),
(10, 70, 1),
(10, 72, 1),
(19, 67, 1),
(19, 74, 1),
(19, 75, 1),
(19, 66, 1),
(19, 73, 1),
(19, 68, 1),
(19, 70, 1),
(19, 72, 1),
(30, 67, 1),
(30, 74, 1),
(30, 75, 1),
(30, 66, 1),
(30, 73, 1),
(30, 68, 1),
(30, 70, 1),
(30, 72, 1),
(28, 67, 1),
(28, 74, 1),
(28, 75, 1),
(28, 66, 1),
(28, 73, 1),
(28, 68, 1),
(28, 70, 1),
(28, 72, 1),
(29, 67, 1),
(29, 74, 1),
(29, 75, 1),
(29, 66, 1),
(29, 73, 1),
(29, 68, 1),
(29, 70, 1),
(29, 72, 1),
(22, 67, 1),
(22, 74, 1),
(22, 75, 1),
(22, 66, 1),
(22, 73, 1),
(22, 68, 1),
(22, 70, 1),
(22, 72, 1),
(23, 67, 2),
(23, 74, 2),
(23, 75, 2),
(23, 66, 2),
(23, 73, 2),
(23, 68, 2),
(23, 70, 2),
(23, 72, 2),
(24, 67, 1),
(24, 74, 1),
(24, 75, 1),
(24, 66, 1),
(24, 73, 1),
(24, 68, 1),
(24, 70, 1),
(24, 72, 1),
(25, 67, 2),
(25, 74, 2),
(25, 75, 2),
(25, 66, 2),
(25, 73, 2),
(25, 68, 2),
(25, 70, 2),
(25, 72, 2),
(26, 67, 3),
(26, 74, 3),
(26, 75, 3),
(26, 66, 3),
(26, 73, 3),
(26, 68, 3),
(26, 70, 3),
(26, 72, 3),
(27, 67, 4),
(27, 74, 4),
(27, 75, 4),
(27, 66, 4),
(27, 73, 4),
(27, 68, 4),
(27, 70, 4),
(27, 72, 4),
(16, 79, 1),
(16, 78, 1),
(16, 81, 1),
(16, 76, 1),
(16, 77, 1),
(16, 84, 1),
(16, 82, 1),
(31, 79, 1),
(31, 78, 1),
(31, 81, 1),
(31, 76, 1),
(31, 77, 1),
(31, 84, 1),
(31, 82, 1),
(32, 79, 2),
(32, 78, 2),
(32, 81, 2),
(32, 76, 2),
(32, 77, 2),
(32, 84, 2),
(32, 82, 2),
(9, 79, 3),
(9, 78, 3),
(9, 81, 3),
(9, 76, 3),
(9, 77, 3),
(9, 84, 3),
(9, 82, 3),
(6, 79, 4),
(6, 78, 4),
(6, 81, 4),
(6, 76, 4),
(6, 77, 4),
(6, 84, 4),
(6, 82, 4),
(20, 79, 1),
(20, 78, 1),
(20, 81, 1),
(20, 76, 1),
(20, 77, 1),
(20, 84, 1),
(20, 82, 1),
(17, 79, 1),
(17, 78, 1),
(17, 81, 1),
(17, 76, 1),
(17, 77, 1),
(17, 84, 1),
(17, 82, 1),
(15, 79, 1),
(15, 78, 1),
(15, 81, 1),
(15, 76, 1),
(15, 77, 1),
(15, 84, 1),
(15, 82, 1),
(13, 79, 1),
(13, 78, 1),
(13, 81, 1),
(13, 76, 1),
(13, 77, 1),
(13, 84, 1),
(13, 82, 1),
(14, 79, 2),
(14, 78, 2),
(14, 81, 2),
(14, 76, 2),
(14, 77, 2),
(14, 84, 2),
(14, 82, 2),
(10, 79, 1),
(10, 78, 1),
(10, 81, 1),
(10, 76, 1),
(10, 77, 1),
(10, 84, 1),
(10, 82, 1),
(19, 79, 1),
(19, 78, 1),
(19, 81, 1),
(19, 76, 1),
(19, 77, 1),
(19, 84, 1),
(19, 82, 1),
(30, 79, 1),
(30, 78, 1),
(30, 81, 1),
(30, 76, 1),
(30, 77, 1),
(30, 84, 1),
(30, 82, 1),
(28, 79, 1),
(28, 78, 1),
(28, 81, 1),
(28, 76, 1),
(28, 77, 1),
(28, 84, 1),
(28, 82, 1),
(29, 79, 1),
(29, 78, 1),
(29, 81, 1),
(29, 76, 1),
(29, 77, 1),
(29, 84, 1),
(29, 82, 1),
(22, 79, 1),
(22, 78, 1),
(22, 81, 1),
(22, 76, 1),
(22, 77, 1),
(22, 84, 1),
(22, 82, 1),
(23, 79, 2),
(23, 78, 2),
(23, 81, 2),
(23, 76, 2),
(23, 77, 2),
(23, 84, 2),
(23, 82, 2),
(24, 79, 1),
(24, 78, 1),
(24, 81, 1),
(24, 76, 1),
(24, 77, 1),
(24, 84, 1),
(24, 82, 1),
(25, 79, 2),
(25, 78, 2),
(25, 81, 2),
(25, 76, 2),
(25, 77, 2),
(25, 84, 2),
(25, 82, 2),
(26, 79, 3),
(26, 78, 3),
(26, 81, 3),
(26, 76, 3),
(26, 77, 3),
(26, 84, 3),
(26, 82, 3),
(27, 79, 4),
(27, 78, 4),
(27, 81, 4),
(27, 76, 4),
(27, 77, 4),
(27, 84, 4),
(27, 82, 4),
(16, 85, 1),
(16, 87, 1),
(16, 86, 1),
(16, 89, 1),
(31, 85, 1),
(31, 87, 1),
(31, 86, 1),
(31, 89, 1),
(32, 85, 2),
(32, 87, 2),
(32, 86, 2),
(32, 89, 2),
(9, 85, 3),
(9, 87, 3),
(9, 86, 3),
(9, 89, 3),
(6, 85, 4),
(6, 87, 4),
(6, 86, 4),
(6, 89, 4),
(20, 85, 1),
(20, 87, 1),
(20, 86, 1),
(20, 89, 1),
(17, 85, 1),
(17, 87, 1),
(17, 86, 1),
(17, 89, 1),
(15, 85, 1),
(15, 87, 1),
(15, 86, 1),
(15, 89, 1),
(13, 85, 1),
(13, 87, 1),
(13, 86, 1),
(13, 89, 1),
(14, 85, 2),
(14, 87, 2),
(14, 86, 2),
(14, 89, 2),
(10, 85, 1),
(10, 87, 1),
(10, 86, 1),
(10, 89, 1),
(19, 85, 1),
(19, 87, 1),
(19, 86, 1),
(19, 89, 1),
(30, 85, 1),
(30, 87, 1),
(30, 86, 1),
(30, 89, 1),
(28, 85, 1),
(28, 87, 1),
(28, 86, 1),
(28, 89, 1),
(29, 85, 1),
(29, 87, 1),
(29, 86, 1),
(29, 89, 1),
(22, 85, 1),
(22, 87, 1),
(22, 86, 1),
(22, 89, 1),
(23, 85, 2),
(23, 87, 2),
(23, 86, 2),
(23, 89, 2),
(24, 85, 1),
(24, 87, 1),
(24, 86, 1),
(24, 89, 1),
(25, 85, 2),
(25, 87, 2),
(25, 86, 2),
(25, 89, 2),
(26, 85, 3),
(26, 87, 3),
(26, 86, 3),
(26, 89, 3),
(27, 85, 4),
(27, 87, 4),
(27, 86, 4),
(27, 89, 4),
(16, 91, 1),
(16, 95, 1),
(16, 90, 1),
(31, 91, 1),
(31, 95, 1),
(31, 90, 1),
(32, 91, 2),
(32, 95, 2),
(32, 90, 2),
(9, 91, 3),
(9, 95, 3),
(9, 90, 3),
(6, 91, 4),
(6, 95, 4),
(6, 90, 4),
(20, 91, 1),
(20, 95, 1),
(20, 90, 1),
(17, 91, 1),
(17, 95, 1),
(17, 90, 1),
(15, 91, 1),
(15, 95, 1),
(15, 90, 1),
(13, 91, 1),
(13, 95, 1),
(13, 90, 1),
(14, 91, 2),
(14, 95, 2),
(14, 90, 2),
(10, 91, 1),
(10, 95, 1),
(10, 90, 1),
(19, 91, 1),
(19, 95, 1),
(19, 90, 1),
(30, 91, 1),
(30, 95, 1),
(30, 90, 1),
(28, 91, 1),
(28, 95, 1),
(28, 90, 1),
(29, 91, 1),
(29, 95, 1),
(29, 90, 1),
(22, 91, 1),
(22, 95, 1),
(22, 90, 1),
(23, 91, 2),
(23, 95, 2),
(23, 90, 2),
(24, 91, 1),
(24, 95, 1),
(24, 90, 1),
(25, 91, 2),
(25, 95, 2),
(25, 90, 2),
(26, 91, 3),
(26, 95, 3),
(26, 90, 3),
(27, 91, 4),
(27, 95, 4),
(27, 90, 4),
(33, 79, 1),
(33, 77, 1),
(34, 85, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_comment`
--

CREATE TABLE IF NOT EXISTS `tms_vi_comment` (
  `cid` mediumint(8) unsigned NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(11) NOT NULL DEFAULT '0',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_contact_department`
--

CREATE TABLE IF NOT EXISTS `tms_vi_contact_department` (
  `id` smallint(5) unsigned NOT NULL,
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cats` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admins` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` smallint(5) NOT NULL,
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_contact_department`
--

INSERT INTO `tms_vi_contact_department` (`id`, `full_name`, `alias`, `image`, `phone`, `fax`, `email`, `address`, `note`, `others`, `cats`, `admins`, `act`, `weight`, `is_default`) VALUES
(1, 'Phòng Chăm sóc khách hàng', 'Cham-soc-khach-hang', '', '(08) 38.000.000[+84838000000]', '08 38.000.001', 'customer@mysite.com', '', 'Bộ phận tiếp nhận và giải quyết các yêu cầu, đề nghị, ý kiến liên quan đến hoạt động chính của doanh nghiệp', '{"viber":"myViber","skype":"mySkype","yahoo":"myYahoo"}', 'Tư vấn|Khiếu nại, phản ánh|Đề nghị hợp tác', '1/1/1/0;', 1, 1, 1),
(2, 'Phòng Kỹ thuật', 'Ky-thuat', '', '(08) 38.000.002[+84838000002]', '08 38.000.003', 'technical@mysite.com', '', 'Bộ phận tiếp nhận và giải quyết các câu hỏi liên quan đến kỹ thuật', '{"viber":"myViber2","skype":"mySkype2","yahoo":"myYahoo2"}', 'Thông báo lỗi|Góp ý cải tiến', '1/1/1/0;', 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_contact_reply`
--

CREATE TABLE IF NOT EXISTS `tms_vi_contact_reply` (
  `rid` mediumint(8) unsigned NOT NULL,
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reply_content` text COLLATE utf8mb4_unicode_ci,
  `reply_time` int(11) unsigned NOT NULL DEFAULT '0',
  `reply_aid` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_contact_send`
--

CREATE TABLE IF NOT EXISTS `tms_vi_contact_send` (
  `id` mediumint(8) unsigned NOT NULL,
  `cid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_time` int(11) unsigned NOT NULL DEFAULT '0',
  `sender_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sender_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sender_ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_reply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_processed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `processed_by` int(11) unsigned NOT NULL DEFAULT '0',
  `processed_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_contact_supporter`
--

CREATE TABLE IF NOT EXISTS `tms_vi_contact_supporter` (
  `id` smallint(5) unsigned NOT NULL,
  `departmentid` smallint(5) unsigned NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `weight` smallint(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_download`
--

CREATE TABLE IF NOT EXISTS `tms_vi_download` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introtext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploadtime` int(11) unsigned NOT NULL,
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filesize` int(11) NOT NULL DEFAULT '0',
  `fileimage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_fileupload` smallint(4) unsigned NOT NULL DEFAULT '0',
  `num_linkdirect` smallint(4) unsigned NOT NULL DEFAULT '0',
  `view_hits` int(11) NOT NULL DEFAULT '0',
  `download_hits` int(11) NOT NULL DEFAULT '0',
  `comment_hits` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_download_categories`
--

CREATE TABLE IF NOT EXISTS `tms_vi_download_categories` (
  `id` smallint(5) unsigned NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `groups_onlineview` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `groups_download` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `groups_addfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `viewcat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'viewcat_list_new',
  `numlink` smallint(4) DEFAULT '3',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_download_config`
--

CREATE TABLE IF NOT EXISTS `tms_vi_download_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_download_config`
--

INSERT INTO `tms_vi_download_config` (`config_name`, `config_value`) VALUES
('indexfile', 'viewcat_main_bottom'),
('viewlist_type', 'list'),
('per_page_home', '20'),
('per_page_child', '20'),
('is_addfile', '1'),
('groups_upload', '4'),
('maxfilesize', '11658067968'),
('upload_filetype', 'adobe,archives,audio,documents,flash,images,real,video'),
('groups_addfile', '4'),
('tags_alias', '0'),
('is_zip', '0'),
('is_resume', '1'),
('max_speed', '0'),
('delfile_mode', '0'),
('structure_upload', 'Ym'),
('scorm_handle_mode', '0'),
('fileserver', '0'),
('shareport', 'none'),
('addthis_pubid', ''),
('copy_document', '0'),
('pdf_handler', 'phpattachment'),
('list_title_length', '30'),
('arr_dis_ad_author_name', '1'),
('arr_dis_ad_author_email', '1'),
('arr_dis_ad_author_url', '1'),
('arr_dis_ad_fileimage', '1'),
('arr_dis_ad_introtext', '1'),
('arr_dis_ad_description', '1'),
('arr_dis_ad_linkdirect', '1'),
('arr_dis_ad_filesize', '1'),
('arr_dis_ad_version', '1'),
('arr_dis_ad_copyright', '1'),
('arr_req_ad_author_name', '0'),
('arr_req_ad_author_email', '0'),
('arr_req_ad_author_url', '0'),
('arr_req_ad_fileimage', '0'),
('arr_req_ad_introtext', '0'),
('arr_req_ad_description', '0'),
('arr_req_ad_linkdirect', '0'),
('arr_req_ad_filesize', '0'),
('arr_req_ad_version', '0'),
('arr_req_ad_copyright', '0'),
('arr_dis_ur_author_name', '1'),
('arr_dis_ur_author_email', '1'),
('arr_dis_ur_author_url', '1'),
('arr_dis_ur_fileimage', '1'),
('arr_dis_ur_introtext', '1'),
('arr_dis_ur_description', '1'),
('arr_dis_ur_linkdirect', '1'),
('arr_dis_ur_filesize', '1'),
('arr_dis_ur_version', '1'),
('arr_dis_ur_copyright', '1'),
('arr_req_ur_author_name', '0'),
('arr_req_ur_author_email', '0'),
('arr_req_ur_author_url', '0'),
('arr_req_ur_fileimage', '0'),
('arr_req_ur_introtext', '0'),
('arr_req_ur_description', '0'),
('arr_req_ur_linkdirect', '0'),
('arr_req_ur_filesize', '0'),
('arr_req_ur_version', '0'),
('arr_req_ur_copyright', '0'),
('allow_fupload_import', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_download_detail`
--

CREATE TABLE IF NOT EXISTS `tms_vi_download_detail` (
  `id` int(11) unsigned NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkdirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `groups_comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groups_onlineview` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groups_download` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating_detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_download_files`
--

CREATE TABLE IF NOT EXISTS `tms_vi_download_files` (
  `file_id` int(11) unsigned NOT NULL,
  `download_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'ID file download',
  `server_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'ID fileserver hoặc 0 nếu là local',
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `scorm_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_download_report`
--

CREATE TABLE IF NOT EXISTS `tms_vi_download_report` (
  `fid` int(11) unsigned NOT NULL DEFAULT '0',
  `post_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_download_server`
--

CREATE TABLE IF NOT EXISTS `tms_vi_download_server` (
  `server_id` smallint(5) unsigned NOT NULL,
  `server_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `upload_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `access_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `secret_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_download_tags`
--

CREATE TABLE IF NOT EXISTS `tms_vi_download_tags` (
  `did` int(11) unsigned NOT NULL,
  `numdownload` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_download_tags_id`
--

CREATE TABLE IF NOT EXISTS `tms_vi_download_tags_id` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `did` int(11) unsigned NOT NULL DEFAULT '0',
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_download_tmp`
--

CREATE TABLE IF NOT EXISTS `tms_vi_download_tmp` (
  `id` mediumint(8) unsigned NOT NULL,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `introtext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploadtime` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fileupload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkdirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filesize` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fileimage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_freecontent_blocks`
--

CREATE TABLE IF NOT EXISTS `tms_vi_freecontent_blocks` (
  `bid` mediumint(8) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_freecontent_blocks`
--

INSERT INTO `tms_vi_freecontent_blocks` (`bid`, `title`, `description`) VALUES
(1, 'Sản phẩm', 'Sản phẩm của công ty cổ phần phát triển nguồn mở Việt Nam - VINADES.,JSC');

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_freecontent_rows`
--

CREATE TABLE IF NOT EXISTS `tms_vi_freecontent_rows` (
  `id` mediumint(8) unsigned NOT NULL,
  `bid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0: In-Active, 1: Active, 2: Expired'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_freecontent_rows`
--

INSERT INTO `tms_vi_freecontent_rows` (`id`, `bid`, `title`, `description`, `link`, `target`, `image`, `start_time`, `end_time`, `status`) VALUES
(1, 1, 'Hệ quản trị nội dung NukeViet', '<ul>\n	<li>Giải thưởng Nhân tài đất Việt 2011, 10.000+ website đang sử dụng</li>\n	<li>Được Bộ GD&amp;ĐT khuyến khích sử dụng trong các cơ sở giáo dục</li>\n	<li>Bộ TT&amp;TT quy định ưu tiên sử dụng trong cơ quan nhà nước</li>\n</ul>', 'http://vinades.vn/vi/san-pham/nukeviet/', '_blank', 'cms.jpg', 1629627264, 0, 1),
(2, 1, 'Cổng thông tin doanh nghiệp', '<ul>\n	<li>Tích hợp bán hàng trực tuyến</li>\n	<li>Tích hợp các nghiệp vụ quản lý (quản lý khách hàng, quản lý nhân sự, quản lý tài liệu)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-doanh-nghiep-NukeViet-portal/', '_blank', 'portal.jpg', 1629627264, 0, 1),
(3, 1, 'Cổng thông tin Phòng giáo dục, Sở giáo dục', '<ul>\n	<li>Tích hợp chung website hàng trăm trường</li>\n	<li>Tích hợp các ứng dụng trực tuyến (Tra điểm SMS, Tra cứu văn bằng, Học bạ điện tử ...)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-giao-duc-NukeViet-Edugate/', '_blank', 'edugate.jpg', 1629627264, 0, 1),
(4, 1, 'Tòa soạn báo điện tử chuyên nghiệp', '<ul>\n	<li>Bảo mật đa tầng, phân quyền linh hoạt</li>\n	<li>Hệ thống bóc tin tự động, đăng bài tự động, cùng nhiều chức năng tiên tiến khác...</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Toa-soan-bao-dien-tu/', '_blank', 'toa-soan-dien-tu.jpg', 1629627264, 0, 1),
(5, 1, 'Giải pháp bán hàng trực tuyến', '<ul><li>Tích hợp các tính năng cơ bản bán hàng trực tuyến</li><li>Tích hợp với các cổng thanh toán, ví điện tử trên toàn quốc</li></ul>', 'http://vinades.vn', '_blank', 'shop.jpg', 1629627264, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_laws_admins`
--

CREATE TABLE IF NOT EXISTS `tms_vi_laws_admins` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subjectid` smallint(4) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_laws_area`
--

CREATE TABLE IF NOT EXISTS `tms_vi_laws_area` (
  `id` smallint(4) unsigned NOT NULL,
  `parentid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(249) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(249) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_laws_area`
--

INSERT INTO `tms_vi_laws_area` (`id`, `parentid`, `alias`, `title`, `introduction`, `keywords`, `addtime`, `weight`) VALUES
(1, 0, 'Giao-duc-1', 'Giáo dục', '', '', 1412265295, 1),
(2, 0, 'Phap-quy-2', 'Pháp quy', '', '', 1412265295, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_laws_cat`
--

CREATE TABLE IF NOT EXISTS `tms_vi_laws_cat` (
  `id` smallint(4) unsigned NOT NULL,
  `parentid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(249) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(249) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `newday` tinyint(2) unsigned NOT NULL DEFAULT '5',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_laws_cat`
--

INSERT INTO `tms_vi_laws_cat` (`id`, `parentid`, `alias`, `title`, `introduction`, `keywords`, `newday`, `addtime`, `weight`) VALUES
(1, 0, 'Cong-van', 'Công văn', '', '', 5, 1412265295, 1),
(2, 0, 'Thong-tu', 'Thông tư', '', '', 5, 1412265295, 2),
(3, 0, 'Quyet-dinh', 'Quyết định', '', '', 5, 1412265295, 3),
(4, 0, 'Nghi-dinh', 'Nghị định', '', '', 5, 1412265295, 4),
(5, 0, 'Thong-bao', 'Thông báo', '', '', 5, 1412998152, 5),
(6, 0, 'Huong-dan', 'Hướng dẫn', '', '', 5, 1412998170, 6),
(7, 0, 'Bao-cao', 'Báo cáo', '', '', 5, 1412998182, 7),
(8, 0, 'Chi-thi', 'Chỉ thị', '', '', 5, 1412998193, 8),
(9, 0, 'Ke-hoach', 'Kế hoạch', '', '', 5, 1412998208, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_laws_config`
--

CREATE TABLE IF NOT EXISTS `tms_vi_laws_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_laws_config`
--

INSERT INTO `tms_vi_laws_config` (`config_name`, `config_value`) VALUES
('nummain', '50'),
('numsub', '50'),
('typeview', '0'),
('down_in_home', '1'),
('detail_other', 'a:1:{i:0;s:3:"cat";}'),
('detail_hide_empty_field', '1'),
('detail_show_link_cat', '1'),
('detail_show_link_area', '1'),
('detail_show_link_subject', '1'),
('detail_show_link_signer', '1'),
('detail_pdf_quick_view', '1'),
('other_numlinks', '5'),
('title_show_type', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_laws_examine`
--

CREATE TABLE IF NOT EXISTS `tms_vi_laws_examine` (
  `id` smallint(4) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_laws_examine`
--

INSERT INTO `tms_vi_laws_examine` (`id`, `title`, `weight`) VALUES
(1, 'Ủy ban Pháp luật', 1),
(2, 'Ủy ban Đối ngoại', 2),
(3, 'Ủy ban Kinh tế', 3),
(4, 'Ủy ban Tư pháp', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_laws_row`
--

CREATE TABLE IF NOT EXISTS `tms_vi_laws_row` (
  `id` int(10) NOT NULL,
  `replacement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `relatement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `sid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `eid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `sgid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `introtext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bodytext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groups_download` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approval` tinyint(1) NOT NULL,
  `addtime` int(11) NOT NULL,
  `edittime` int(11) NOT NULL,
  `publtime` int(11) NOT NULL DEFAULT '0',
  `start_comm_time` int(11) DEFAULT NULL,
  `end_comm_time` int(11) DEFAULT NULL,
  `startvalid` int(11) NOT NULL DEFAULT '0',
  `exptime` int(11) NOT NULL DEFAULT '0',
  `view_hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `download_hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_add` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_edit` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_laws_row_area`
--

CREATE TABLE IF NOT EXISTS `tms_vi_laws_row_area` (
  `row_id` int(10) unsigned NOT NULL,
  `area_id` smallint(4) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_laws_set_replace`
--

CREATE TABLE IF NOT EXISTS `tms_vi_laws_set_replace` (
  `id` mediumint(8) unsigned NOT NULL,
  `oid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `nid` mediumint(8) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_laws_signer`
--

CREATE TABLE IF NOT EXISTS `tms_vi_laws_signer` (
  `id` smallint(4) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offices` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `positions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_laws_signer`
--

INSERT INTO `tms_vi_laws_signer` (`id`, `title`, `offices`, `positions`, `addtime`) VALUES
(1, 'Phạm Vũ Luận', '', 'Bộ trưởng', 1412265295),
(2, 'Bùi Văn Ga', '', 'Thứ trưởng', 1412265295),
(3, 'Nguyễn Thị Nghĩa', '', 'Thứ trưởng', 1412265295),
(4, 'Nguyễn Vinh Hiển', '', 'Thứ trưởng', 1412265295),
(5, 'Khác', '', '', 1412265295);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_laws_subject`
--

CREATE TABLE IF NOT EXISTS `tms_vi_laws_subject` (
  `id` smallint(4) unsigned NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numcount` int(10) NOT NULL DEFAULT '0',
  `numlink` tinyint(2) NOT NULL DEFAULT '5',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_laws_subject`
--

INSERT INTO `tms_vi_laws_subject` (`id`, `alias`, `title`, `introduction`, `keywords`, `numcount`, `numlink`, `addtime`, `weight`) VALUES
(1, 'Bo-GD-DT', 'Bộ GD&amp;ĐT', '', '', 0, 5, 1412265295, 1),
(2, 'So-GD-DT', 'Sở GD&amp;ĐT', '', '', 0, 5, 1412265295, 2),
(3, 'Phong-GD-DT', 'Phòng GD', '', '', 0, 5, 1412265295, 3),
(4, 'Khac', 'Khác', '', '', 0, 5, 1412265295, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_menu`
--

CREATE TABLE IF NOT EXISTS `tms_vi_menu` (
  `id` smallint(5) unsigned NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_menu`
--

INSERT INTO `tms_vi_menu` (`id`, `title`) VALUES
(1, 'Top Menu'),
(2, 'menu left');

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_menu_rows`
--

CREATE TABLE IF NOT EXISTS `tms_vi_menu_rows` (
  `id` mediumint(5) NOT NULL,
  `parentid` mediumint(5) unsigned NOT NULL,
  `mid` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `lev` int(11) NOT NULL DEFAULT '0',
  `subitem` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `op` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` tinyint(4) DEFAULT '0',
  `css` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_menu_rows`
--

INSERT INTO `tms_vi_menu_rows` (`id`, `parentid`, `mid`, `title`, `link`, `icon`, `image`, `note`, `weight`, `sort`, `lev`, `subitem`, `groups_view`, `module_name`, `op`, `target`, `css`, `active_type`, `status`) VALUES
(1, 0, 1, 'Giới thiệu', '/index.php?language=vi&nv=about', '', '', '', 1, 1, 0, '8,9,10,11,12,13,14,15', '6', 'about', '', 1, '', 0, 1),
(2, 0, 1, 'Tin Tức', '/index.php?language=vi&nv=news', '', '', '', 2, 10, 0, '59,60,61,62,63,64', '6', 'news', '', 1, '', 0, 1),
(70, 0, 1, 'Cán bộ', '/index.php?language=vi&nv=organs', '', '', '', 5, 19, 0, '', '6', 'organs', '', 1, '', 0, 1),
(69, 0, 1, 'Văn bản pháp luật', '/index.php?language=vi&nv=laws', '', '', '', 4, 18, 0, '', '6', 'laws', '', 1, '', 0, 1),
(68, 0, 1, 'Download', '/index.php?language=vi&nv=download', '', '', '', 3, 17, 0, '', '6', 'download', '', 1, '', 0, 1),
(7, 0, 1, 'Liên hệ', '/index.php?language=vi&nv=contact', '', '', '', 6, 20, 0, '', '6', 'contact', '', 1, '', 0, 1),
(8, 1, 1, 'Giới thiệu về NukeViet', '/index.php?language=vi&nv=about&op=gioi-thieu-ve-nukeviet.html', '', '', '', 1, 2, 1, '', '6', 'about', 'gioi-thieu-ve-nukeviet', 1, '', 0, 1),
(9, 1, 1, 'Giới thiệu về NukeViet CMS', '/index.php?language=vi&nv=about&op=gioi-thieu-ve-nukeviet-cms.html', '', '', '', 2, 3, 1, '', '6', 'about', 'gioi-thieu-ve-nukeviet-cms', 1, '', 0, 1),
(10, 1, 1, 'Logo và tên gọi NukeViet', '/index.php?language=vi&nv=about&op=logo-va-ten-goi-nukeviet.html', '', '', '', 3, 4, 1, '', '6', 'about', 'logo-va-ten-goi-nukeviet', 1, '', 0, 1),
(11, 1, 1, 'Giấy phép sử dụng NukeViet', '/index.php?language=vi&nv=about&op=giay-phep-su-dung-nukeviet.html', '', '', '', 4, 5, 1, '', '6,7', 'about', 'giay-phep-su-dung-nukeviet', 1, '', 0, 1),
(12, 1, 1, 'Những tính năng của NukeViet CMS 4.0', '/index.php?language=vi&nv=about&op=nhung-tinh-nang-cua-nukeviet-cms-4-0.html', '', '', '', 5, 6, 1, '', '6', 'about', 'nhung-tinh-nang-cua-nukeviet-cms-4-0', 1, '', 0, 1),
(13, 1, 1, 'Yêu cầu sử dụng NukeViet 4', '/index.php?language=vi&nv=about&op=Yeu-cau-su-dung-NukeViet-4.html', '', '', '', 6, 7, 1, '', '6', 'about', 'Yeu-cau-su-dung-NukeViet-4', 1, '', 0, 1),
(14, 1, 1, 'Giới thiệu về Công ty cổ phần phát triển nguồn mở Việt Nam', '/index.php?language=vi&nv=about&op=gioi-thieu-ve-cong-ty-co-phan-phat-trien-nguon-mo-viet-nam.html', '', '', '', 7, 8, 1, '', '6', 'about', 'gioi-thieu-ve-cong-ty-co-phan-phat-trien-nguon-mo-viet-nam', 1, '', 0, 1),
(15, 1, 1, 'Ủng hộ, hỗ trợ và tham gia phát triển NukeViet', '/index.php?language=vi&nv=about&op=ung-ho-ho-tro-va-tham-gia-phat-trien-nukeviet.html', '', '', '', 8, 9, 1, '', '6', 'about', 'ung-ho-ho-tro-va-tham-gia-phat-trien-nukeviet', 1, '', 0, 1),
(63, 2, 1, 'Truyên truyền', '/index.php?language=vi&nv=news&amp;op=truyen-truyen', '', '', '', 5, 15, 1, '', '6', 'news', 'truyen-truyen', 1, '', 1, 1),
(62, 2, 1, 'Kinh tế', '/index.php?language=vi&nv=news&amp;op=kinh-te', '', '', '', 4, 14, 1, '', '6', 'news', 'kinh-te', 1, '', 1, 1),
(61, 2, 1, 'Văn hóa - Xã hội', '/index.php?language=vi&nv=news&amp;op=van-hoa-xa-hoi', '', '', '', 3, 13, 1, '', '6', 'news', 'van-hoa-xa-hoi', 1, '', 1, 1),
(60, 2, 1, 'Tin nội chính', '/index.php?language=vi&nv=news&amp;op=tin-noi-chinh', '', '', '', 2, 12, 1, '', '6', 'news', 'tin-noi-chinh', 1, '', 1, 1),
(59, 2, 1, 'Điều hành', '/index.php?language=vi&nv=news&amp;op=dieu-hanh', '', '', '', 1, 11, 1, '', '6', 'news', 'dieu-hanh', 1, '', 1, 1),
(36, 32, 2, 'Giấy phép sử dụng NukeViet', '/index.php?language=vi&nv=about&amp;op=giay-phep-su-dung-nukeviet.html', '', '', '', 4, 5, 1, '', '6', 'about', 'giay-phep-su-dung-nukeviet.html', 1, '', 1, 1),
(35, 32, 2, 'Logo và tên gọi NukeViet', '/index.php?language=vi&nv=about&amp;op=logo-va-ten-goi-nukeviet.html', '', '', '', 3, 4, 1, '', '6', 'about', 'logo-va-ten-goi-nukeviet.html', 1, '', 1, 1),
(34, 32, 2, 'Giới thiệu về NukeViet CMS', '/index.php?language=vi&nv=about&amp;op=gioi-thieu-ve-nukeviet-cms.html', '', '', '', 2, 3, 1, '', '6', 'about', 'gioi-thieu-ve-nukeviet-cms.html', 1, '', 1, 1),
(33, 32, 2, 'Giới thiệu về NukeViet', '/index.php?language=vi&nv=about&amp;op=gioi-thieu-ve-nukeviet.html', '', '', '', 1, 2, 1, '', '6', 'about', 'gioi-thieu-ve-nukeviet.html', 1, '', 1, 1),
(32, 0, 2, 'Giới thiệu', '/index.php?language=vi&nv=about', '', '', '', 1, 1, 0, '33,34,35,36,38', '6', 'about', '', 1, '', 0, 1),
(38, 32, 2, 'Yêu cầu sử dụng NukeViet 4', '/index.php?language=vi&nv=about&amp;op=Yeu-cau-su-dung-NukeViet-4.html', '', '', '', 5, 6, 1, '', '6', 'about', 'Yeu-cau-su-dung-NukeViet-4.html', 1, '', 1, 1),
(64, 2, 1, 'Đối ngoại', '/index.php?language=vi&nv=news&amp;op=doi-ngoai', '', '', '', 6, 16, 1, '', '6', 'news', 'doi-ngoai', 1, '', 1, 1),
(41, 0, 2, 'Tin Tức', '/index.php?language=vi&nv=news', '', '', '', 2, 7, 0, '42,43,44,45,46,47', '6', 'news', '', 1, '', 0, 1),
(42, 41, 2, 'Điều hành', '/index.php?language=vi&nv=news&amp;op=dieu-hanh', '', '', '', 1, 8, 1, '', '6', 'news', 'dieu-hanh', 1, '', 1, 1),
(43, 41, 2, 'Tin nội chính', '/index.php?language=vi&nv=news&amp;op=tin-noi-chinh', '', '', '', 2, 9, 1, '', '6', 'news', 'tin-noi-chinh', 1, '', 1, 1),
(44, 41, 2, 'Văn hóa - Xã hội', '/index.php?language=vi&nv=news&amp;op=van-hoa-xa-hoi', '', '', '', 3, 10, 1, '', '6', 'news', 'van-hoa-xa-hoi', 1, '', 1, 1),
(45, 41, 2, 'Kinh tế', '/index.php?language=vi&nv=news&amp;op=kinh-te', '', '', '', 4, 11, 1, '', '6', 'news', 'kinh-te', 1, '', 1, 1),
(46, 41, 2, 'Truyên truyền', '/index.php?language=vi&nv=news&amp;op=truyen-truyen', '', '', '', 5, 12, 1, '', '6', 'news', 'truyen-truyen', 1, '', 1, 1),
(47, 41, 2, 'Đối ngoại', '/index.php?language=vi&nv=news&amp;op=doi-ngoai', '', '', '', 6, 13, 1, '', '6', 'news', 'doi-ngoai', 1, '', 1, 1),
(51, 0, 2, 'Thành viên', '/index.php?language=vi&nv=users', '', '', '', 3, 14, 0, '52,53,54,55,56,57,58', '6', 'users', '', 1, '', 0, 1),
(52, 51, 2, 'Đăng nhập', '/index.php?language=vi&nv=users&amp;op=login', '', '', '', 1, 15, 1, '', '6', 'users', 'login', 1, '', 1, 1),
(53, 51, 2, 'Đăng ký', '/index.php?language=vi&nv=users&amp;op=register', '', '', '', 2, 16, 1, '', '6', 'users', 'register', 1, '', 1, 1),
(54, 51, 2, 'Khôi phục mật khẩu', '/index.php?language=vi&nv=users&amp;op=lostpass', '', '', '', 3, 17, 1, '', '6', 'users', 'lostpass', 1, '', 1, 1),
(55, 51, 2, 'Thiết lập tài khoản', '/index.php?language=vi&nv=users&amp;op=editinfo', '', '', '', 4, 18, 1, '', '6', 'users', 'editinfo', 1, '', 1, 1),
(56, 51, 2, 'Danh sách thành viên', '/index.php?language=vi&nv=users&amp;op=memberlist', '', '', '', 5, 19, 1, '', '6', 'users', 'memberlist', 1, '', 1, 1),
(57, 51, 2, 'Quản lý nhóm', '/index.php?language=vi&nv=users&amp;op=groups', '', '', '', 6, 20, 1, '', '6', 'users', 'groups', 1, '', 1, 1),
(58, 51, 2, 'Thoát', '/index.php?language=vi&nv=users&amp;op=logout', '', '', '', 7, 21, 1, '', '6', 'users', 'logout', 1, '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_modfuncs`
--

CREATE TABLE IF NOT EXISTS `tms_vi_modfuncs` (
  `func_id` mediumint(8) unsigned NOT NULL,
  `func_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_custom_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `func_site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `in_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT '0',
  `in_submenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subweight` smallint(2) unsigned NOT NULL DEFAULT '1',
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_modfuncs`
--

INSERT INTO `tms_vi_modfuncs` (`func_id`, `func_name`, `alias`, `func_custom_name`, `func_site_title`, `in_module`, `show_func`, `in_submenu`, `subweight`, `setting`) VALUES
(1, 'main', 'main', 'Main', '', 'about', 1, 0, 1, ''),
(2, 'sitemap', 'sitemap', 'Sitemap', '', 'about', 0, 0, 0, ''),
(3, 'rss', 'rss', 'Rss', '', 'about', 0, 0, 0, ''),
(4, 'main', 'main', 'Main', '', 'news', 1, 0, 1, ''),
(5, 'viewcat', 'viewcat', 'Viewcat', '', 'news', 1, 0, 2, ''),
(6, 'topic', 'topic', 'Topic', '', 'news', 1, 0, 3, ''),
(7, 'content', 'content', 'Content', '', 'news', 1, 1, 4, ''),
(8, 'detail', 'detail', 'Detail', '', 'news', 1, 0, 5, ''),
(9, 'tag', 'tag', 'Tag', '', 'news', 1, 0, 6, ''),
(10, 'rss', 'rss', 'Rss', '', 'news', 1, 1, 7, ''),
(11, 'search', 'search', 'Search', '', 'news', 1, 1, 8, ''),
(12, 'groups', 'groups', 'Groups', '', 'news', 1, 0, 9, ''),
(13, 'author', 'author', 'Author', '', 'news', 1, 0, 10, ''),
(14, 'sitemap', 'sitemap', 'Sitemap', '', 'news', 0, 0, 0, ''),
(15, 'print', 'print', 'Print', '', 'news', 0, 0, 0, ''),
(16, 'rating', 'rating', 'Rating', '', 'news', 0, 0, 0, ''),
(17, 'savefile', 'savefile', 'Savefile', '', 'news', 0, 0, 0, ''),
(18, 'sendmail', 'sendmail', 'Sendmail', '', 'news', 0, 0, 0, ''),
(19, 'instant-rss', 'instant-rss', 'Instant Articles RSS', '', 'news', 0, 0, 0, ''),
(20, 'main', 'main', 'Main', '', 'users', 1, 0, 1, ''),
(21, 'login', 'login', 'Đăng nhập', '', 'users', 1, 1, 2, ''),
(22, 'register', 'register', 'Đăng ký', '', 'users', 1, 1, 3, ''),
(23, 'lostpass', 'lostpass', 'Khôi phục mật khẩu', '', 'users', 1, 1, 4, ''),
(24, 'active', 'active', 'Kích hoạt tài khoản', '', 'users', 1, 0, 5, ''),
(25, 'lostactivelink', 'lostactivelink', 'Lostactivelink', '', 'users', 1, 0, 6, ''),
(26, 'editinfo', 'editinfo', 'Thiết lập tài khoản', '', 'users', 1, 1, 7, ''),
(27, 'memberlist', 'memberlist', 'Danh sách thành viên', '', 'users', 1, 1, 8, ''),
(28, 'groups', 'groups', 'Quản lý nhóm', '', 'users', 1, 1, 9, ''),
(29, 'avatar', 'avatar', 'Avatar', '', 'users', 1, 0, 10, ''),
(30, 'logout', 'logout', 'Thoát', '', 'users', 1, 1, 11, ''),
(31, 'oauth', 'oauth', 'Oauth', '', 'users', 0, 0, 0, ''),
(32, 'main', 'main', 'Main', '', 'contact', 1, 0, 1, ''),
(33, 'main', 'main', 'Main', '', 'statistics', 1, 0, 1, ''),
(34, 'allreferers', 'allreferers', 'Theo đường dẫn đến site', '', 'statistics', 1, 1, 2, ''),
(35, 'allcountries', 'allcountries', 'Theo quốc gia', '', 'statistics', 1, 1, 3, ''),
(36, 'allbrowsers', 'allbrowsers', 'Theo trình duyệt', '', 'statistics', 1, 1, 4, ''),
(37, 'allos', 'allos', 'Theo hệ điều hành', '', 'statistics', 1, 1, 5, ''),
(38, 'allbots', 'allbots', 'Theo máy chủ tìm kiếm', '', 'statistics', 1, 1, 6, ''),
(39, 'referer', 'referer', 'Đường dẫn đến site theo tháng', '', 'statistics', 1, 0, 7, ''),
(40, 'main', 'main', 'Main', '', 'voting', 1, 0, 1, ''),
(41, 'main', 'main', 'Main', '', 'banners', 1, 0, 1, ''),
(42, 'addads', 'addads', 'Addads', '', 'banners', 1, 0, 2, ''),
(43, 'clientinfo', 'clientinfo', 'Clientinfo', '', 'banners', 1, 0, 3, ''),
(44, 'stats', 'stats', 'Stats', '', 'banners', 1, 0, 4, ''),
(45, 'cledit', 'cledit', 'Cledit', '', 'banners', 0, 0, 0, ''),
(46, 'click', 'click', 'Click', '', 'banners', 0, 0, 0, ''),
(47, 'clinfo', 'clinfo', 'Clinfo', '', 'banners', 0, 0, 0, ''),
(48, 'logininfo', 'logininfo', 'Logininfo', '', 'banners', 0, 0, 0, ''),
(49, 'viewmap', 'viewmap', 'Viewmap', '', 'banners', 0, 0, 0, ''),
(50, 'main', 'main', 'Main', '', 'seek', 1, 0, 1, ''),
(51, 'main', 'main', 'Main', '', 'feeds', 1, 0, 1, ''),
(52, 'main', 'main', 'Main', '', 'page', 1, 0, 1, ''),
(53, 'sitemap', 'sitemap', 'Sitemap', '', 'page', 0, 0, 0, ''),
(54, 'rss', 'rss', 'Rss', '', 'page', 0, 0, 0, ''),
(55, 'main', 'main', 'Main', '', 'comment', 1, 0, 1, ''),
(56, 'post', 'post', 'Post', '', 'comment', 1, 0, 2, ''),
(57, 'like', 'like', 'Like', '', 'comment', 1, 0, 3, ''),
(58, 'delete', 'delete', 'Delete', '', 'comment', 1, 0, 4, ''),
(59, 'down', 'down', 'Down', '', 'comment', 1, 0, 5, ''),
(60, 'main', 'main', 'Main', '', 'siteterms', 1, 0, 1, ''),
(61, 'rss', 'rss', 'Rss', '', 'siteterms', 1, 0, 2, ''),
(62, 'sitemap', 'sitemap', 'Sitemap', '', 'siteterms', 0, 0, 0, ''),
(63, 'main', 'main', 'Main', '', 'two-step-verification', 1, 0, 1, ''),
(64, 'confirm', 'confirm', 'Confirm', '', 'two-step-verification', 1, 0, 2, ''),
(65, 'setup', 'setup', 'Setup', '', 'two-step-verification', 1, 0, 3, ''),
(66, 'down', 'down', 'Down', '', 'download', 1, 0, 4, ''),
(67, 'main', 'main', 'Main', '', 'download', 1, 1, 1, ''),
(68, 'report', 'report', 'Report', '', 'download', 1, 0, 6, ''),
(69, 'rss', 'rss', 'Rss', '', 'download', 0, 0, 0, ''),
(70, 'search', 'search', 'Search', '', 'download', 1, 1, 7, ''),
(71, 'sitemap', 'sitemap', 'Sitemap', '', 'download', 0, 0, 0, ''),
(72, 'tag', 'tag', 'Tag', '', 'download', 1, 0, 8, ''),
(73, 'upload', 'upload', 'Upload', '', 'download', 1, 1, 5, ''),
(74, 'viewcat', 'viewcat', 'Viewcat', '', 'download', 1, 0, 2, ''),
(75, 'viewfile', 'viewfile', 'Viewfile', '', 'download', 1, 0, 3, ''),
(76, 'area', 'area', 'Area', '', 'laws', 1, 1, 4, ''),
(77, 'cat', 'cat', 'Cat', '', 'laws', 1, 1, 5, ''),
(78, 'detail', 'detail', 'Detail', '', 'laws', 1, 1, 2, ''),
(79, 'main', 'main', 'Main', '', 'laws', 1, 1, 1, ''),
(80, 'rss', 'rss', 'Rss', '', 'laws', 0, 0, 0, ''),
(81, 'search', 'search', 'Search', '', 'laws', 1, 1, 3, ''),
(82, 'signer', 'signer', 'Signer', '', 'laws', 1, 1, 7, ''),
(83, 'sitemap', 'sitemap', 'Sitemap', '', 'laws', 0, 0, 0, ''),
(84, 'subject', 'subject', 'Subject', '', 'laws', 1, 1, 6, ''),
(85, 'main', 'main', 'Main', '', 'organs', 1, 0, 1, ''),
(86, 'person', 'person', 'Person', '', 'organs', 1, 0, 3, ''),
(87, 'vieworg', 'vieworg', 'Vieworg', '', 'organs', 1, 0, 2, ''),
(88, 'viewper', 'viewper', 'Viewper', '', 'organs', 0, 0, 0, ''),
(89, 'viewsearch', 'viewsearch', 'Viewsearch', '', 'organs', 1, 0, 4, ''),
(90, 'detail', 'detail', 'Detail', '', 'weblinks', 1, 0, 3, ''),
(91, 'main', 'main', 'Main', '', 'weblinks', 1, 0, 1, ''),
(92, 'reportlink', 'reportlink', 'Reportlink', '', 'weblinks', 0, 0, 0, ''),
(93, 'rss', 'rss', 'Rss', '', 'weblinks', 0, 0, 0, ''),
(94, 'sitemap', 'sitemap', 'Sitemap', '', 'weblinks', 0, 0, 0, ''),
(95, 'viewcat', 'viewcat', 'Viewcat', '', 'weblinks', 1, 0, 2, ''),
(96, 'visitlink', 'visitlink', 'Visitlink', '', 'weblinks', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_modthemes`
--

CREATE TABLE IF NOT EXISTS `tms_vi_modthemes` (
  `func_id` mediumint(8) DEFAULT NULL,
  `layout` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_modthemes`
--

INSERT INTO `tms_vi_modthemes` (`func_id`, `layout`, `theme`) VALUES
(0, 'left-main-right', 'default'),
(0, 'main', 'mobile_default'),
(1, 'left-main', 'default'),
(1, 'main', 'mobile_default'),
(4, 'left-main', 'default'),
(4, 'main', 'mobile_default'),
(5, 'left-main', 'default'),
(5, 'main', 'mobile_default'),
(6, 'left-main', 'default'),
(6, 'main', 'mobile_default'),
(7, 'left-main', 'default'),
(7, 'main', 'mobile_default'),
(8, 'left-main', 'default'),
(8, 'main', 'mobile_default'),
(9, 'left-main', 'default'),
(9, 'main', 'mobile_default'),
(10, 'left-main', 'default'),
(11, 'left-main', 'default'),
(11, 'main', 'mobile_default'),
(12, 'left-main', 'default'),
(12, 'main', 'mobile_default'),
(13, 'left-main', 'default'),
(13, 'main', 'mobile_default'),
(20, 'left-main', 'default'),
(20, 'main', 'mobile_default'),
(21, 'left-main', 'default'),
(21, 'main', 'mobile_default'),
(22, 'left-main', 'default'),
(22, 'main', 'mobile_default'),
(23, 'left-main', 'default'),
(23, 'main', 'mobile_default'),
(24, 'left-main', 'default'),
(24, 'main', 'mobile_default'),
(25, 'left-main', 'default'),
(25, 'main', 'mobile_default'),
(26, 'left-main', 'default'),
(26, 'main', 'mobile_default'),
(27, 'left-main', 'default'),
(27, 'main', 'mobile_default'),
(28, 'left-main', 'default'),
(28, 'main', 'mobile_default'),
(29, 'left-main', 'default'),
(30, 'left-main', 'default'),
(30, 'main', 'mobile_default'),
(32, 'left-main', 'default'),
(32, 'main', 'mobile_default'),
(33, 'left-main', 'default'),
(33, 'main', 'mobile_default'),
(34, 'left-main', 'default'),
(34, 'main', 'mobile_default'),
(35, 'left-main', 'default'),
(35, 'main', 'mobile_default'),
(36, 'left-main', 'default'),
(36, 'main', 'mobile_default'),
(37, 'left-main', 'default'),
(37, 'main', 'mobile_default'),
(38, 'left-main', 'default'),
(38, 'main', 'mobile_default'),
(39, 'left-main', 'default'),
(39, 'main', 'mobile_default'),
(40, 'left-main', 'default'),
(40, 'main', 'mobile_default'),
(41, 'left-main', 'default'),
(41, 'main', 'mobile_default'),
(42, 'left-main', 'default'),
(42, 'main', 'mobile_default'),
(43, 'left-main', 'default'),
(43, 'main', 'mobile_default'),
(44, 'left-main', 'default'),
(44, 'main', 'mobile_default'),
(50, 'left-main', 'default'),
(50, 'main', 'mobile_default'),
(51, 'left-main', 'default'),
(51, 'main', 'mobile_default'),
(52, 'left-main', 'default'),
(52, 'main', 'mobile_default'),
(55, 'left-main', 'default'),
(55, 'main', 'mobile_default'),
(56, 'left-main', 'default'),
(56, 'main', 'mobile_default'),
(57, 'left-main', 'default'),
(57, 'main', 'mobile_default'),
(58, 'left-main', 'default'),
(58, 'main', 'mobile_default'),
(59, 'left-main', 'default'),
(60, 'left-main', 'default'),
(60, 'main', 'mobile_default'),
(61, 'left-main', 'default'),
(61, 'main', 'mobile_default'),
(63, 'left-main', 'default'),
(63, 'main', 'mobile_default'),
(64, 'left-main', 'default'),
(64, 'main', 'mobile_default'),
(65, 'left-main', 'default'),
(65, 'main', 'mobile_default'),
(66, 'left-main', 'default'),
(66, 'main', 'mobile_default'),
(67, 'left-main', 'default'),
(67, 'main', 'mobile_default'),
(68, 'left-main', 'default'),
(68, 'main', 'mobile_default'),
(69, 'left-main-right', 'default'),
(70, 'left-main', 'default'),
(70, 'main', 'mobile_default'),
(71, 'left-main-right', 'default'),
(72, 'left-main', 'default'),
(72, 'main', 'mobile_default'),
(73, 'left-main', 'default'),
(73, 'main', 'mobile_default'),
(74, 'left-main', 'default'),
(74, 'main', 'mobile_default'),
(75, 'left-main', 'default'),
(75, 'main', 'mobile_default'),
(76, 'left-main', 'default'),
(76, 'main', 'mobile_default'),
(77, 'left-main', 'default'),
(77, 'main', 'mobile_default'),
(78, 'left-main', 'default'),
(78, 'main', 'mobile_default'),
(79, 'left-main', 'default'),
(79, 'main', 'mobile_default'),
(80, 'left-main-right', 'default'),
(81, 'left-main', 'default'),
(81, 'main', 'mobile_default'),
(82, 'left-main', 'default'),
(82, 'main', 'mobile_default'),
(83, 'left-main-right', 'default'),
(84, 'left-main', 'default'),
(84, 'main', 'mobile_default'),
(85, 'left-main', 'default'),
(85, 'main', 'mobile_default'),
(86, 'left-main', 'default'),
(86, 'main', 'mobile_default'),
(87, 'left-main', 'default'),
(87, 'main', 'mobile_default'),
(88, 'left-main-right', 'default'),
(89, 'left-main', 'default'),
(89, 'main', 'mobile_default'),
(90, 'left-main', 'default'),
(90, 'main', 'mobile_default'),
(91, 'left-main', 'default'),
(91, 'main', 'mobile_default'),
(92, 'left-main-right', 'default'),
(93, 'left-main-right', 'default'),
(94, 'left-main-right', 'default'),
(95, 'left-main', 'default'),
(95, 'main', 'mobile_default'),
(96, 'left-main-right', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_modules`
--

CREATE TABLE IF NOT EXISTS `tms_vi_modules` (
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_data` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_upload` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `set_time` int(11) unsigned NOT NULL DEFAULT '0',
  `main_file` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_file` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rss` tinyint(4) NOT NULL DEFAULT '1',
  `sitemap` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_modules`
--

INSERT INTO `tms_vi_modules` (`title`, `module_file`, `module_data`, `module_upload`, `module_theme`, `custom_title`, `site_title`, `admin_title`, `set_time`, `main_file`, `admin_file`, `theme`, `mobile`, `description`, `keywords`, `groups_view`, `weight`, `act`, `admins`, `rss`, `sitemap`) VALUES
('about', 'page', 'about', 'about', 'page', 'Giới thiệu', '', '', 1629627264, 1, 1, '', '', '', '', '6', 1, 1, '', 1, 1),
('news', 'news', 'news', 'news', 'news', 'Tin Tức', '', '', 1629627264, 1, 1, '', '', '', '', '6', 2, 1, '', 1, 1),
('users', 'users', 'users', 'users', 'users', 'Thành viên', '', 'Tài khoản', 1629627264, 1, 1, '', '', '', '', '6', 3, 1, '', 0, 1),
('contact', 'contact', 'contact', 'contact', 'contact', 'Liên hệ', '', '', 1629627264, 1, 1, '', '', '', '', '6', 4, 1, '', 0, 1),
('statistics', 'statistics', 'statistics', 'statistics', 'statistics', 'Thống kê', '', '', 1629627264, 1, 1, '', '', '', 'online, statistics', '6', 5, 1, '', 0, 1),
('voting', 'voting', 'voting', 'voting', 'voting', 'Thăm dò ý kiến', '', '', 1629627264, 1, 1, '', '', '', '', '6', 6, 1, '', 1, 1),
('banners', 'banners', 'banners', 'banners', 'banners', 'Quảng cáo', '', '', 1629627264, 1, 1, '', '', '', '', '6', 7, 0, '', 0, 1),
('seek', 'seek', 'seek', 'seek', 'seek', 'Tìm kiếm', '', '', 1629627264, 1, 0, '', '', '', '', '6', 8, 1, '', 0, 1),
('menu', 'menu', 'menu', 'menu', 'menu', 'Menu Site', '', '', 1629627264, 0, 1, '', '', '', '', '6', 9, 1, '', 0, 1),
('feeds', 'feeds', 'feeds', 'feeds', 'feeds', 'RSS-feeds', '', '', 1629627264, 1, 1, '', '', '', '', '6', 10, 1, '', 0, 1),
('page', 'page', 'page', 'page', 'page', 'Page', '', '', 1629627264, 1, 1, '', '', '', '', '6', 11, 1, '', 1, 0),
('comment', 'comment', 'comment', 'comment', 'comment', 'Bình luận', '', 'Quản lý bình luận', 1629627264, 0, 1, '', '', '', '', '6', 12, 1, '', 0, 1),
('siteterms', 'page', 'siteterms', 'siteterms', 'page', 'Điều khoản sử dụng', '', '', 1629627264, 1, 1, '', '', '', '', '6', 13, 1, '', 1, 1),
('freecontent', 'freecontent', 'freecontent', 'freecontent', 'freecontent', 'Giới thiệu sản phẩm', '', '', 1629627264, 0, 1, '', '', '', '', '6', 14, 1, '', 0, 1),
('two-step-verification', 'two-step-verification', 'two_step_verification', 'two_step_verification', 'two-step-verification', 'Xác thực hai bước', '', '', 1629627264, 1, 0, '', '', '', '', '6', 15, 1, '', 0, 1),
('audio', 'audio', 'audio', 'audio', 'audio', 'Audio', '', '', 1629630716, 0, 1, '', '', '', '', '6', 16, 1, '', 0, 0),
('download', 'download', 'download', 'download', 'download', 'Download', '', '', 1629631617, 1, 1, '', '', '', '', '6', 17, 1, '', 1, 1),
('laws', 'laws', 'laws', 'laws', 'laws', 'Văn bản pháp luật', '', '', 1629631623, 1, 1, '', '', '', '', '6', 18, 1, '', 1, 1),
('organs', 'organs', 'organs', 'organs', 'organs', 'Cán bộ', '', '', 1629631635, 1, 1, '', '', '', '', '6', 19, 1, '', 0, 0),
('weblinks', 'weblinks', 'weblinks', 'weblinks', 'weblinks', 'Liên kết', '', '', 1629631647, 1, 1, '', '', '', '', '6', 20, 1, '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_news_1`
--

CREATE TABLE IF NOT EXISTS `tms_vi_news_1` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_news_1`
--

INSERT INTO `tms_vi_news_1` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(1, 1, '1', 0, 1, '', 0, 1552645084, 1615343704, 1, 0, 1552645080, 0, 2, 'Kế hoạch thực hiện Tháng hành động vì người cao tuổi Việt Nam trên địa bàn tỉnh Bình Dương năm 2019', 'ke-hoach-thuc-hien-thang-hanh-dong-vi-nguoi-cao-tuoi-viet-nam-tren-dia-ban-tinh-binh-duong-nam-2019', 'TTĐT - ​UBND tỉnh vừa ban hành Kế hoạch thực hiện Tháng hành động vì người cao tuổi Việt Nam trên địa bàn tỉnh Bình Dương năm 2019 (gọi tắt là Kế hoạch).', '2019_03/nhat-nhi-key-24092017152850-key-28062018225343-key-14032019173325.jpg', '', 1, 1, '6', 1, 0, 92, 2, 5, 1, 0, '', 0),
(2, 1, '1', 0, 1, '', 0, 1552645115, 1552645115, 1, 0, 1552645115, 0, 1, 'Đăng ký nghĩa vụ quân sự và phương tiện kỹ thuật thuộc diện huy động bổ sung cho lực lượng thường trực của Quân đội năm 2019', 'dang-ky-nghia-vu-quan-su-va-phuong-tien-ky-thuat-thuoc-dien-huy-dong-bo-sung-cho-luc-luong-thuong-truc-cua-quan-doi-nam-2019', 'TTĐT - ​UBND tỉnh vừa ban hành Quyết định về việc  đăng ký  n ghĩa vụ quân sự và  p hương tiện kỹ thuật   thuộc diện huy động bổ sung cho lực lượng thường trực  của Quân đội năm 2019 .', '2019_03/t4t-key-14032019173933.jpg', '', 2, 1, '4', 1, 0, 68, 0, 5, 1, 0, '', 0),
(3, 1, '1', 0, 1, '', 0, 1552645091, 1629628508, 1, 0, 1552645080, 0, 2, 'Trao Giải thưởng Môi trường tỉnh Bình Dương năm 2019', 'trao-giai-thuong-moi-truong-tinh-binh-duong-nam-2019', 'TTĐT - ​UBND tỉnh vừa ban hành Kế hoạch tổ chức trao Giải thưởng Môi trường tỉnh Bình Dương năm 2019.', '2019_03/chutich2-key-15072017074617-key-10082017085236.jpg', '', 1, 1, '4', 1, 0, 57, 0, 0, 0, 0, '', 0),
(4, 1, '1', 0, 1, '', 0, 1552645115, 1629628350, 1, 0, 1552645080, 0, 2, 'Phối hợp xây dựng Hệ thống thông tin phục vụ họp và xử lý công việc của Chính phủ', 'phoi-hop-xay-dung-he-thong-thong-tin-phuc-vu-hop-va-xu-ly-cong-viec-cua-chinh-phu', 'TTĐT - ​UBND tỉnh vừa ban hành văn bản về việc phối hợp xây dựng Hệ thống thông tin phục vụ họp và xử lý công việc của Chính phủ.', '2019_03/baochi2-key-22022019162838.jpg', '', 1, 1, '4', 1, 0, 47, 0, 0, 0, 0, '', 0),
(5, 1, '1', 0, 1, '', 0, 1552645113, 1629628487, 1, 0, 1552645080, 0, 2, 'Kế hoạch hoạt động và kinh phí năm 2019 của Dự án &quot;Quỹ toàn cầu Phòng, chống HIV&#x002F;AIDS giai đoạn 2018-2020&quot;', 'ke-hoach-hoat-dong-va-kinh-phi-nam-2019-cua-du-an-quy-toan-cau-phong-chong-hiv-aids-giai-doan-2018-2020', 'TTĐT - ​UBND tỉnh vừa ban hành Kế hoạch hoạt động và kinh phí năm 2019 của Dự án &quot;Quỹ toàn cầu Phòng, chống HIV/AIDS giai đoạn 2018 – 2020&quot; do Quỹ toàn cầu Phòng, chống AIDS, Lao và Sốt rét tài trợ (gọi tắt là Kế hoạch).', '2019_03/baochi2-key-22022019162838.jpg', '', 1, 1, '4', 1, 0, 56, 0, 0, 0, 0, '', 0),
(6, 1, '1', 0, 1, '', 0, 1552645099, 1629628527, 1, 0, 1552645080, 0, 2, 'Kế hoạch hoạt động kiểm soát thủ tục hành chính năm 2019 trên địa bàn tỉnh Bình Dương', 'ke-hoach-hoat-dong-kiem-soat-thu-tuc-hanh-chinh-nam-2019-tren-dia-ban-tinh-binh-duong', 'TTĐT - ​UBND tỉnh vừa ban hành Kế hoạch hoạt động kiểm soát thủ tục hành chính (TTHC) năm 2019 trên địa bàn tỉnh Bình Dương (gọi tắt là Kế hoạch).', '2019_03/bcd138va389-2.jpg', '', 1, 1, '4', 1, 0, 48, 0, 0, 0, 0, '', 0),
(7, 1, '1', 0, 1, '', 0, 1552645135, 1629628325, 1, 0, 1552645080, 0, 2, 'Hướng dẫn trình tự thực hiện xã hội hóa theo Nghị định 69&#x002F;2008&#x002F;NĐ-CP, 59&#x002F;2014&#x002F;NĐ-CP trên địa bàn tỉnh Bình Dương', 'huong-dan-trinh-tu-thuc-hien-xa-hoi-hoa-theo-nghi-dinh-69-2008-nd-cp-59-2014-nd-cp-tren-dia-ban-tinh-binh-duong', 'TTĐT - ​UBND tỉnh vừa ban hành văn bản về việc hướng dẫn trình tự thực hiện xã hội hóa theo Nghị định 69/2008/NĐ-CP, 59/2014/NĐ-CP trên địa bàn tỉnh Bình Dương.', '2021_08/mhd.jpg', '', 1, 1, '4', 1, 0, 40, 0, 0, 0, 0, '', 0),
(8, 1, '1', 0, 1, '', 0, 1552645113, 1629628369, 1, 0, 1552645080, 0, 2, 'Chăm sóc vì sự phát triển toàn diện trẻ em trong những năm đầu đời tại gia đình và cộng đồng tỉnh Bình Dương giai đoạn 2019 - 2025', 'cham-soc-vi-su-phat-trien-toan-dien-tre-em-trong-nhung-nam-dau-doi-tai-gia-dinh-va-cong-dong-tinh-binh-duong-giai-doan-2019-2025', 'TTĐT - ​UBND tỉnh vừa ban hành Kế hoạch thực hiện Đề án chăm sóc vì sự phát triển toàn diện trẻ em trong những năm đầu đời tại gia đình và cộng đồng tỉnh Bình Dương giai đoạn 2019 – 2025 (gọi tắt Kế hoạch).', '2019_03/49140256_348682122629755_6867617487572172800_n.jpg', '', 1, 1, '4', 1, 0, 53, 0, 0, 0, 0, '', 0),
(9, 1, '1', 0, 1, '', 0, 1552645088, 1552645088, 1, 0, 1552645088, 0, 1, 'Chương trình làm việc tháng 3&#x002F;2019 của UBND tỉnh Bình Dương', 'chuong-trinh-lam-viec-thang-3-2019-cua-ubnd-tinh-binh-duong', 'TTĐT - ​UBND tỉnh vừa ban hành Thông báo về chương trình làm việc tháng 3&#x002F;2019 của UBND tỉnh.', '2019_03/tai-xuong-key-02072018092314-key-04122018172356-key-05032019164044.jpg', '', 2, 1, '4', 1, 0, 57, 0, 0, 0, 0, '', 0),
(10, 1, '1', 0, 1, '', 0, 1552645140, 1629628260, 1, 0, 1552645140, 0, 2, 'Thu thập dữ liệu tài nguyên và môi trường năm 2019 trên địa bàn tỉnh Bình Dương', 'thu-thap-du-lieu-tai-nguyen-va-moi-truong-nam-2019-tren-dia-ban-tinh-binh-duong', 'TTĐT - ​UBND tỉnh vừa ban hành Kế hoạch thu thập dữ liệu tài nguyên và môi trường năm 2019 trên địa bàn tỉnh Bình Dương.', '2021_08/mhd.jpg', '', 1, 1, '4', 1, 0, 62, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_news_2`
--

CREATE TABLE IF NOT EXISTS `tms_vi_news_2` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_news_2`
--

INSERT INTO `tms_vi_news_2` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(11, 2, '2', 0, 1, '', 0, 1552645388, 1629628544, 1, 0, 1552645380, 0, 2, 'Lấy ý kiến đề nghị tặng Huân chương Lao động hạng Ba', 'lay-y-kien-de-nghi-tang-huan-chuong-lao-dong-hang-ba', 'TTĐT - ​Để đảm bảo việc xét tặng Huân chương Lao động đúng quy trình, Ban Thi đua - Khen thưởng tỉnh Bình Dương (cơ quan Thường trực Hội đồng thi đua - Kh​en thưởng tỉnh) thông báo lấy ý kiến rộng rãi trong nhân dân về việc đề nghị tặng Huân chương Lao động hạng Ba. ​', '2019_03/baochi1-key-22022019162746.jpg', '', 1, 1, '4', 1, 0, 50, 0, 0, 0, 0, '', 0),
(12, 2, '2', 0, 1, '', 0, 1552645406, 1552645406, 1, 0, 1552645406, 0, 1, 'Bình Dương ra quân tuyên truyền phòng, chống ma túy và thực hiện phong trào “Toàn dân đoàn kết xây dựng đời sống văn hóa”', 'binh-duong-ra-quan-tuyen-truyen-phong-chong-ma-tuy-va-thuc-hien-phong-trao-toan-dan-doan-ket-xay-dung-doi-song-van-hoa', 'TTĐT - ​Sáng 09-3, tại Công viên phường Phú Cường, TP.Thủ Dầu Một, Cục Cảnh sát điều tra tội phạm về ma túy-Bộ Công an, Văn phòng Thường t​rực Ban chỉ đạo Trung ương phong trào &quot;Toàn dân đoàn kết xây dựng đời sống văn hóa&quot; và UBND tỉnh Bình Dương đã phối hợp tổ chức Lễ ra quân tuyên truyền phòng, chống ma túy và thực hiện phong trào &quot;Toàn dân đoàn kết xây dựng đời sống văn hóa&quot; năm 2019. ​', '2019_03/pcmatuy2-key-09032019113700.jpg', '', 2, 1, '4', 1, 0, 55, 0, 0, 0, 0, '', 0),
(13, 2, '2', 0, 1, '', 0, 1552645377, 1552645377, 1, 0, 1552645377, 0, 1, 'Ủy ban Đối ngoại của Quốc hội làm việc với tỉnh Bình Dương', 'uy-ban-doi-ngoai-cua-quoc-hoi-lam-viec-voi-tinh-binh-duong', 'TTĐT - ​Chiều 25-02, tại Trung tâm Hành chính tỉnh Bình Dương, ông Trần Thanh Liêm – Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh chủ trì tiếp và làm việc với Đoàn công tác Ủy ban Đối ngoại của Quốc hội do ông Nguyễn Mạnh Tiến – Phó Chủ nhiệm Ủy ban Đối ngoại của Quốc hội làm Trưởng đoàn giám sát việc thực hiện chính sách, pháp luật trong công tác quản lý người nước ngoài &#40;NNN&#41; tại Bình Dương.', '2019_03/giamsatnuocngoai-1-key-26022019094458.jpg', '', 2, 1, '4', 1, 0, 54, 0, 0, 0, 0, '', 0),
(14, 2, '2', 0, 1, '', 0, 1552645380, 1552645380, 1, 0, 1552645380, 0, 1, 'Ủy ban Pháp luật của Quốc hội làm việc với tỉnh Bình Dương', 'uy-ban-phap-luat-cua-quoc-hoi-lam-viec-voi-tinh-binh-duong', 'TTĐT - ​Sáng 25-02, tại Trung tâm Hành chính tỉnh Bình Dương, Đoàn công tác Ủy ban Pháp luật của Quốc hội do ông Nguyễn Khắc Định - Ủy viên Trung ương Đảng, Ủy viên Ủy ban Thường vụ Quốc hội, Chủ nhiệm Ủy ban Pháp luật của Quốc hội làm Trưởng đoàn đã khảo sát việc th​ực hiện một số quy định của Luật Tổ chức chính quyền địa phương, Luật Cán bộ, công chức và Luật Viên chức tại tỉnh Bình Dương.​', '2019_03/ubpl1-key-25022019163750.jpg', '', 2, 1, '4', 1, 0, 58, 0, 0, 0, 0, '', 0),
(15, 2, '2', 0, 1, '', 0, 1552645387, 1552645387, 1, 0, 1552645387, 0, 1, 'Ông Nguyễn Văn Lộc giữ chức Chủ tịch Ủy ban MTTQ Việt Nam tỉnh Bình Dương', 'ong-nguyen-van-loc-giu-chuc-chu-tich-uy-ban-mttq-viet-nam-tinh-binh-duong', 'TTĐT - ​Sáng 21-02, tại TP.Th​ủ Dầu Một, Ủy ban MTTQ Việt Nam tỉnh Bình Dương đã tổ chức Hội nghị lần thứ XIII, nhiệm kỳ 2014-2019. ​', '2019_03/mt3-key-21022019163150.jpg', '', 2, 1, '4', 1, 0, 50, 0, 0, 0, 0, '', 0),
(16, 2, '2', 0, 1, '', 0, 1552645365, 1552645365, 1, 0, 1552645365, 0, 1, 'Số điện thoại đường dây nóng bảo đảm trật tự an toàn giao thông dịp nghỉ Tết Nguyên đán Kỷ Hợi và mùa Lễ hội Xuân 2019', 'so-dien-thoai-duong-day-nong-bao-dam-trat-tu-an-toan-giao-thong-dip-nghi-tet-nguyen-dan-ky-hoi-va-mua-le-hoi-xuan-2019', 'TTĐT - ​Ủy ban An toàn giao thông Quốc gia thông báo số điện thoại đường dây nóng để tiếp nhận các ý kiến phản ánh của người dân về hoạt động vận tải, tình hình trật tự an toàn giao thông &#40;TTATGT&#41; xảy ra trong dịp nghỉ Tết Nguyên đán Kỷ Hợi và mùa Lễ hội Xuân 2019.', 'https://www.binhduong.gov.vn/Style Library/LacViet/CMS2013/Images/newsdefault.jpg', '', 3, 1, '4', 1, 0, 43, 0, 0, 0, 0, '', 0),
(17, 2, '2', 0, 1, '', 0, 1552645422, 1552645422, 1, 0, 1552645422, 0, 1, 'Tổng kết công tác kiểm tra, giám sát và thi hành kỷ luật Đảng năm 2018', 'tong-ket-cong-tac-kiem-tra-giam-sat-va-thi-hanh-ky-luat-dang-nam-2018', 'TTĐT - ​Sáng 29-01, tại Trung tâm Hành chính tỉnh Bình Dương, Ủy ban Kiểm tra Tỉnh ủy đã tổ chức Hội nghị tổng kết công tác kiểm tra, giám sát và thi hành kỷ l​uật Đảng năm 2018; triển khai phương hướng, nhiệm vụ năm 2019. Ông Trần Văn Nam - Ủy viên Trung ương Đảng, Bí thư Tỉnh ủy, Trưởng Đoàn Đại biểu Quốc hội tỉnh dự và chỉ đạo hội nghị.​', '2019_03/ktdang1-key-29012019154951.jpg', '', 2, 1, '4', 1, 0, 47, 0, 0, 0, 0, '', 0),
(18, 2, '2', 0, 1, '', 0, 1552645377, 1552645377, 1, 0, 1552645377, 0, 1, 'Bình Dương&#x3A; Hội nghị quân chính năm 2018', 'binh-duong-hoi-nghi-quan-chinh-nam-2018', 'TTĐT - ​Sáng 21-01, tại TP.Thủ Dầu​ Một, Bộ Chỉ huy Quân sự &#40;CHQS&#41; tỉnh đã tổ chức Hội nghị quân chính năm 2018, triển khai nhiệm vụ năm 2019. Ông Trần Thanh Liêm - Phó Bí thư Tỉnh uỷ, Chủ tịch UBND tỉnh đã đến dự. ​', '2019_03/quanchinh1-key-22012019113544.jpg', '', 2, 1, '4', 1, 0, 52, 0, 0, 0, 0, '', 0),
(19, 2, '2', 0, 1, '', 0, 1552645370, 1552645370, 1, 0, 1552645370, 0, 1, 'Tổng kết công tác nội chính, cải cách tư pháp và phòng, chống tham nhũng năm 2018', 'tong-ket-cong-tac-noi-chinh-cai-cach-tu-phap-va-phong-chong-tham-nhung-nam-2018', 'TTĐT - ​Sáng 21-01, tại Trung tâm Hành chính tỉnh Bình Dương, Ban Nội chính Tỉnh ủy đã tổ chức Hội nghị tổng kết công tác nội chính, cải cách tư pháp và phòng, chống tham nhũng năm 2018; triển khai phương hướng, nhiệm vụ năm 2019. ​', '2019_03/nc3-key-22012019101855.jpg', '', 2, 1, '4', 1, 0, 58, 0, 0, 0, 0, '', 0),
(20, 2, '2', 0, 1, '', 0, 1552645386, 1552645386, 1, 0, 1552645386, 0, 1, 'Hội nghị trực tuyến toàn quốc tổng kết công tác phòng, chống tội phạm và tệ nạn xã hội năm 2018', 'hoi-nghi-truc-tuyen-toan-quoc-tong-ket-cong-tac-phong-chong-toi-pham-va-te-nan-xa-hoi-nam-2018', 'TTĐT - ​Chiều 21-01, tại Hà Nội, Ban Chỉ đạo Chương trình Quốc gia phòng, chống tội phạm của Chính phủ &#40;Ban Chỉ đạo 138&#x002F;CP&#41; và Ban Chỉ đạo Quốc gia chống buôn lậu, gian lận thương mại và hàng giả &#40;Ban Chỉ đạo 389 Quốc gia&#41; tổ chức Hội nghị trực tuyến toàn quốc tổng kết công tác năm 2018 và triển khai nhiệm vụ năm 2019. Ông Trương Hòa Bình - Ủy viên Bộ Chính trị, Phó Thủ t​​​ướng Thường trực C​​hính phủ, Trưởng Ban Chỉ đạo 138&#x002F;CP, Trưởng Ban Chỉ đạo 389 Quốc gia chủ trì hội nghị. ', '2019_03/bcd138va389-3-key-22012019100154.jpg', '', 2, 1, '4', 1, 0, 44, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_news_3`
--

CREATE TABLE IF NOT EXISTS `tms_vi_news_3` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_news_3`
--

INSERT INTO `tms_vi_news_3` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(31, 3, '3', 0, 1, '', 0, 1552645945, 1552645945, 1, 0, 1552645945, 0, 1, 'Hội Liên hiệp Phụ nữ tỉnh Bình Dương họp mặt kỷ niệm 109 năm Ngày Quốc tế Phụ nữ', 'hoi-lien-hiep-phu-nu-tinh-binh-duong-hop-mat-ky-niem-109-nam-ngay-quoc-te-phu-nu', 'TTĐT - ​Sáng 08-3, tại TP.Thủ Dầu Một, Hội Liên hiệp Phụ nữ &#40;LHPN&#41; tỉnh Bình Dương đã tổ chức Họp mặt kỷ niệm 109 năm Ngày Quốc tế Phụ nữ​ 08&#x002F;3 &#40;08&#x002F;3&#x002F;1910 - 08&#x002F;3&#x002F;2019&#41; và 1979 năm Cuộc khởi nghĩa Hai Bà Trưng. ​', '2019_03/pn1-key-09032019094543.jpg', '', 2, 1, '4', 1, 0, 65, 0, 0, 0, 0, '', 0),
(32, 3, '3', 0, 1, '', 0, 1552645985, 1552645985, 1, 0, 1552645985, 0, 1, 'Khai mạc Giải đua xe đạp nữ quốc tế Bình Dương - Cúp Biwase lần thứ IX', 'khai-mac-giai-dua-xe-dap-nu-quoc-te-binh-duong-cup-biwase-lan-thu-ix', 'TTĐT -  ​Sáng 08-3, tại Trung tâm ​Hội nghị và Triển lãm tỉnh, Sở Văn hóa, Thể thao và Du lịch phối hợp với Đài Phát thanh và Truyền hình Bình Dương, Công ty cổ phần Nước - Môi trường Bình Dương &#40;Biwase&#41; tổ chức Lễ khai mạc Giải đua xe đạp nữ quốc tế Bình Dương - Cúp Biwase lần thứ IX - năm 2019.​', '2019_03/xedapnu4-key-08032019105219.jpg', '', 2, 1, '4', 1, 0, 69, 0, 0, 0, 0, '', 0),
(33, 3, '3', 0, 1, '', 0, 1552645963, 1552645963, 1, 0, 1552645963, 0, 1, 'Phát động Chương trình Sức khỏe Việt Nam', 'phat-dong-chuong-trinh-suc-khoe-viet-nam', 'TTĐT - ​Nhân kỷ niệm 64 năm Ngày Thầy thuốc Việt Nam, ngày 27-02, dưới sự chủ trì của Thủ tướng Chính phủ Nguyễn Xuân Phúc, Bộ Y tế phối hợp với Bộ Giáo dục ​và Đào tạo, Bộ Văn hóa, Thể thao và Du lịch và các Bộ, ngành liên quan tổ chức phát động Chương trình Sức khỏe Việt Nam. Đây là một sự kiện quan trọng nhằm công bố, khởi động thực hiện Chươn​g trình Sức khỏe Việt Nam trên phạm vi cả nước. ​', '2019_03/suckhoevn-key-28022019154919.jpg', '', 2, 1, '4', 1, 0, 52, 0, 0, 0, 0, '', 0),
(34, 3, '3', 0, 1, '', 0, 1552645943, 1552645943, 1, 0, 1552645943, 0, 1, 'Đại hội Hội in tỉnh Bình Dương lần thứ I, nhiệm kỳ 2019-2024', 'dai-hoi-hoi-in-tinh-binh-duong-lan-thu-i-nhiem-ky-2019-2024', 'TTĐT - ​Sáng 26-02, tại thành phố Thủ Dầu Một, Hội in tỉnh Bình Dương đã tổ chức Đại hội lần thứ I, nhiệm kỳ 2019-2024. ​', '2019_03/hoiin1-key-26022019160943.jpg', '', 2, 1, '4', 1, 0, 49, 0, 0, 0, 0, '', 0),
(35, 3, '3', 0, 1, '', 0, 1552645933, 1552645933, 1, 0, 1552645933, 0, 1, 'Bình Dương họp mặt văn nghệ sĩ đầu xuân Kỷ Hợi 2019', 'binh-duong-hop-mat-van-nghe-si-dau-xuan-ky-hoi-2019', 'TTĐT - ​Sáng 26-02, tại TP.Thủ Dầu ​​​Một, UBND tỉnh Bình Dương đã tổ chức Họp mặt văn nghệ sĩ đầu Xuân Kỷ Hợi 2019. ​', '2019_03/vannghesi1-key-26022019161849.jpg', '', 2, 1, '4', 1, 0, 52, 0, 0, 0, 0, '', 0),
(36, 3, '3', 0, 1, '', 0, 1552645968, 1552645968, 1, 0, 1552645968, 0, 1, 'Truyền hình trực tiếp tất cả các trận đấu của Becamex Bình Dương tại AFC Cup 2019', 'truyen-hinh-truc-tiep-tat-ca-cac-tran-dau-cua-becamex-binh-duong-tai-afc-cup-2019', 'TTĐT - ​Theo thông tin từ Câu lạc bộ &#40;CLB&#41; Becamex Bình Dương, tất cả các trận đấu của đội này tại đấu trường AFC Cup 2019 đều được phát trực tiếp trên kênh BT​​V nhằm đáp ứng nhu cầu của người hâm mộ.​', '2019_03/clbbecamex-key-26022019162315.jpg', '', 2, 1, '4', 1, 0, 47, 0, 0, 0, 0, '', 0),
(37, 3, '3', 0, 1, '', 0, 1552645980, 1552645980, 1, 0, 1552645980, 0, 1, 'Bình Dương&#x3A; Sôi nổi khởi động Tháng Thanh niên năm 2019', 'binh-duong-soi-noi-khoi-dong-thang-thanh-nien-nam-2019', 'TTĐT - ​Sáng 26-02, tại huyện Phú Giáo, Ban chỉ đạo &#40;BCĐ&#41; các hoạt động Thanh thiếu nhi tỉnh Bình Dương đã tổ chức Lễ khởi động Tháng Thanh niên tỉnh Bình​ Dương năm 2019.​', '2019_03/ttn6-key-26022019163028.jpg', '', 2, 1, '4', 1, 0, 60, 0, 0, 0, 0, '', 0),
(38, 3, '3', 0, 1, '', 0, 1552645967, 1552645967, 1, 0, 1552645967, 0, 1, 'Bình Dương họp mặt báo chí đầu năm - Xuân Kỷ Hợi 2019', 'binh-duong-hop-mat-bao-chi-dau-nam-xuan-ky-hoi-2019', 'TTĐT - ​Sáng 22-02, tại Trung tâm Hội nghị và Triển lãm tỉnh, Tỉnh ủy, HĐND, UBND, Ủy ban MTTQ Việt Nam tỉnh Bình Dương tổ chức Họp mặt báo chí đầu nă​m - Xuân Kỷ Hợi 2019.​', '2019_03/baochi5-key-22022019162717.jpg', '', 2, 1, '4', 1, 0, 52, 0, 0, 0, 0, '', 0),
(39, 3, '3', 0, 1, '', 0, 1552645963, 1552645963, 1, 0, 1552645963, 0, 1, 'Bình Dương sẵn sàng cho Lễ hội Rằm tháng Giêng năm 2019', 'binh-duong-san-sang-cho-le-hoi-ram-thang-gieng-nam-2019', '​TTĐT - Sáng 18-02, Phó Chủ tịch UBND tỉnh Đặng Minh Hưng cùng lãnh đạo các sở, ngành đã đi kiểm tra công tác chuẩn bị Lễ hội Rằm tháng Giêng năm 2019​ tại thành phố Thủ Dầu Một. Qua kiểm tra, mọi công tác chuẩn bị cho mùa Lễ hội Rằm tháng Giêng đã sẵn sàng.​', '2019_03/ramthanggieng3-key-18022019162222.jpg', '', 2, 1, '4', 1, 0, 48, 0, 0, 0, 0, '', 0),
(40, 3, '3', 0, 1, '', 0, 1552645978, 1552645978, 1, 0, 1552645978, 0, 1, 'Bình Dương họp mặt giao thừa Tết Nguyên đán Kỷ Hợi 2019 và tuyên dương người tốt, việc tốt', 'binh-duong-hop-mat-giao-thua-tet-nguyen-dan-ky-hoi-2019-va-tuyen-duong-nguoi-tot-viec-tot', 'TTĐT - ​Tối 04-02 &#40;30 Tết&#41;, tại Trung tâm Hội nghị và Triển lãm tỉnh Bình Dương, Tỉnh ủy, HĐND, UBND, Ủy ban MTTQ Việt Nam tỉnh đã tổ chức Họp mặt giao thừa Tết Nguyên đán Kỷ Hợi 2019 và tuyên dương gương người tốt, việc tốt.', '2019_03/img-0438ok-key-04022019224621.jpg', '', 2, 1, '4', 1, 0, 50, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_news_4`
--

CREATE TABLE IF NOT EXISTS `tms_vi_news_4` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_news_4`
--

INSERT INTO `tms_vi_news_4` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(21, 4, '4', 0, 1, '', 0, 1552645778, 1552645778, 1, 0, 1552645778, 0, 1, 'Ngày 01&#x002F;4&#x002F;2019 sẽ thực hiện Tổng điều tra dân số và nhà ở năm 2019 trên toàn quốc', 'ngay-01-4-2019-se-thuc-hien-tong-dieu-tra-dan-so-va-nha-o-nam-2019-tren-toan-quoc', 'TTĐT -  Chiều 13-3, tại Hà Nội, ông Vương Đình Huệ - Phó Thủ tướng Chính Phủ, Trưởng Ban Chỉ đạo Tổng điều tra dân số và nhà ở Trung ương &#40;viết tắt là BCĐ Trung ương&#41; đã chủ trì  cuộc họp   báo cáo công tác chuẩn bị thu nhập thông tin Tổng điều tra dân số và nhà ở bắt đầu từ ngày 01&#x002F;4&#x002F;2019 và kéo dài trong 25 ngày.', '2019_03/tongdieutrads-2-key-14032019113003.jpg', '', 2, 1, '4', 1, 0, 52, 0, 0, 0, 0, '', 0),
(22, 4, '4', 0, 1, '', 0, 1552645746, 1552645746, 1, 0, 1552645746, 0, 1, 'Lãnh đạo tỉnh Nghệ An thăm và làm việc với Bình Dương về hoạt động thu hút đầu tư, chế biến, xuất khẩu gỗ, và các sản từ gỗ lâm sản', 'lanh-dao-tinh-nghe-an-tham-va-lam-viec-voi-binh-duong-ve-hoat-dong-thu-hut-dau-tu-che-bien-xuat-khau-go-va-cac-san-tu-go-lam-san', 'TTĐT - Chiều 08-3, tại Trung tâm Hành chính tỉnh, ông Mai Hùng Dũng – Phó Chủ tịch Thường trực UBND tỉnh Bình Dương đã tiếp Đoàn công tác của UBND tỉnh Nghệ An do ông Đinh Viết Hồng - Phó Chủ tịch UBND tỉnh đến thăm và làm việc với Bình Dương về hoạt động thu hút đầu tư, chế biến, xuất khẩu gỗ và các sản phẩm từ gỗ lâm sản. ​', '2019_03/go1-key-09032019095433.jpg', '', 2, 1, '4', 1, 0, 59, 0, 0, 0, 0, '', 0),
(23, 4, '4', 0, 1, '', 0, 1552645804, 1552645804, 1, 0, 1552645804, 0, 1, 'Nghiêm túc triển khai đồng bộ các giải pháp cấp bách khống chế bệnh Dịch tả lợn Châu Phi', 'nghiem-tuc-trien-khai-dong-bo-cac-giai-phap-cap-bach-khong-che-benh-dich-ta-lon-chau-phi', 'TTĐT - Đó là chỉ đạo của Thủ tướng Nguyễn Xuân Phúc tại Hội nghị trực tuyến toàn quốc triển khai cấp bách khống chế bệnh Dịch tả lợn Châu Phi &#40;DTLCP&#41; vào ngày 04&#x002F;3&#x002F;2019.', '2019_03/dichtaloncp-2-key-04032019165801-key-04032019214610.jpg', '', 2, 1, '4', 1, 0, 50, 0, 0, 0, 0, '', 0),
(24, 4, '4', 0, 1, '', 0, 1552645759, 1552645759, 1, 0, 1552645759, 0, 1, 'Bình Dương tổng kết công tác đầu tư công năm 2018', 'binh-duong-tong-ket-cong-tac-dau-tu-cong-nam-2018', 'TTĐT - ​Sáng 01-3, tại Trung tâm Hành chính tỉnh Bình Dương, ông Trần Thanh Liêm – Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh chủ trì Hội nghị trực tuyến tổng kết tình hình đầu tư công và công tác đền bù, giải phóng mặt bằng năm 2018 trên địa bàn tỉnh.​', '2019_03/dtc-1-key-03032019085035.jpg', '', 2, 1, '4', 1, 0, 59, 0, 0, 0, 0, '', 0),
(25, 4, '4', 0, 1, '', 0, 1552645793, 1552645793, 1, 0, 1552645793, 0, 1, 'Hội nghị chính sách phát triển ngành nước&#x3A; Cơ hội, khó khăn, thách thức và kiến nghị', 'hoi-nghi-chinh-sach-phat-trien-nganh-nuoc-co-hoi-kho-khan-thach-thuc-va-kien-nghi', '​TTĐT - Sáng 01-3, tại Trung t​âm Hội nghị và Triển lãm tỉnh Bình Dương, Hội Cấp thoát nước Việt Nam đã tổ chức Hội nghị thường niên với chủ đề &quot;Chính sách phát triển ngành nước&#x3A; Cơ hội, khó khăn, thách thức và kiến nghị&quot;.​', '2019_03/nganhnuoc1-key-01032019141315.jpg', '', 2, 1, '4', 1, 0, 56, 0, 0, 0, 0, '', 0),
(26, 4, '4', 0, 1, '', 0, 1552645752, 1552645752, 1, 0, 1552645752, 0, 1, 'Nâng cao hiệu quả hoạt động Hội đồng giám sát xổ số kiến thiết tỉnh', 'nang-cao-hieu-qua-hoat-dong-hoi-dong-giam-sat-xo-so-kien-thiet-tinh', 'TTĐT - ​Chiều 28-02, tại TP.Thủ Dầu Một, ông Mai Hùng Dũng - Phó Chủ tịch Thường trực UBND tỉnh, Chủ tịch Hội đồng giám sát xổ số kiến thiết tỉnh đã chủ trì Hội nghị tổng kết hoạt động giám sát xổ số kiến thiết năm 2018; triển khai phương hướng, nhiệm vụ năm 2019. ​', '2019_03/xskt1-key-01032019140819.jpg', '', 2, 1, '4', 1, 0, 52, 0, 0, 0, 0, '', 0),
(27, 4, '4', 0, 1, '', 0, 1552645783, 1552645783, 1, 0, 1552645783, 0, 1, 'Hội nghị tham vấn định hướng hoàn thiện thể chế chính sách về đầu tư nước ngoài trong bối cảnh mới', 'hoi-nghi-tham-van-dinh-huong-hoan-thien-the-che-chinh-sach-ve-dau-tu-nuoc-ngoai-trong-boi-canh-moi', 'TTĐT- ​Chiều 14-02, tại Trung tâm Hội nghị và Triển lãm tỉnh Bình Dương, Bộ Kế hoạch và Đầu tư phối hợp với UBND tỉnh Bình Dương tổ chức Hội nghị tham vấn định hướng hoàn thiện thể chế chính sách về đầu tư nước ngoài trong bối cảnh mới. Ông Vương Đình Huệ - Uỷ viê​​n Bộ Chính trị, Phó Thủ tướng Chính phủ chủ trì hội nghị.​', '2019_03/fdi1-key-14022019171530.jpg', '', 2, 1, '4', 1, 0, 51, 0, 0, 0, 0, '', 0),
(28, 4, '4', 0, 1, '', 0, 1552645775, 1552645775, 1, 0, 1552645775, 0, 1, 'Hội nghị trực tuyến toàn quốc triển khai công tác Kế hoạch và Đầu tư năm 2019', 'hoi-nghi-truc-tuyen-toan-quoc-trien-khai-cong-tac-ke-hoach-va-dau-tu-nam-2019', 'TTĐT - ​Sáng 16-01, tại Hà Nội, Bộ Kế hoạch và Đầu tư tổ chức Hội nghị trực tuyến toàn quốc tổng kết công tác năm 2018 và triển khai nhiệm vụ năm 2019. Ôn​g Vương Đình Huệ - Ủy viên Bộ Chính trị, Phó Thủ tướng Chính phủ dự và chỉ đạo hội nghị.​', '2019_03/khdt1-key-16012019164937.jpg', '', 2, 1, '4', 1, 0, 48, 0, 0, 0, 0, '', 0),
(29, 4, '4', 0, 1, '', 0, 1552645804, 1552645804, 1, 0, 1552645804, 0, 1, 'Bình Dương xây dựng nền nông nghiệp phát triển bền vững', 'binh-duong-xay-dung-nen-nong-nghiep-phat-trien-ben-vung', 'TTĐT - Thời gian qua, ngành Nông nghiệp tỉnh Bình Dương đã đạt nhiều thành tựu đáng khích lệ, đặc biệt là quy mô phát triển và sản lượng của vườn cây ăn quả, nông sản theo quy trình công nghệ cao. Thông qua thực hiện hàng loạt các giải pháp đồng bộ, Bình Dương mong muốn tìm được thị trường tiêu thụ ổn định làm cơ sở để thúc đẩy sản xuất và tiêu thụ sản phẩm nông nghiệp theo hướng bền vững, hướng đến một nền nông nghiệp sạch, cung cấp nông sản an toàn cho tiêu dùng trong nước và xuất khẩu.​', '2019_03/nongnghiepbd-1-key-10012019161209.jpg', '', 2, 1, '4', 1, 0, 59, 0, 0, 0, 0, '', 0),
(30, 4, '4', 0, 1, '', 0, 1552645788, 1552645788, 1, 0, 1552645788, 0, 1, 'Tổng kết tình hình thực hiện nhiệm vụ tài chính, ngân sách nhà nước năm 2018 và triển khai nhiệm vụ năm 2019', 'tong-ket-tinh-hinh-thuc-hien-nhiem-vu-tai-chinh-ngan-sach-nha-nuoc-nam-2018-va-trien-khai-nhiem-vu-nam-2019', 'TTĐT  - ​Chiều 09-01, tại Hà Nội, Bộ Tài chính tổ chức Hội nghị trực tuyến toàn quốc đánh giá tình hình thực hiện nhiệm vụ tài chính, ngân sách nhà nư​ớc &#40;NSNN&#41; năm 2018; quán triệt nhiệm vụ và các giải pháp thực hiện nhiệm vụ năm 2019. Ông Nguyễn Xuân Phúc - Ủy viên Bộ Chính trị, Thủ tướng Chính phủ dự và chỉ đạo hội nghị. ​', '2019_03/taichinh-key-09012019201049.jpg', '', 2, 1, '4', 1, 0, 42, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_news_5`
--

CREATE TABLE IF NOT EXISTS `tms_vi_news_5` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_news_5`
--

INSERT INTO `tms_vi_news_5` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(41, 5, '5', 0, 1, '', 0, 1552646094, 1552646094, 1, 0, 1552646094, 0, 1, 'Quy định quản lý tài nguyên nước trên địa bàn tỉnh Bình Dương', 'quy-dinh-quan-ly-tai-nguyen-nuoc-tren-dia-ban-tinh-binh-duong', 'TTĐT - ​UBND tỉnh Bình Dương vừa ban hành Quyết định số 04&#x002F;2019&#x002F;QĐ-UBND quy định quản lý tài nguyên nước trên địa bàn tỉnh Bình Dương. Quyết định này có hiệu lực thi hành kể từ ngày 01&#x002F;4&#x002F;2019 và thay thế Quyết định số 44&#x002F;2014&#x002F;QĐ-UBND ngày 04&#x002F;12&#x002F;2014 của UBND tỉnh.​', '2019_03/tnnuoc-key-14032019195219.jpg', '', 2, 1, '4', 1, 0, 45, 0, 0, 0, 0, '', 0),
(42, 5, '5', 0, 1, '', 0, 1552646105, 1552646105, 1, 0, 1552646105, 0, 1, 'Năm 2019, triển khai 11 dự án xây dựng Thành phố thông minh Bình Dương', 'nam-2019-trien-khai-11-du-an-xay-dung-thanh-pho-thong-minh-binh-duong', 'TTĐT - Chiều 14 - 3, tại Trung tâm Hội nghị và Triển lãm tỉnh, ông Mai Hùng Dũng – Phó Chủ tịch Thường trực UBND tỉnh, Trưởng Ban Điều hành Thành phố thông minh &#40;TPTM&#41; Bình Dương chủ trì họp Ban Điều hành thông qua Kế hoạch thực hiện Đề án TPTM Bình Dương trong năm 2019.', '2019_03/img-2077ok-key-14032019164619.jpg', '', 2, 1, '4', 1, 0, 54, 0, 0, 0, 0, '', 0),
(43, 5, '5', 0, 1, '', 0, 1552646144, 1552646144, 1, 0, 1552646144, 0, 1, 'Bình Dương&#x3A; 46&#x002F;46 xã đạt chuẩn nông thôn mới', 'binh-duong-46-46-xa-dat-chuan-nong-thon-moi', 'TTĐT - ​Sáng 14-3, tại Trung tâm Hành chính tỉnh Bình Dương, ông Mai Hùng Dũng - Ủy viên Ban Thường vụ Tỉnh ủy, Phó Chủ tịch Thường trực UBND tỉnh​ đã chủ trì họp Hội đồng thẩm định xét công nhận xã đạt chuẩn nông thôn mới năm 2018.​', '2019_03/nongthonmoi-key-14032019140002.jpg', '', 2, 1, '4', 1, 0, 51, 0, 0, 0, 0, '', 0),
(44, 5, '5', 0, 1, '', 0, 1552646134, 1552646134, 1, 0, 1552646134, 0, 1, 'Chính thức khai trương Trục liên thông văn bản quốc gia', 'chinh-thuc-khai-truong-truc-lien-thong-van-ban-quoc-gia', '​​ TTĐT - Chiều 12-3, tại Hà Nội, Văn phòng Chính phủ &#40;VPCP&#41; đã chính thức khai trương Trục liên thông văn bản quốc gia. Lễ khai trương có kết nối truyền hình trực tuyến với 63 điểm cầu tại các tỉnh, thành phố. ', '2019_03/trucvb-1-key-13032019101829.jpg', '', 2, 1, '4', 1, 0, 46, 0, 0, 0, 0, '', 0),
(45, 5, '5', 0, 1, '', 0, 1552646148, 1552646148, 1, 0, 1552646148, 0, 1, 'Năm 2019&#x3A; Bình Dương đẩy mạnh phát triển công nghiệp và dịch vụ thông minh', 'nam-2019-binh-duong-day-manh-phat-trien-cong-nghiep-va-dich-vu-thong-minh', 'TTĐT - Chiều 04-3, tại Trung tâm Hành chính tỉnh Bình Dương, ông Mai Hùng Dũng - Phó Chủ tịch Thường trực UBND tỉnh chủ trì họp nghe các đơn vị báo cáo kế hoạch thực hiện Đề án Thành phố thông minh Bình Dương năm 2019 và chuẩn bị Diễn đàn Hợp tác kinh tế châu Á - Horasis 2019; kiến trúc điều hành cho Thành phố thông minh Bình Dương.', '2019_03/mohinhtptm-key-04032019155046.jpg', '', 2, 1, '4', 1, 0, 42, 0, 0, 0, 0, '', 0),
(46, 5, '5', 0, 1, '', 0, 1552646149, 1552646149, 1, 0, 1552646149, 0, 1, 'Bình Dương&#x3A; Đại lý Internet không cung cấp dịch vụ trò chơi điện tử chỉ được hoạt động từ 8 giờ đến 22 giờ hàng ngày', 'binh-duong-dai-ly-internet-khong-cung-cap-dich-vu-tro-choi-dien-tu-chi-duoc-hoat-dong-tu-8-gio-den-22-gio-hang-ngay', 'TTĐT - ​UBND tỉnh vừa ban hành Quyết định số 02&#x002F;2019&#x002F;QĐ-UBND quy định thời gian hoạt động của điểm truy nhập Internet công cộng không cung cấp dịch vụ trò chơi điện tử; qu​​y mô diện tích và thẩm quyền cấp, sửa đổi, bổ sung, gia hạn, cấp lại, thu hồi giấy chứng nhận đủ điều kiện hoạt động đối với điểm cung cấp dịch vụ trò chơi điện tử công cộng trên địa bàn tỉnh Bình Dương. Quyết định này có hiệu lực kể từ ngày 01&#x002F;03&#x002F;2019 và thay thế Quyết định số 31&#x002F;2014&#x002F;QĐ-UBND ngày 12&#x002F;8&#x002F;2014, Quyết định số 3003&#x002F;QĐ-UBND ngày 26&#x002F;11&#x002F;2014.​', 'https://www.binhduong.gov.vn/Style Library/LacViet/CMS2013/Images/newsdefault.jpg', '', 3, 1, '4', 1, 0, 56, 0, 0, 0, 0, '', 0),
(47, 5, '5', 0, 1, '', 0, 1552646115, 1552646115, 1, 0, 1552646115, 0, 1, 'Quy chế quản lý, vận hành và sử dụng mạng truyền số liệu chuyên dùng cấp II của các cơ quan Đảng, Nhà nước trên địa bàn tỉnh Bình Dương', 'quy-che-quan-ly-van-hanh-va-su-dung-mang-truyen-so-lieu-chuyen-dung-cap-ii-cua-cac-co-quan-dang-nha-nuoc-tren-dia-ban-tinh-binh-duong', 'TTĐT - ​UBND tỉnh vừa ban hành Quyết định số 03&#x002F;2019&#x002F;QĐ-UBND về Quy chế quản lý, vận hành và sử dụng mạng truyền số liệu chuyên dùng cấp II của các cơ quan Đảng, Nhà nước trên địa bàn tỉnh Bình Dư​​ơng. Quyết định này có hiệu lực thi hành từ ngày 01&#x002F;03&#x002F;2019 và thay thế Quyết định số 03&#x002F;2012&#x002F;QĐ-UBND ngày 12&#x002F;01&#x002F;2012 của UBND tỉnh.', 'https://www.binhduong.gov.vn/Style Library/LacViet/CMS2013/Images/newsdefault.jpg', '', 3, 1, '4', 1, 0, 42, 0, 0, 0, 0, '', 0),
(48, 5, '5', 0, 1, '', 0, 1552646117, 1552646117, 1, 0, 1552646117, 0, 1, 'Hội thảo phát triển kiến trúc cho Thành phố thông minh Bình Dương', 'hoi-thao-phat-trien-kien-truc-cho-thanh-pho-thong-minh-binh-duong', 'TTĐT - Chiều 21-02, tại Trung tâm Hội nghị và Triển lãm tỉnh, UBND tỉnh Bình Dương tổ chức Hội thảo phát triển kiến trúc cho Thành phố thông minh  &#40;TPTM&#41; Bình Dương.', '2019_03/img-1995ok-key-21022019181020.jpg', '', 2, 1, '4', 1, 0, 61, 0, 0, 0, 0, '', 0),
(49, 5, '5', 0, 1, '', 0, 1552646145, 1552646145, 1, 0, 1552646145, 0, 1, 'Quy định về xây dựng, quản lý, sử dụng nghĩa trang và cơ sở hỏa táng trên địa bàn tỉnh Bình Dương', 'quy-dinh-ve-xay-dung-quan-ly-su-dung-nghia-trang-va-co-so-hoa-tang-tren-dia-ban-tinh-binh-duong', 'TTĐT- ​UBND tỉnh Bình Dương vừa ban hành Quyết định số 01&#x002F;2019&#x002F;QĐ-UBND quy định về xây dựng, quản lý, sử dụng nghĩa trang và cơ sở hỏa tán​g trên địa bàn tỉnh Bình Dương. Quyết định này có hiệu lực thi hành kể từ ngày 10&#x002F;02&#x002F;2019 và thay thế Quyết định số 46&#x002F;2011&#x002F;QĐ-UBND ngày 09&#x002F;11&#x002F;2011 của UBND tỉnh.​', 'https://www.binhduong.gov.vn/Style Library/LacViet/CMS2013/Images/newsdefault.jpg', '', 3, 1, '4', 1, 0, 48, 0, 0, 0, 0, '', 0),
(50, 5, '5', 0, 1, '', 0, 1552646145, 1552646145, 1, 0, 1552646145, 0, 1, 'Công bố thủ tục hành chính được sửa đổi, bổ sung trong lĩnh vực môi trường, khí tượng thủy văn, địa chất và khoáng sản, tài nguyên nước thuộc thẩm quyền giải quyết của Sở Tài nguyên và Môi trường', 'cong-bo-thu-tuc-hanh-chinh-duoc-sua-doi-bo-sung-trong-linh-vuc-moi-truong-khi-tuong-thuy-van-dia-chat-va-khoang-san-tai-nguyen-nuoc-thuoc-tham-quyen-giai-quyet-cua-so-tai-nguyen-va-moi-truong', 'TTĐT- ​UBND tỉnh vừa ban hành Quyết định về việc công bố thủ tục hành chính &#40;TTHC&#41; được sửa đổi, bổ sung trong lĩnh vực môi trường, khí tượng thủy văn, địa chất và khoáng sản, tài nguyên nước thuộc thẩm quyền giải quyết của Sở Tài nguyên và Môi trường. Quyết định này thay thế Quyết định số 1801&#x002F;QĐ-UBND ngày 02&#x002F;7&#x002F;2018 về việc công bố Bộ TTHC thuộc thẩm quyền giải quyết của Sở Tài nguyên và Môi trường, UBND cấp huyện và UBND cấp xã.', 'https://www.binhduong.gov.vn/Style Library/LacViet/CMS2013/Images/newsdefault.jpg', '', 3, 1, '4', 1, 0, 53, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_news_6`
--

CREATE TABLE IF NOT EXISTS `tms_vi_news_6` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_news_6`
--

INSERT INTO `tms_vi_news_6` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(51, 6, '6', 0, 1, '', 0, 1552646934, 1552646934, 1, 0, 1552646934, 0, 1, 'Chủ tịch UBND tỉnh Trần Thanh Liêm tiếp Thị trưởng thành phố Emmen &#40;Hà Lan&#41;', 'chu-tich-ubnd-tinh-tran-thanh-liem-tiep-thi-truong-thanh-pho-emmen-ha-lan', 'TTĐT - ​Chiều 08-3, tại Trung tâm hành chính tỉnh Bình Dương, ông Trần Thanh Liêm - Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh đã tiếp và làm việc với ng​ài Eric van Oosterhout - tân Thị trưởng thành phố Emmen &#40;Hà Lan&#41;. Tham dự có ông Nguyễn Văn Hùng - Ủy viên Ban Thường vụ Tỉnh ủy, Tổng Giám đốc Becamex IDC, cùng lãnh đạo các sở, ngành.​', '2019_03/emmen1-key-09032019113255.jpg', '', 2, 1, '4', 1, 0, 41, 0, 0, 0, 0, '', 0),
(52, 6, '6', 0, 1, '', 0, 1552646943, 1552646943, 1, 0, 1552646943, 0, 1, 'Phó Chủ tịch UBND tỉnh Đặng Minh Hưng tiếp Tân Tổng Lãnh sự Cuba', 'pho-chu-tich-ubnd-tinh-dang-minh-hung-tiep-tan-tong-lanh-su-cuba', 'TTĐT - ​Chiều 21-02, tại Trung tâm Hành chính tỉnh Bình Dương, ông Đặng Minh Hưng – Phó Chủ tịch UBND tỉnh đã tiếp bà Indira Lopez Arguelles – Tân Tổng Lãnh sự Cuba tại thành phố Hồ Chí Minh đến chào xã giao.', '2019_03/cuba-2-key-22022019090814.jpg', '', 2, 1, '4', 1, 0, 50, 0, 0, 0, 0, '', 0),
(53, 6, '6', 0, 1, '', 0, 1552646960, 1552646960, 1, 0, 1552646960, 0, 1, 'Lãnh đạo tỉnh tiếp Đoàn đại biểu tỉnh Kratie &#40;Campuchia&#41; đến thăm và chúc Tết', 'lanh-dao-tinh-tiep-doan-dai-bieu-tinh-kratie-campuchia-den-tham-va-chuc-tet', '​TTĐT -  Chiều 28-01, tại Trung tâm Hành chính tỉnh Bình Dương, ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh đã chủ trì tiếp Đoàn đại biểu tỉnh Kratie, Vương quốc Campuchia do ông Hua Sy Dem - Phó Tỉnh trưởng tỉnh Kratie đến thăm và chúc Tết tỉnh Bình Dương.​​', '2019_03/tiepkratie2-key-28012019172631.jpg', '', 2, 1, '4', 1, 0, 53, 0, 0, 0, 0, '', 0),
(54, 6, '6', 0, 1, '', 0, 1552646929, 1552646929, 1, 0, 1552646929, 0, 1, 'Lãnh đạo tỉnh tiếp Đoàn đại biểu tỉnh Kandal &#40;Campuchia&#41; đến chúc Tết', 'lanh-dao-tinh-tiep-doan-dai-bieu-tinh-kandal-campuchia-den-chuc-tet', 'TTĐT - ​Chiều 25-01, tại Trung tâm Hành chính tỉnh Bình Dương, ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh đã chủ trì tiếp Đoàn đại biểu tỉnh Kandal, Vương quốc Campuchia do ông Kung Sô Phan - Phó Tỉnh trưởng tỉnh Kandal làm Trưởng đoàn đến thăm, chúc Tết tỉnh Bình Dương.​', '2019_03/kandal2-key-26012019092622.jpg', '', 2, 1, '4', 1, 0, 55, 0, 0, 0, 0, '', 0),
(55, 6, '6', 0, 1, '', 0, 1552646943, 1552646943, 1, 0, 1552646943, 0, 1, 'Phó Chủ tịch UBND tỉnh Đặng Minh Hưng tiếp Tân Tổng Lãnh sự nước Cộng hoà nhân dân Trung Hoa', 'pho-chu-tich-ubnd-tinh-dang-minh-hung-tiep-tan-tong-lanh-su-nuoc-cong-hoa-nhan-dan-trung-hoa', 'TTĐT - ​Sáng 24-01, tại Trung tâm Hành chính tỉnh Bình Dương, ông Đặng Minh Hưng – Phó Chủ tịch UBND tỉnh đã tiếp ngài Ngô Tuấn – Tân Tổng Lãnh sự nước Cộng hòa nhân dân Trung Hoa tại thành phố Hồ Chí Minh.', '2019_03/trungquoc-1-key-25012019105320.jpg', '', 2, 1, '4', 1, 0, 58, 0, 0, 0, 0, '', 0),
(56, 6, '6', 0, 1, '', 0, 1552646939, 1552646939, 1, 0, 1552646939, 0, 1, 'Bí thư Tỉnh ủy Trần Văn Nam tiếp Tân Đại sứ Italia', 'bi-thu-tinh-uy-tran-van-nam-tiep-tan-dai-su-italia', 'TTĐT - ​Chiều 21-01, tại Trung tâm Hành chính tỉnh Bình Dương, ông Trần Văn Nam - Ủy viên Trung ương Đảng, Bí thư Tỉnh ủy, Trưởng Đoàn Đại biểu Quốc hội tỉnh đã tiếp Ngài Antonio Alssandro – Tân Đại sứ Italia đến chào xã giao nhân dịp nhận nhiệm vụ mới tại Việt Nam. ', '2019_03/daisuitalia-1-key-22012019104215.jpg', '', 2, 1, '4', 1, 0, 49, 0, 0, 0, 0, '', 0),
(57, 6, '6', 0, 1, '', 0, 1552646959, 1552646959, 1, 0, 1552646959, 0, 1, 'Bình Dương họp mặt Lãnh sự đoàn và các cơ quan nước ngoài', 'binh-duong-hop-mat-lanh-su-doan-va-cac-co-quan-nuoc-ngoai', 'TTĐT - Tối 21- 01,  tại TP.Thủ Dầu Một, Tỉnh ủy, HĐND, UBND, Ủy ban MTTQ Việt Nam tỉnh tổ chức  Họp mặt Lãnh sự đoàn và các cơ quan nước ngoài.', '2019_03/img-6938ok-key-22012019140604.jpg', '', 2, 1, '4', 1, 0, 59, 0, 0, 0, 0, '', 0),
(58, 6, '6', 0, 1, '', 0, 1552646955, 1552646955, 1, 0, 1552646955, 0, 1, 'Đại hội Hội Hữu nghị Việt - Nhật tỉnh Bình Dương lần thứ I, nhiệm kỳ 2018-2023', 'dai-hoi-hoi-huu-nghi-viet-nhat-tinh-binh-duong-lan-thu-i-nhiem-ky-2018-2023', 'TTDDT - Sáng 06-01, tại TP.Thủ Dầu Một đã diễn ra Đại hội Hội Hữu nghị Việt - Nhật tỉnh Bình Dương lần thứ I, nhiệm kỳ 2018-2023.', '2019_03/img-0218ok-key-06012019135206.jpg', '', 2, 1, '4', 1, 0, 42, 0, 0, 0, 0, '', 0),
(59, 6, '6', 0, 1, '', 0, 1552646960, 1552646960, 1, 0, 1552646960, 0, 1, 'Phó Chủ tịch Thường trực UBND tỉnh Mai Hùng Dũng tiếp Tổng Lãnh sự Cộng hòa Dân chủ nhân dân Lào', 'pho-chu-tich-thuong-truc-ubnd-tinh-mai-hung-dung-tiep-tong-lanh-su-cong-hoa-dan-chu-nhan-dan-lao', 'TTĐT - ​Sáng 28-12, tại Trung tâm Hành chính tỉnh Bình Dương, ông Mai Hùng Dũng - Phó Chủ tịch Thường trực UBND tỉnh đã tiếp Ngài Somxay Sanam O​une - Tổng Lãnh sự Cộng hòa Dân chủ nhân dân Lào tại TP.Hồ Chí Minh đến chào từ biệt nhân kết thúc nhiệm kỳ công tác.​', '2019_03/tieplao1-key-28122018160843.jpg', '', 2, 1, '4', 1, 0, 48, 0, 0, 0, 0, '', 0),
(60, 6, '6', 0, 1, '', 0, 1552646949, 1552646949, 1, 0, 1552646949, 0, 1, 'Chủ tịch UBND tỉnh Trần Thanh Liêm tiếp Đại sứ đặc mệnh toàn quyền Nhật Bản', 'chu-tich-ubnd-tinh-tran-thanh-liem-tiep-dai-su-dac-menh-toan-quyen-nhat-ban', 'TTĐT - ​Chiều 13-12, tại Trung tâm Hành chính tỉnh Bình Dương, ông Trần Thanh Liêm – Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh tiếp Ngài Kunio Umeda – Đại sứ đặc mệnh toàn quyền Nhật Bản tại Việt Nam và Phu nhân đến chào xã giao.', '2019_03/daisunhatban-2-key-14122018103814.jpg', '', 2, 1, '4', 1, 0, 47, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_news_admins`
--

CREATE TABLE IF NOT EXISTS `tms_vi_news_admins` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `app_content` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_news_author`
--

CREATE TABLE IF NOT EXISTS `tms_vi_news_author` (
  `id` mediumint(8) unsigned NOT NULL,
  `uid` int(11) unsigned NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pseudonym` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `numnews` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_news_authorlist`
--

CREATE TABLE IF NOT EXISTS `tms_vi_news_authorlist` (
  `id` int(11) NOT NULL,
  `aid` mediumint(8) NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pseudonym` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_news_block`
--

CREATE TABLE IF NOT EXISTS `tms_vi_news_block` (
  `bid` smallint(5) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_news_block`
--

INSERT INTO `tms_vi_news_block` (`bid`, `id`, `weight`) VALUES
(1, 1, 0),
(2, 1, 0),
(1, 2, 0),
(2, 2, 0),
(1, 3, 0),
(2, 3, 0),
(1, 4, 0),
(2, 4, 0),
(1, 5, 0),
(2, 5, 0),
(1, 6, 0),
(2, 6, 0),
(1, 7, 0),
(2, 7, 0),
(1, 8, 0),
(2, 8, 0),
(1, 9, 0),
(2, 9, 0),
(1, 10, 0),
(2, 10, 0),
(3, 1, 1),
(3, 2, 2),
(3, 3, 3),
(3, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_news_block_cat`
--

CREATE TABLE IF NOT EXISTS `tms_vi_news_block_cat` (
  `bid` smallint(5) unsigned NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `numbers` smallint(5) NOT NULL DEFAULT '10',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_news_block_cat`
--

INSERT INTO `tms_vi_news_block_cat` (`bid`, `adddefault`, `numbers`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 0, 4, 'Tin nổi bật', 'tin-noi-bat', '', '', 1, '', 1552504393, 1552504393),
(2, 0, 4, 'Tin mới nhất', 'tin-moi-nhat', '', '', 2, '', 1552504398, 1552504398),
(3, 0, 4, 'Tin thông báo', 'tin-thong-bao', '', '', 3, '', 1552648267, 1552648267);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_news_cat`
--

CREATE TABLE IF NOT EXISTS `tms_vi_news_cat` (
  `catid` smallint(5) unsigned NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `descriptionhtml` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT '0',
  `weight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `numlinks` tinyint(2) unsigned NOT NULL DEFAULT '3',
  `newday` tinyint(2) unsigned NOT NULL DEFAULT '2',
  `featured` int(11) NOT NULL DEFAULT '0',
  `ad_block_cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `admins` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` smallint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_news_cat`
--

INSERT INTO `tms_vi_news_cat` (`catid`, `parentid`, `title`, `titlesite`, `alias`, `description`, `descriptionhtml`, `image`, `viewdescription`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `numlinks`, `newday`, `featured`, `ad_block_cat`, `keywords`, `admins`, `add_time`, `edit_time`, `groups_view`, `status`) VALUES
(1, 0, 'Điều hành', '', 'dieu-hanh', '', '', '', 0, 1, 1, 0, 'viewcat_page_new', 0, '', 9, 2, 0, '', '', '', 1606544147, 1606545312, '6', 1),
(2, 0, 'Tin nội chính', '', 'tin-noi-chinh', '', '', '', 0, 2, 2, 0, 'viewcat_page_new', 0, '', 9, 2, 0, '', '', '', 1606545316, 1606545316, '6', 1),
(3, 0, 'Văn hóa - Xã hội', '', 'van-hoa-xa-hoi', '', '', '', 0, 3, 3, 0, 'viewcat_page_new', 0, '', 9, 2, 0, '', '', '', 1606545323, 1606545323, '6', 1),
(4, 0, 'Kinh tế', '', 'kinh-te', '', '', '', 0, 4, 4, 0, 'viewcat_page_new', 0, '', 9, 2, 0, '', '', '', 1606545327, 1606545327, '6', 2),
(5, 0, 'Truyên truyền', '', 'truyen-truyen', '', '', '', 0, 5, 5, 0, 'viewcat_page_new', 0, '', 9, 2, 0, '', '', '', 1606545331, 1606545331, '6', 2),
(6, 0, 'Đối ngoại', '', 'doi-ngoai', '', '', '', 0, 6, 6, 0, 'viewcat_page_new', 0, '', 9, 2, 0, '', '', '', 1606545335, 1606545335, '6', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_news_config_post`
--

CREATE TABLE IF NOT EXISTS `tms_vi_news_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_news_config_post`
--

INSERT INTO `tms_vi_news_config_post` (`group_id`, `addcontent`, `postcontent`, `editcontent`, `delcontent`) VALUES
(4, 0, 0, 0, 0),
(7, 0, 0, 0, 0),
(5, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_news_detail`
--

CREATE TABLE IF NOT EXISTS `tms_vi_news_detail` (
  `id` int(11) unsigned NOT NULL,
  `titlesite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bodyhtml` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourcetext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `files` text COLLATE utf8mb4_unicode_ci,
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `copyright` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_send` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_news_detail`
--

INSERT INTO `tms_vi_news_detail` (`id`, `titlesite`, `description`, `bodyhtml`, `keywords`, `sourcetext`, `files`, `imgposition`, `layout_func`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`) VALUES
(1, 'Kế hoạch thực hiện Tháng hành động vì người cao tuổi Việt Nam trên địa bàn tỉnh Bình Dương năm 2019', 'TTĐT - ​UBND tỉnh vừa ban hành Kế hoạch thực hiện Tháng hành động vì người cao tuổi Việt Nam trên địa bàn tỉnh Bình Dương năm 2019 (gọi tắt là Kế hoạch).', '<div class="de-newscont"><p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong">​<span style="background-color:transparent;">Theo đó, chỉ tiêu của Kế hoạch là đ</span><span style="background-color:transparent;">ảm bảo </span><span style="background-color:transparent;">100% </span><span style="background-color:transparent;">người cao tuổi cô đơn không nơi nương tựa, người cao tuổi có hoàn cảnh đặc biệt khó khăn được thăm hỏi, tặng quà và được trợ giúp thông qua các hình thức khác </span><span style="background-color:transparent;">nhau</span><span style="background-color:transparent;">; </span><span style="background-color:transparent;">100% các đơn vị thực hiện các nhiệm vụ được giao theo Kế hoạch.</span></span></p><p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong">Kế hoạch được thực hiện từ tháng 3/2019 đến hết tháng 12/2019.</span></p><p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong">Sở Lao động, Thương binh và Xã hội phối hợp với các sở, ban, ngành, đoàn thể tỉnh, Hội Người cao tuổi tỉnh, Hội Chữ thập đỏ tỉnh, Báo Bình Dương, Đài Phát thanh và Truyền hình tỉnh, UBND các huyện, thị xã, thành phố thực hiện công tác tuyên truyền, triển khai &quot;Tháng hành động vì người cao tuổi Việt Nam&quot; năm 2019; vận động xã hội chung tay vì sức khỏe cho người cao tuổi; tạo điều kiện, động viên người cao tuổi, cán bộ Hội Người cao tuổi các cấp tích cực đóng góp kinh nghiệm, trí tuệ tham gia xây dựng hệ thống chính trị cơ sở, góp phần bảo vệ môi trường, xây dựng nông thôn mới và đô thị văn minh; tiếp tục đẩy mạnh triển khai Đề án thành lập &quot;Câu lạc bộ Liên thế hệ tự giúp nhau&quot;; phát triển Quỹ chăm sóc và phát huy vai trò người cao tuổi; các hoạt động văn hóa, thể dục, thể thao của người cao tuổi ở cơ sở; tổ chức vận động các nguồn lực hỗ trợ, cải thiện đời sống cho người cao tuổi cô đơn không nơi nương tựa, người cao tuổi có hoàn cảnh khó khăn; tổ chức các câu lạc bộ dưỡng sinh, câu lạc bộ văn hóa văn nghệ ở cơ sở phù hợp với người cao tuổi; kịp thời biểu dương, nhân rộng các điển hình làm tốt công tác chăm sóc, phát huy vai trò người cao tuổi…</span></p><p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong"><a href="https://www.binhduong.gov.vn/_layouts/LacVietBio/LacViet.DichVuCong/Pages/DownloadFilePage.aspx?FileUrl=/chinhquyen/Pages/Van-ban-Chi-dao-Dieu-hanh-chi-tiet.aspx?ItemID=3132" target="_blank">Tải về </a><a href="https://www.binhduong.gov.vn/chinhquyen/Pages/Van-ban-Chi-dao-Dieu-hanh-chi-tiet.aspx?ItemID=3132"><span style="color:rgb(0, 0, 255);">Kế hoạch&nbsp;​​</span></a></span></p></div>', '', '', '2019_03/49140256_348682122629755_6867617487572172800_n.jpg', 1, '', 0, 1, 1, 1),
(2, 'Đăng ký nghĩa vụ quân sự và phương tiện kỹ thuật thuộc diện huy động bổ sung cho lực lượng thường trực của Quân đội năm 2019', 'TTĐT - ​UBND tỉnh vừa ban hành Quyết định về việc  đăng ký  n ghĩa vụ quân sự và  p hương tiện kỹ thuật   thuộc diện huy động bổ sung cho lực lượng thường trực  của Quân đội năm 2019 .', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong"><p style="text-align:justify;">​<span style="background-color:transparent;">Theo đó, t</span><span style="background-color:transparent;">ất cả công dân nam, nữ ở độ tuổi theo quy định đều phải đến trụ sở Ban Chỉ huy quân sự xã, phường, thị trấn đăng ký nghĩa vụ quân sự năm 2019.</span></p><p style="text-align:justify;">Cụ thể, công dân nam đủ 17 tuổi; độ tuổi gọi nhập ngũ là từ đủ 18 tuổi đến 25 tuổi; công dân được đào tạo trình độ cao đẳng, đại học đã được tạm hoãn gọi nhập ngũ thì độ tuổi gọi nhập ngũ đến hết 27 tuổi.</p><p style="text-align:justify;">Công dân nữ đăng ký nghĩa vụ quân sự có độ tuổi từ 18 đến 40 tuổi (sinh năm 2001 đến năm 1979) có ngành nghề chuyên môn kỹ thuật cần cho quân đội theo Nghị định số 14/2016/NĐ-CP ngày 16/3/2016 của Chính phủ về Quy định ngành, chuyên môn phù hợp yêu cầu của Quân đội nhân dân đối với công dân nữ trong độ tuổi thực hiện nghĩa vụ quân sự.​</p><p style="text-align:justify;">Các loại phương tiện sau đây thuộc sở hữu của các cơ quan, tổ chức, các doanh nghiệp thuộc mọi thành phần kinh tế và của cá nhân (trừ phương tiện kỹ thuật thuộc sở hữu của các tổ chức, cá nhân nước ngoài và của các doanh nghiệp liên doanh với nước ngoài) đều phải có trách nhiệm đăng ký lần đầu hoặc đăng ký bổ sung tại Ban Chỉ huy Quân sự cấp xã nơi cư trú: Phương tiện vận tải cơ giới đường bộ và phương tiện chuyên dùng đường bộ; phương tiện vận tải cơ giới đường thuỷ và phương tiện chuyên dùng đường thuỷ; phương tiện vận tải đường không và phương tiện chuyên dùng hàng không dân dụng; phương tiện xây dựng cầu đường, xây dựng công trình; phương tiện xếp dỡ hàng hoá; phương tiện thông tin liên lạc; phương tiện, thiết bị, vật tư y tế; phương tiện, máy, thiết bị khác.</p><p style="text-align:justify;">Cấp xã tiến hành đăng ký nghĩa vụ quân sự và phương tiện kỹ thuật tổ chức từ ngày 01-29/4/2019.</p><p style="text-align:justify;">Cơ quan quân sự các cấp phối hợp với thành viên Hội đồng Nghĩa vụ quân sự, ban ngành, đoàn thể, báo, đài để tuyên truyền vận động thực hiện đăng ký nghĩa vụ quân sự và phương tiện kỹ thuật theo quy định, đúng thời gian.</p><p style="text-align:justify;">UBND các huyện, thị xã, thành phố chỉ đạo cho cơ quan quân sự tổng hợp kết quả đăng ký báo cáo về UBND tỉnh từ ngày 10-20/5/2019.</p><p style="text-align:justify;">Bộ Chỉ huy Quân sự tỉnh có trách nhiệm hướng dẫn, theo dõi, đôn đốc việc thực hiện Quyết định này và tổng hợp kết quả báo cáo UBND tỉnh.</p><p style="text-align:justify;"><a href=''https://www.binhduong.gov.vn/_layouts/LacVietBio/LacViet.DichVuCong/Pages/DownloadFilePage.aspx?FileUrl=/chinhquyen/Pages/Van-ban-Chi-dao-Dieu-hanh-chi-tiet.aspx?ItemID=3138'' target=''_blank''> Tải về </a><a href="https://www.binhduong.gov.vn/chinhquyen/Pages/Van-ban-Chi-dao-Dieu-hanh-chi-tiet.aspx?ItemID=3138"><span style="color:#0000ff;">Quyết định ​</span></a></p></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(3, 'Trao Giải thưởng Môi trường tỉnh Bình Dương năm 2019', 'TTĐT - ​UBND tỉnh vừa ban hành Kế hoạch tổ chức trao Giải thưởng Môi trường tỉnh Bình Dương năm 2019.', '<div class="de-newscont">\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong">​<span style="background-color:transparent;">Theo đó, l</span><span style="background-color:transparent;">ĩnh vực tham gia xét tặng Giải thưởng gồm 6 nhóm:</span><span style="background-color:transparent;"> </span><span style="background-color:transparent;">Quản lý nhà nước về bảo vệ môi trường;</span><span style="background-color:transparent;"> g</span><span style="background-color:transparent;">iáo dục, đào tạo, truyền thông; tham vấn, tư vấn, phản biện, giám sát thực hiện chính sách, pháp luật về bảo vệ m</span><span style="background-color:transparent;">ô</span><span style="background-color:transparent;">i trường;</span><span style="background-color:transparent;"> n</span><span style="background-color:transparent;">ghiên cứu, áp dụng tiến bộ khoa học, công nghệ trong lĩnh vực bảo vệ môi trường;</span><span style="background-color:transparent;"> p</span><span style="background-color:transparent;">hòng ngừa, giảm thiểu tác động xấu tới môi trường, khắc phục sự cố, xử lý ô nhiễm, phục hồi và cải thiện môi trường;</span><span style="background-color:transparent;"> b</span><span style="background-color:transparent;">ảo vệ và sử dụng hợp lý tài nguyên thiên nhiên, bảo tồn đa dạng sinh học và an toàn sinh học;</span><span style="background-color:transparent;"> t</span><span style="background-color:transparent;">hực hiện chiến lược tăng trưởng xanh, ứng phó&nbsp;</span><span style="background-color:transparent;">v</span><span style="background-color:transparent;">ới biến đổi khí hậu.</span></span></p>\r\n\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong">Đối tượng trao Giải thưởng là các tổ chức, cá nhân, cộng đồng có thành tích xuất sắc trong sự nghiệp bảo vệ môi trường trên địa bàn tỉnh Bình Dương.</span></p>\r\n\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong">Thời gian tiếp nhận hồ sơ của các cá nhân và tổ chức, cộng đồng đăng ký tham gia xét tặng Giải thưởng là từ ngày phát động Giải thưởng đến hết ngày 15/4/2019 tại Chi cục Bảo vệ môi trường tỉnh Bình Dương, tầng 7, tháp B, Tòa nhà Trung tâm Hành chính tập trung tỉnh Bình Dương; điện thoại: 0274.3834765, Fax: 0274.3838556.</span></p>\r\n\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong">Sở Tài nguyên và Môi trường<strong> </strong>phối hợp các đơn vị có liên quan thực hiện các hoạt động phổ biến, tuyên truyền về Giải thưởng và hướng dẫn các tổ chức, cá nhân tham gia xét tặng Giải thưởng lập hồ sơ đề nghị xét tặng Giải thưởng trước ngày 15/4/2019; phối hợp với Sở Nội vụ, đề nghị Chủ tịch UBND tỉnh xem xét, quyết định tặng Giải thưởng trước ngày 06/5/2019; tổ chức công bố và trao tặng Giải thưởng vào dịp hưởng ứng Chiến dịch làm cho thế giới sạch hơn năm 2019.&nbsp;</span></p>\r\n\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong"><a href="https://www.binhduong.gov.vn/_layouts/LacVietBio/LacViet.DichVuCong/Pages/DownloadFilePage.aspx?FileUrl=/chinhquyen/Pages/Van-ban-Chi-dao-Dieu-hanh-chi-tiet.aspx?ItemID=3117" target="_blank">Tải về </a><a href="https://www.binhduong.gov.vn/chinhquyen/Pages/Van-ban-Chi-dao-Dieu-hanh-chi-tiet.aspx?ItemID=3117"><span style="color:rgb(0, 0, 255);">Kế hoạch&nbsp;​​​</span></a></span></p>\r\n</div>', '', '', '', 1, '', 0, 1, 1, 1),
(4, 'Phối hợp xây dựng Hệ thống thông tin phục vụ họp và xử lý công việc của Chính phủ', 'TTĐT - ​UBND tỉnh vừa ban hành văn bản về việc phối hợp xây dựng Hệ thống thông tin phục vụ họp và xử lý công việc của Chính phủ.', '<div class="de-newscont">\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong">​Theo đó, thực hiện ý kiến chỉ đạo của Phó Thủ tướng Vũ Đức Đam tại Công văn số 1587/VPCP-TCCB ngày 26/02/2019 của Văn phòng Chính phủ , Văn phòng UBND tỉnh phối hợp với Sở Thông tin và Truyền thông và các cơ quan, đơn vị có liên quan phối hợp chặt chẽ với Văn phòng Chính phủ triển khai hiệu quả Đề án xây dựng Hệ thống thông tin phục vụ họp và xử lý công việc của Chính phủ (e-Cabinet).</span></p>\r\n\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong"><a href="https://www.binhduong.gov.vn/_layouts/LacVietBio/LacViet.DichVuCong/Pages/DownloadFilePage.aspx?FileUrl=/chinhquyen/PublishingImages/869-VX.signed.pdf?web=1" target="_blank">Tải về </a><a href="https://www.binhduong.gov.vn/chinhquyen/PublishingImages/869-VX.signed.pdf?web=1"><span style="color:rgb(0, 0, 255);">Văn bản​</span></a>&nbsp;</span></p>\r\n</div>', '', '', '', 1, '', 0, 1, 1, 1),
(5, 'Kế hoạch hoạt động và kinh phí năm 2019 của Dự án &quot;Quỹ toàn cầu Phòng, chống HIV/AIDS giai đoạn 2018-2020&quot;', 'TTĐT - ​UBND tỉnh vừa ban hành Kế hoạch hoạt động và kinh phí năm 2019 của Dự án &quot;Quỹ toàn cầu Phòng, chống HIV/AIDS giai đoạn 2018 – 2020&quot; do Quỹ toàn cầu Phòng, chống AIDS, Lao và Sốt rét tài trợ (gọi tắt là Kế hoạch).', '<div class="de-newscont">\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong">​<span style="background-color:transparent;">Theo đó, mục tiêu cụ thể của Kế hoạch là duy trì, cải thiện các gói dịch vụ thiết yếu can thiệp dự phòng tập trung vào các nhóm đối tượng đích và bạn tình của người nhiễm HIV trong cộng đồng, góp phần giảm 28% số trường hợp nhiễm HIV do tiêm chích ma túy và 25% số người nhiễm HIV do quan hệ tình dục so với năm 2015; mở rộng chẩn đoán sớm thông qua các hình thức xét nghiệm HIV tại cơ sở xét nghiệm, xét nghiệm HIV tại cộng đồng cho các nhóm quần thể và bạn tình của người nhiễm HIV, góp phần đạt mục tiêu 90% số người còn sống nhiễm HIV biết được tình trạng HIV của mình; mở rộng, cải thiện chất lượng điều trị thuốc kháng vi rút (ARV) để tối đa hóa lợi ích về điều trị, dự phòng giảm lây truyền HIV và giảm tử vong do AIDS, góp phần đạt mục tiêu 90% người nhiễm HIV được điều trị ARV và 90% số người điều trị ARV có tải lượng vi rút HIV thấp dưới ngưỡng ức chế…</span></span></p>\r\n\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong">Sở Y tế tổ chức và triển khai các hoạt động của kế hoạch; thực hiện đúng các chế độ chi tiêu theo các quy định quản lý tài chính của Việt Nam và được Quỹ toàn cầu Phòng, chống AIDS, Lao và Sốt rét phê duyệt; báo cáo định kỳ và đột xuất lên Bộ Y tế, các cơ quan quản lý viện trợ của Chính phủ và Quỹ toàn cầu.</span></p>\r\n\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong"><a href="https://www.binhduong.gov.vn/_layouts/LacVietBio/LacViet.DichVuCong/Pages/DownloadFilePage.aspx?FileUrl=/chinhquyen/Pages/Van-ban-Chi-dao-Dieu-hanh-chi-tiet.aspx?ItemID=3116" target="_blank">Tải về </a><a href="https://www.binhduong.gov.vn/chinhquyen/Pages/Van-ban-Chi-dao-Dieu-hanh-chi-tiet.aspx?ItemID=3116"><span style="color:rgb(0, 0, 255);">Kế hoạch&nbsp;​</span></a><span style="color:rgb(0, 0, 255);">​</span></span></p>\r\n</div>', '', '', '', 1, '', 0, 1, 1, 1),
(6, 'Kế hoạch hoạt động kiểm soát thủ tục hành chính năm 2019 trên địa bàn tỉnh Bình Dương', 'TTĐT - ​UBND tỉnh vừa ban hành Kế hoạch hoạt động kiểm soát thủ tục hành chính (TTHC) năm 2019 trên địa bàn tỉnh Bình Dương (gọi tắt là Kế hoạch).', '<div class="de-newscont">\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong"><span style="color:rgb(0, 0, 255);"><a href="https://www.binhduong.gov.vn/_layouts/LacVietBio/LacViet.DichVuCong/Pages/DownloadFilePage.aspx?FileUrl=/chinhquyen/Pages/Van-ban-Chi-dao-Dieu-hanh-chi-tiet.aspx?ItemID=3115" target="_blank">Tải về </a><a href="https://www.binhduong.gov.vn/_layouts/LacVietBio/LacViet.DichVuCong/Pages/DownloadFilePage.aspx?FileUrl=/chinhquyen/Pages/Van-ban-Chi-dao-Dieu-hanh-chi-tiet.aspx?ItemID=3115" target="_blank"> Tải về </a><a href="https://www.binhduong.gov.vn/chinhquyen/Pages/Van-ban-Chi-dao-Dieu-hanh-chi-tiet.aspx?ItemID=3115">​</a></span><span style="background-color:transparent;">Theo đó, c</span><span style="background-color:transparent;">ác sở, ban, ngành</span><span style="background-color:transparent;">, UBND các huyện, thị xã, thành phố </span><span style="background-color:transparent;">xây dựng K</span><span style="background-color:transparent;">ế</span><span style="background-color:transparent;"> hoạch triển khai nhiệm vụ ki</span><span style="background-color:transparent;">ểm soát</span><span style="background-color:transparent;"> TTHC năm 201</span><span style="background-color:transparent;">9</span><span style="background-color:transparent;"> tại đơn vị</span><span style="background-color:transparent;"> và </span><span style="background-color:transparent;">địa phương</span><span style="background-color:transparent;"> mình, cụ thể gồm 0</span><span style="background-color:transparent;">6 nội dung thuộc công tác chỉ đạo, triển khai thực hiện </span><span style="background-color:transparent;">nhiệm vụ cải cách, kiểm soát TTHC và thực hiện cơ chế một cửa, một cửa liên thông</span><span style="background-color:transparent;">; 06 nội dung thuộc công tác hoàn thiện thể chế, xây dựng năng lực nghiệp vụ về công tác kiểm soát TTHC; 18 nội dung kiểm soát TTHC và 03 nội dung thuộc chế độ thông tin báo cáo.</span></span></p>\r\n\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong">Văn phòng UBND tỉnh theo dõi, đôn đốc, kiểm tra việc triển khai Kế hoạch này tại các đơn vị, địa phương và báo cáo UBND tỉnh kết quả thực hiện; phối hợp với Sở Tài chính để cân đối, đảm bảo kinh phí phục vụ cho hoạt động kiểm soát TTHC theo quy định.</span></p>\r\n\r\n<p><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong"><a href="https://www.binhduong.gov.vn/_layouts/LacVietBio/LacViet.DichVuCong/Pages/DownloadFilePage.aspx?FileUrl=/chinhquyen/Pages/Van-ban-Chi-dao-Dieu-hanh-chi-tiet.aspx?ItemID=3115" target="_blank">Tải về </a><a href="https://www.binhduong.gov.vn/_layouts/LacVietBio/LacViet.DichVuCong/Pages/DownloadFilePage.aspx?FileUrl=/chinhquyen/Pages/Van-ban-Chi-dao-Dieu-hanh-chi-tiet.aspx?ItemID=3115" target="_blank"> Tải về </a><a href="https://www.binhduong.gov.vn/chinhquyen/Pages/Van-ban-Chi-dao-Dieu-hanh-chi-tiet.aspx?ItemID=3115"><span style="color:rgb(0, 0, 255);">Kế hoạch&nbsp;​​</span></a></span></p>\r\n</div>', '', '', '', 1, '', 0, 1, 1, 1),
(7, 'Hướng dẫn trình tự thực hiện xã hội hóa theo Nghị định 69/2008/NĐ-CP, 59/2014/NĐ-CP trên địa bàn tỉnh Bình Dương', 'TTĐT - ​UBND tỉnh vừa ban hành văn bản về việc hướng dẫn trình tự thực hiện xã hội hóa theo Nghị định 69/2008/NĐ-CP, 59/2014/NĐ-CP trên địa bàn tỉnh Bình Dương.', '<div class="de-newscont">\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong">​<span style="background-color:transparent;">Theo đó, c</span><span style="background-color:transparent;">ác cơ sở thực hiện xã hội hóa là</span><span style="background-color:transparent;"> c</span><span style="background-color:transparent;">ác cơ sở ngoài công lập được cơ quan có thẩm quyền cấp giấy phép hoạt động trong các lĩnh vực khuyến khích xã hội hóa; các tổ </span><span style="background-color:transparent;">chức, cá nhân hoạt động theo Luật Doanh nghiệp có các dự án đầu tư, liên doanh, liên kết thành lập các cơ sở hạch toán độc lập hoạt động trong các lĩnh vực khuyến khích xã hội hóa có đủ điều kiện hoạt động theo quy định của cơ quan nhà nước có thẩm quyền; các cơ sở sự nghiệp công lập thực hiện góp vốn, huy động vốn, liên doanh, liên kết theo quy định của pháp luật thành lập các cơ sở hạch toán độc lập hoặc doanh nghiệp hoạt động trong các lĩnh vực khuyến khích xã hội hóa theo quyết định của cơ quan nhà nước có thẩm quyền.</span></span></p>\r\n\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong">Cơ sở thực hiện xã hội hóa phải đáp ứng các loại hình, tiêu chí quy mô, tiêu chuẩn do Thủ tướng Chính phủ ban hành tại các Quyết định số: 1466/QĐ-TTg ngày 10/10/2008, 693/QĐ-TTg ngày 06/5/2013, 1470/QĐ-TTg ngày 22/7/2016 để được hưởng chính sách khuyến khích xã hội hóa.</span></p>\r\n\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong">Trình tự thực hiện xã hội hóa như sau: Nhà đầu tư liên hệ sở quản lý chuyên ngành<strong><em> </em></strong>về dự án xã hội hóa mà nhà đầu tư quan tâm; đồng thời có văn bản nêu rõ nội dung đề nghị đầu tư dự án cụ thể. Sở quản lý chuyên ngành tham mưu UBND tỉnh lựa chọn nhà đầu tư. Sau khi UBND tỉnh quyết định chọn nhà đầu tư thực hiện xã hội hóa, nhà đầu tư liên hệ sở quản lý chuyên ngành thực hiện thủ tục xác nhận cơ sở thực hiện xã hội hóa đạt yêu cầu loại hình, quy mô, tiêu chuẩn do Thủ tướng Chính phủ quy định; nhà đầu tư liên hệ các cơ quan có liên quan triển khai thực hiện dự án. Sau khi dự án hoàn thành đưa vào hoạt động, cơ sở thực hiện xã hội hóa gửi văn bản thông báo dự án đã hoàn thành đưa vào hoạt động kèm theo hồ sơ, tài liệu có liên quan để cơ quan thuế xem xét, ra quyết định miễn, giảm tiền thuê đất chính thức và các chính sách thuế khác theo quy định.</span></p>\r\n\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong"><a href="https://www.binhduong.gov.vn/_layouts/LacVietBio/LacViet.DichVuCong/Pages/DownloadFilePage.aspx?FileUrl=/chinhquyen/Pages/Van-ban-Chi-dao-Dieu-hanh-chi-tiet.aspx?ItemID=3114" target="_blank">Tải về </a><a href="https://www.binhduong.gov.vn/chinhquyen/Pages/Van-ban-Chi-dao-Dieu-hanh-chi-tiet.aspx?ItemID=3114"><span style="color:rgb(0, 0, 255);">Văn bả​n&nbsp;</span>​</a></span></p>\r\n</div>', '', '', '', 1, '', 0, 1, 1, 1),
(8, 'Chăm sóc vì sự phát triển toàn diện trẻ em trong những năm đầu đời tại gia đình và cộng đồng tỉnh Bình Dương giai đoạn 2019 - 2025', 'TTĐT - ​UBND tỉnh vừa ban hành Kế hoạch thực hiện Đề án chăm sóc vì sự phát triển toàn diện trẻ em trong những năm đầu đời tại gia đình và cộng đồng tỉnh Bình Dương giai đoạn 2019 – 2025 (gọi tắt Kế hoạch).', '<div class="de-newscont">\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong">​<span style="background-color:transparent;">Theo đó, mục tiêu cụ thể của Kế hoạch là phấn đấu đến năm 2025, 90% trẻ em đến 8 tuổi được tiếp cận các dịch vụ hỗ trợ chăm sóc phát</span><span style="background-color:transparent;"> </span><span style="background-color:transparent;">triển toàn diện theo nhu cầu và phù hợp với độ tuổi về chăm sóc sức khỏe, giáo dục, dinh dưỡng, chăm sóc nuôi dưỡng, bảo vệ trẻ em, phúc lợi xã hội; 90% cán bộ làm công tác liên quan đến trẻ em tại các cơ sở khám, chữa bệnh, cơ sở giáo dục, cơ sở nuôi dưỡng trẻ em, cơ sở cung cấp dịch vụ bảo vệ trẻ em, cán bộ tại cộng đồng, cha mẹ, người chăm sóc trẻ em được cung cấp kiến thức, kỹ năng liên quan để hỗ trợ, chăm sóc phát triển toàn diện trẻ em; </span><span style="background-color:transparent;">100% các huyện, thị xã, thành phố củng cố và lồng ghép, duy trì mạng lưới kết nối và chuyển tuyến các dịch vụ chăm sóc phát triển toàn diện trẻ em; triển khai theo dõi, đánh giá nhu cầu của trẻ em đến 8 tuổi và thí điểm mô hình chăm sóc phát triển toàn diện trẻ em tại gia đình và cộng đồng.</span></span></p>\r\n\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong">&nbsp;<span style="background-color:transparent;">Sở Lao động</span><span style="background-color:transparent;">,</span><span style="background-color:transparent;"> Thương binh và Xã hội</span><span style="background-color:transparent;"> phối hợp với các sở, ban, ngành liên quan, UBND các huyện, thị xã, thành phố tổ chức các hoạt động truyền thông tr</span><span style="background-color:transparent;">ên </span><span style="background-color:transparent;">phương tiện phát thanh, truyền hình, tờ rơi, áp phích, </span><span style="background-color:transparent;">pa nô</span><span style="background-color:transparent;">,</span><span style="background-color:transparent;"> tọa đàm, hội thảo, hội thi; x</span><span style="background-color:transparent;">ây dựng các chương trình, phóng sự, biên tập các tài liệu, sản phẩm truyền thông</span><span style="background-color:transparent;">, </span><span style="background-color:transparent;">khẩu hiệu tuyên truyền</span><span style="background-color:transparent;"> nâng cao nhận thức về chăm sóc phát triển ​toàn diện trẻ em trong những năm đầu đời cho các cấp, các ngành, cha mẹ, người chăm sóc trẻ em và cộng đồng; tập huấn nâng cao năng lực cho đội ngũ cán bộ liên quan đến công tác trẻ em của các ngành, đoàn thể các cấp, các cơ sở cung cấp dịch vụ về các kiến thức, kỹ năng liên quan đến chăm sóc phát triển toàn diện trẻ em những năm đầu đời; tư vấn, hướng dẫn, tập huấn chuyên đề cho các bậc cha mẹ, người chăm sóc trẻ em về kiến thức, kỹ năng chăm sóc phát triển toàn diện trẻ em đến 8 tuổi; ưu tiên tư vấn, hướng dẫn việc chăm sóc trẻ em trong 1.000 ngày đầu đời và phụ nữ mang thai, hỗ trợ giáo dục sớm, chăm sóc nuôi dưỡng trong môi trường an toàn, lành mạnh, bảo đảm phúc lợi xã hội và bảo vệ khỏi xâm hại, bạo lực; lồng ghép mô hình kết nối chuyển tuyến dịch vụ hỗ trợ chăm sóc phát triển toàn diện trẻ em những năm đầu đời tại gia đình và cộng đồng trong chương trình bảo vệ trẻ em…</span><span style="background-color:transparent;">​</span></span></p>\r\n\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong"><span style="background-color:transparent;color:rgb(0, 0, 255);"><a href="https://www.binhduong.gov.vn/_layouts/LacVietBio/LacViet.DichVuCong/Pages/DownloadFilePage.aspx?FileUrl=/chinhquyen/Pages/Van-ban-Chi-dao-Dieu-hanh-chi-tiet.aspx?ItemID=3108" target="_blank">Tải về </a><a href="https://www.binhduong.gov.vn/chinhquyen/Pages/Van-ban-Chi-dao-Dieu-hanh-chi-tiet.aspx?ItemID=3108"><span style="color:rgb(0, 0, 255);">Kế hoạch</span>&nbsp;​</a></span></span></p>\r\n</div>', '', '', '', 1, '', 0, 1, 1, 1),
(9, 'Chương trình làm việc tháng 3&#x002F;2019 của UBND tỉnh Bình Dương', 'TTĐT - ​UBND tỉnh vừa ban hành Thông báo về chương trình làm việc tháng 3&#x002F;2019 của UBND tỉnh.', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong"><p style="text-align:justify;">​<span style="background-color:transparent;">Theo đó, trong tuần thứ III (11 – 15/3/2019), UBND tỉnh sẽ thông qua một số nội dung trình Kỳ họp bất thường HĐND tỉnh đầu năm 2019.</span></p><p style="text-align:justify;">Trong tuần V (25 – 29/3/2019), UBND tỉnh sẽ thông qua Báo cáo tình hình kinh tế - xã hội, quốc phòng - an ninh Quý I và nhiệm vụ trọng tâm Quý II năm 2019; Kế hoạch của UBND tỉnh về cải cách chính sách tiền lương đối với cán bộ, công chức, viên chức, lực lượng vũ trang và người lao động trong doanh nghiệp; Kế hoạch của UBND tỉnh về cải cách chính sách Bảo hiểm xã hội; sửa đổi, bổ sung Quyết định số 11/2015/QĐ-UBND ngày 03/4/2015 của UBND tỉnh ban hành quy định về quy trình giải quyết khiếu nại hành chính trên địa bàn tỉnh Bình Dương; quy định quản lý nhà nước về chất lượng sản phẩm, hàng hóa trên địa bàn tỉnh Bình Dương; quy định mức chi nhiệm vụ bảo vệ môi trường trên địa bàn tỉnh Bình Dương.​</p><p style="text-align:justify;"><a href=''https://www.binhduong.gov.vn/_layouts/LacVietBio/LacViet.DichVuCong/Pages/DownloadFilePage.aspx?FileUrl=/chinhquyen/PublishingImages/38-TB.pdf?web=1'' target=''_blank''> Tải về </a><a href="https://www.binhduong.gov.vn/chinhquyen/PublishingImages/38-TB.pdf?web=1"><span style="color:#0000ff;">Thông báo​​​​</span></a><span style="color:#0000ff;"> </span></p></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(10, 'Thu thập dữ liệu tài nguyên và môi trường năm 2019 trên địa bàn tỉnh Bình Dương', 'TTĐT - ​UBND tỉnh vừa ban hành Kế hoạch thu thập dữ liệu tài nguyên và môi trường năm 2019 trên địa bàn tỉnh Bình Dương.', '<div class="de-newscont">\r\n<p><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong">​<span style="text-align:justify;background-color:transparent;">Theo đó, các cơ quan, tổ chức, cá nhân trong quá trình thực hiện nhiệm vụ được giao, thực hiện các đề tài, dự án có sử dụng nguồn vốn ngân sách nhà nước hoặc có nguồn gốc từ ngân sách nhà nước có trách nhiệm giao nộp dữ liệu cho các cơ quan chuyên môn thu thập, quản lý, cập nhật, khai thác và sử dụng dữ liệu về tài nguyên và môi trường theo quy định của pháp luật.</span></span></p>\r\n\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong">Nội dung báo cáo gồm: Thông tin, dữ liệu về đất đai<strong>;</strong> thông tin, dữ liệu về tài nguyên nước; thông tin, dữ liệu về địa chất và khoáng sản; thông tin, dữ liệu về môi trường; thông tin, dữ liệu về khí tượng thủy văn; thông tin, dữ liệu đo đạc và bản đồ; thông tin, dữ liệu về biến đổi khí hậu; thông tin, dữ liệu về viễn thám; kết quả thanh tra, giải quyết tranh chấp, khiếu nại, tố cáo, giải quyết bồi thường thiệt hại về tài nguyên và môi trường đã được cơ quan nhà nước có thẩm quyền giải quyết; văn bản quy phạm pháp luật, các tiêu chuẩn, quy chuẩn kỹ thuật, hướng dẫn kỹ thuật, định mức kinh tế - kỹ thuật về tài nguyên và môi trường; hồ sơ, kết quả của các chiến lược, quy hoạch, chương trình, dự án, đề án, đề tài nghiên cứu khoa học công nghệ về tài nguyên và môi trường; hồ sơ, dữ liệu về thủy lợi, kiểm lâm; nhóm tài liệu hình thành phổ biến chung trong hoạt động của các đơn vị; thông tin, dữ liệu tài nguyên và môi trường khác theo quy định của pháp luật.</span></p>\r\n\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong">Dữ liệu giao nộp trong thời hạn 03 tháng, kể từ ngày công trình được quyết toán đối với hồ sơ, tài liệu xây dựng cơ bản; trong thời hạn không quá 05 ngày làm việc kể từ ngày công việc kết thúc đối với hồ sơ, tài liệu thông tin tư liệu đo đạc và bản đồ; sau 15 ngày kể từ ngày được phê duyệt đối với báo cáo địa chất; trong thời hạn 01 năm, kể từ ngày công việc kết thúc đối với các loại hồ sơ, tài liệu còn khác; trong trường hợp tổ chức, cá nhân có nhu cầu giữ lại hồ sơ, tài liệu đã đến hạn giao nộp thì phải được người đứng đầu cơ quan đồng ý và phải lập danh mục hồ sơ, tài liệu giữ lại gửi cho Sở Tài nguyên và Môi trường (đối với cấp tỉnh) và Phòng Tài nguyên và Môi trường (đối với cấp huyện), thời gian giữ lại hồ sơ, tài liệu không quá 02 năm, kể từ ngày đến hạn giao nộp.​</span></p>\r\n\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_5b37c862_6ea4_4cbe_b96a_19452269fbfa_ctl00_Label_BodyTinTucMoRong"><a href="https://www.binhduong.gov.vn/_layouts/LacVietBio/LacViet.DichVuCong/Pages/DownloadFilePage.aspx?FileUrl=/chinhquyen/Pages/Van-ban-Chi-dao-Dieu-hanh-chi-tiet.aspx?ItemID=3105" target="_blank">Tải về </a><a href="https://www.binhduong.gov.vn/chinhquyen/Pages/Van-ban-Chi-dao-Dieu-hanh-chi-tiet.aspx?ItemID=3105"><span style="color:rgb(0, 0, 255);">Kế hoạch&nbsp;​​​</span></a></span></p>\r\n</div>', '', '', '', 1, '', 0, 1, 1, 1),
(11, 'Lấy ý kiến đề nghị tặng Huân chương Lao động hạng Ba', 'TTĐT - ​Để đảm bảo việc xét tặng Huân chương Lao động đúng quy trình, Ban Thi đua - Khen thưởng tỉnh Bình Dương (cơ quan Thường trực Hội đồng thi đua - Kh​en thưởng tỉnh) thông báo lấy ý kiến rộng rãi trong nhân dân về việc đề nghị tặng Huân chương Lao động hạng Ba. ​', '<div class="de-newscont">\r\n<div class="ExternalClassD566E493BF914DD1BFE6DADE52CF4900">\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong">​Theo đó, lấy ý kiến việc đề nghị Thủ tướng Chính phủ, Chủ tịch nước tặng thưởng Huân chương Lao động hạng Ba cho Đảng bộ, chính quyền và nhân dân huyện Bắc Tân Uyên.</span></p>\r\n\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong">Thời gian lấy ý kiến: Từ ngày 11/3/2019 - 15/3/2019.</span></p>\r\n\r\n<p style="text-align:justify;"><span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong">Ý kiến đóng góp gửi về địa chỉ: Ban Thi đua - Khen thưởng tỉnh, tầng 18, Tháp A, Trung tâm Hành chính tỉnh, phường Hòa Phú, thành phố Thủ Dầu Một, tỉnh Bình Dương, số điện thoại: 0274. 3848.250.</span></p>\r\n</div>\r\n</div>', '', '', '', 1, '', 0, 1, 1, 1),
(12, 'Bình Dương ra quân tuyên truyền phòng, chống ma túy và thực hiện phong trào “Toàn dân đoàn kết xây dựng đời sống văn hóa”', 'TTĐT - ​Sáng 09-3, tại Công viên phường Phú Cường, TP.Thủ Dầu Một, Cục Cảnh sát điều tra tội phạm về ma túy-Bộ Công an, Văn phòng Thường t​rực Ban chỉ đạo Trung ương phong trào &quot;Toàn dân đoàn kết xây dựng đời sống văn hóa&quot; và UBND tỉnh Bình Dương đã phối hợp tổ chức Lễ ra quân tuyên truyền phòng, chống ma túy và thực hiện phong trào &quot;Toàn dân đoàn kết xây dựng đời sống văn hóa&quot; năm 2019. ​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass564DC356D6114B2389F769ED9D8708B2"><p style="text-align:justify;">Tham dự có Thượng tá Ngô Thanh Bình - Phó Cục trưởng Cục Cảnh sát điều tra tội phạm về ma túy - Bộ Công an, ông Phùng Quang Luyến - Phó Chánh Văn phòng Thường trực Ban chỉ đạo Trung ương phong trào "Toàn dân đoàn kết xây dựng đời sống văn hóa", ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh, lãnh đạo các sở, ngành, UBND TP.Thủ Dầu Một và hơn 800 đoàn viên, sinh viên.</p><p style="text-align:justify;">Lễ ra quân nhằm tổ chức các hoạt động truyền thông để tuyên truyền về phong trào "Toàn dân đoàn kết xây dựng đời sống văn hóa" gắn với công tác phòng, chống ma túy, góp phần nâng cao nhận thức của cộng đồng, trọng tâm là người trong độ  tuổi thanh niên về trách nhiệm thực hiện phong trào. Từ đó xây dựng gia đình văn hóa, cộng đồng văn hóa và môi trường văn hóa lành mạnh cho đoàn viên, thanh niên. Nâng cao nhận thức cho đoàn viên, thanh niên về các chủ trương, chính sách, pháp luật của Đảng, Nhà nước, các văn bản chỉ đạo của Chính phủ, Bộ Công an trong công tác phòng, chống ma túy, góp phần kiềm chế sự gia tăng, ngăn chặn tiến tới đẩy lùi tệ nạn ma túy ra khỏi đời sống xã hội, góp phần giữ gìn an ninh chính trị và trật tự an toàn xã hội trên địa bàn toàn tỉnh.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/pcmatuy1-key-09032019113802.jpg" alt="Bình Dương ra quân tuyên truyền phòng, chống ma túy và thực hiện phong trào “Toàn dân đoàn kết xây dựng đời sống văn hóa”" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh phát biểu tại buổi lễ​</span><br></p><p style="text-align:justify;"><span style="background-color:transparent;">Phát </span><span style="background-color:transparent;">biểu tại lễ ra quân, Phó Chủ tịch UBND tỉnh Đặng Minh Hưng đánh giá cao kết quả của các ngành, các huyện, thị, thành phố tham gia tích cực trong công tác tuyên truyền, đấu tranh phòng, chống ma túy trong thời gian qua. Đồng thời nhấn mạnh, tệ nạn ma túy là hiểm họa lớn cho toàn xã hội, gây tác hại cho sức khỏe và nhân phẩm con người, phá hoại hạnh phúc gia đình, ảnh hưởng nghiêm trọng đến trật tự, an toàn xã hội. Trong thời gian tới, ông đề nghị, các cơ quan đơn vị, sở, ngành và các huyện, thị, thành phố cần tăng cường tuyên truyền một cách hiệu quả, luôn tìm tòi, bổ sung, đổi mới các hình thức tuyên truyền để người dân dễ hiểu, dễ biết và dễ thực hiện. Cần lồng ghép các nội dung tuyên truyền phòng, chống ma túy với các nội dung chương trình phát triển kinh tế - xã hội các địa phương và phong trào </span><span style="background-color:transparent;">"Toàn dân đoàn kết xây dựng đời sống văn hóa" </span><span style="background-color:transparent;">để ngày càng có nhiều khu dân cư không còn tệ nạn ma túy. Các sở, ban, ngành và các huyện, thị xã, thành phố xác định rõ công tác phòng, chống và cai nghiện ma túy là nhiệm vụ trọng tâm, cấp bách, thường xuyên, liên tục của các cấp ủy Đảng, chính quyền và toàn xã hội; nhằm nâng cao trách nhiệm của các cấp ủy, chính quyền và các đoàn thể xã hội trong việc hỗ trợ lực lượng công an trong đấu tranh phòng, chống ma túy.</span><span style="background-color:transparent;">      </span></p><p style="text-align:center;"><span style="background-color:transparent;"><img src="/uploads/news/2019_03/pcmatuy2-key-09032019113848.jpg" alt="Bình Dương ra quân tuyên truyền phòng, chống ma túy và thực hiện phong trào “Toàn dân đoàn kết xây dựng đời sống văn hóa” - Ảnh minh hoạ 2" style="margin:5px;" /><br></span></p><p style="text-align:center;"><span style="color:#0000ff;">Các Huyện, Thị, Thành Đoàn và các đoàn cơ sở ký kết thực hiện xây dựng đời sống văn hóa vì môi trường không có ma túy</span></p><p style="text-align:center;"><span style="color:#0000ff;"><img src="/uploads/news/2019_03/pcmatuy3-key-09032019113905.jpg" alt="Bình Dương ra quân tuyên truyền phòng, chống ma túy và thực hiện phong trào “Toàn dân đoàn kết xây dựng đời sống văn hóa” - Ảnh minh hoạ 3" style="margin:5px;" /><br></span></p><p style="text-align:center;"><span style="color:#0000ff;">Trao tờ rơi cho các cơ sở đoàn trực thuộc Tỉnh Đoàn​</span></p><p style="text-align:justify;"><span style="background-color:transparent;">Tại buổi lễ, 21 chi đoàn cơ sở thuộc Tỉnh Đoàn Bình Dương đã tiến hành ký cam kết thực hiện phong trào "Đoàn viên, thanh niên tỉnh Bình Dương xây dựng đời sống văn hóa vì môi trường không có ma túy".</span><br></p><p style="text-align:justify;">Ngay sau lễ phát động, các lực lượng đã tham gia tuyên truyền trên các tuyến đường ở khu vực trung tâm TP.Thủ Dầu Một và phát 9.000  tờ rơi tại các địa bàn dân cư, vì cuộc sống tươi đẹp quyết tâm loại trừ ma túy ra khỏi đời sống xã hội.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/pcmatuy4-key-09032019113926.jpg" alt="Bình Dương ra quân tuyên truyền phòng, chống ma túy và thực hiện phong trào “Toàn dân đoàn kết xây dựng đời sống văn hóa” - Ảnh minh hoạ 4" style="margin:5px;" /><br></p><p style="text-align:center;"><img src="/uploads/news/2019_03/pcmatuy5-key-09032019113943.jpg" alt="Bình Dương ra quân tuyên truyền phòng, chống ma túy và thực hiện phong trào “Toàn dân đoàn kết xây dựng đời sống văn hóa” - Ảnh minh hoạ 5" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Lực lượng tham gia tuyên truyền trên các tuyến đường​</span><br></p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(13, 'Ủy ban Đối ngoại của Quốc hội làm việc với tỉnh Bình Dương', 'TTĐT - ​Chiều 25-02, tại Trung tâm Hành chính tỉnh Bình Dương, ông Trần Thanh Liêm – Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh chủ trì tiếp và làm việc với Đoàn công tác Ủy ban Đối ngoại của Quốc hội do ông Nguyễn Mạnh Tiến – Phó Chủ nhiệm Ủy ban Đối ngoại của Quốc hội làm Trưởng đoàn giám sát việc thực hiện chính sách, pháp luật trong công tác quản lý người nước ngoài &#40;NNN&#41; tại Bình Dương.', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass83ADD7976FE84B8E915F8A6DDA182BB6"><p style="text-align:justify;">​<span style="background-color:transparent;">Bình Dương là địa bàn có nhiều doanh nghiệp và NNN đến làm việc, cư trú, vì vậy, thời gian qua, UBND tỉnh Bình Dương đã thực hiện tốt công tác tuyên truyền, phổ biến giáo dục pháp luật; ban hành Quy chế phối hợp và luôn quan tâm, chỉ đạo các sở, ban, ngành địa phương chấp hành các quy định của pháp luật về nhập cảnh, xuất cảnh, cư trú của NNN; bảo đảm về an ninh, trật tự và tạo thuận lợi cho NNN yên tâm đầu tư kinh doanh, làm việc, cư trú trên địa bàn. Tình hình quản lý NNN được các cơ quan, đơn vị, địa phương thực hiện hiệu quả; đảm bảo quyền, lợi ích hợp pháp của NNN khi đến đầu tư, tham quan, du lịch, học tập, lao động… trên địa bàn tỉnh; đồng thời chủ động phát hiện, xử lý kịp thời các trường hợp vi phạm. UBND tỉnh đã chỉ đạo Công an tỉnh phối hợp với các ngành chức năng, thực hiện tốt công tác quản lý việc khai báo tạm trú đối với NNN tại cơ sở lưu trú, khách sạn, khu công nghiệp. Hiện nay, có 2.496 cơ sở lưu trú đã đăng ký tài khoản để khai báo tạm trú qua mạng Internet. Công an tỉnh đã xem xét cấp thẻ thường trú, thẻ tạm trú, gia hạn tạm trú, thị thực đối với 21.840 NNN. Từ ngày 01/01/2016 đến ngày 31/10/2018, UBND tỉnh giải quyết việc nuôi con được 45 trường hợp; UBND cấp huyện thực hiện việc đăng ký hộ tịch cho 1.048 vụ việc; Sở Tư pháp đã cấp 4.726 trường hợp lý lịch tư pháp cho người nước ngoài hiện đang cư trú trên địa bàn tỉnh Bình Dương.</span></p><p style="text-align:center;"><span style="background-color:transparent;"><img src="/uploads/news/2019_03/giamsatnuocngoai-1.jpg" alt="Giamsatnuocngoai 1.jpg" style="margin:5px;" /><br></span></p><p style="text-align:center;"><span style="background-color:transparent;"><span style="color:#0000ff;">Toàn cảnh buổi làm việc​</span><br></span></p><p style="text-align:justify;">Các sở, ban, ngành, địa phương đã tổ chức thực hiện nghiêm túc, đầy đủ và chặt chẽ các quy định của pháp luật về nhập cảnh, xuất cảnh, cư trú của người nước ngoài, không để xảy ra sai phạm, khiếu nại, tố cáo có liên quan đến người nước ngoài. Từ năm 2015 đến nay, tỉnh Bình Dương đã đón tiếp 462 đoàn/5.420 lượt khách nước ngoài đến thăm, làm việc và tìm hiểu về kinh tế-xã hội, môi trường đầu tư, tham quan các cơ sở kinh tế, văn hoá và các khu công nghiệp của tỉnh… Năm 2018, ngành Du lịch Bình Dương đã phục vụ khoảng 289.500 lượt khách nước ngoài, phần lớn khách du lịch là người nước ngoài đang làm việc tại các doanh nghiệp có vốn đầu tư nước ngoài trên địa bàn tỉnh.</p><p style="text-align:justify;">Tính đến nay, Bình Dương là địa phương thu hút vốn đầu tư nước ngoài đứng thứ 3 trong cả nước với hơn 3.500 dự án còn hiệu lực và tổng vốn đầu tư đăng ký hơn 32,3 tỷ đô la Mỹ, quy mô trung bình dự án đạt hơn 9 triệu đô la Mỹ.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/giamsatnuocngoai-2.jpg" alt="Giamsatnuocngoai 2.jpg" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Nguyễn Mạnh Tiến – Phó Chủ nhiệm Ủy ban Đối ngoại của Quốc hội phát biểu tại buổi làm việc ​</span><br></p><p style="text-align:justify;">Phát biểu tại buổi làm việc, ông Nguyễn Mạnh Tiến – Phó Chủ nhiệm Ủy ban Đối ngoại của Quốc hội lưu ý Bình Dương cần chú trọng hơn việc tổ chức thực hiện pháp luật về nhà ở cho người nước ngoài tại địa phương. Song song đó, tăng cường ứng dụng công nghệ thông tin vào công tác quản lý nhà nước đối với người lao động nước ngoài, thực hiện cải cách hành chính trong việc giải quyết các thủ tục liên quan đến người lao động nước ngoài; tiếp tục tăng cường tuyên truyền đến doanh nghiệp để nắm, hiểu các quy định pháp luật liên quan về sử dụng lao động nước ngoài làm việc trên địa bàn tỉnh.</p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(14, 'Ủy ban Pháp luật của Quốc hội làm việc với tỉnh Bình Dương', 'TTĐT - ​Sáng 25-02, tại Trung tâm Hành chính tỉnh Bình Dương, Đoàn công tác Ủy ban Pháp luật của Quốc hội do ông Nguyễn Khắc Định - Ủy viên Trung ương Đảng, Ủy viên Ủy ban Thường vụ Quốc hội, Chủ nhiệm Ủy ban Pháp luật của Quốc hội làm Trưởng đoàn đã khảo sát việc th​ực hiện một số quy định của Luật Tổ chức chính quyền địa phương, Luật Cán bộ, công chức và Luật Viên chức tại tỉnh Bình Dương.​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClassFCF847F5665345ED955219B3610071F4"><p style="text-align:justify;">Tiếp và làm việc với Đoàn có ông Mai Hùng Dũng - Ủy viên Ban Thường vụ Tỉnh uỷ, Phó Chủ tịch Thường trực UBND tỉnh và lãnh đạo một số sở, ban, ngành.</p><p style="text-align:justify;">Thực hiện Luật Tổ chức chính quyền địa phương, Luật Cán bộ, công chức và Luật Viên chức, UBND tỉnh Bình Dương đã chỉ đạo triển khai thực hiện tốt các nhiệm vụ được phân cấp trên các lĩnh vực quản lý kinh tế, giáo dục và đào tạo, tài nguyên môi trường, quản lý cán bộ, công chức, viên chức, phân cấp ngân sách… theo đúng quy định của Trung ương và tình hình thực tế của tỉnh. Đặc biệt, việc triển khai phân cấp trong quản lý cán bộ, công chức, viên chức trên địa bàn tỉnh được UBND các cấp thực hiện theo quy định và đồng bộ, tạo chuyển biến tích cực trong công tác quản lý cán bộ, công chức. Tỉnh đã tổ chức 02 kỳ thi tuyển công chức cấp tỉnh, cấp huyện, tuyển dụng được 645 người. Đồng thời tuyển dụng được 9.431 viên chức thông qua hình thức xét tuyển. UBND tỉnh đã ban hành Kế hoạch triển khai Đề án thí điểm tuyển chọn lãnh đạo, quản lý trên địa bàn; đến nay đã tổ chức thi tuyển 03 vị trí Phó Giám đốc Sở, 02 vị trí Trưởng, Phó phòng cấp tỉnh và 10 vị trí Trưởng, Phó phòng cấp huyện.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/ubpl2-key-25022019163839.jpg" alt="Ủy ban Pháp luật của Quốc hội làm việc với tỉnh Bình Dương" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Mai Hùng Dũng - Ủy viên Ban Thường vụ Tỉnh uỷ, Phó Chủ tịch Thường trực UBND tỉnh phát biểu tại buổi làm việc</span><br></p><p style="text-align:justify;">Về mô hình tổ chức chính quyền địa phương, sau cuộc bầu cử đại biểu Quốc hội và HĐND các cấp nhiệm kỳ 2016-2021, HĐND và UBND các cấp đã được kiện toàn cơ cấu tổ chức, các chức danh HĐND, UBND và các cơ quan chuyên môn đi vào hoạt động theo luật định. Sau 3 năm, tổ chức và hoạt động của chính quyền các cấp tại địa phương đã hoạt động ổn định, hiệu lực, hiệu quả, cơ bản đáp ứng yêu cầu quản lý, phát triển kinh tế - xã hội.</p><p style="text-align:justify;">Tại buổi làm việc, tỉnh Bình Dương đã trình bày những khó khăn, vướng mắc trong triển khai thực hiện các Luật. Đồng thời kiến nghị sửa đổi các nội dung liên quan đến cơ cấu tổ chức của UBND cấp xã quy định tại Điều 34, Điều 62, Điều 69 Luật Tổ chức chính quyền địa phương theo hướng: Cấp xã loại 1 được bố trí không quá 02 Phó Chủ tịch UBND, xã loại 2, loại 3 được bố trí từ 01 đến 02 Phó Chủ tịch UBND; Chính phủ quy định cụ thể số lượng Phó Chủ tịch UBND cấp xã loại 2, loại 3 theo tiêu chí dân số. Tỉnh cũng kiến nghị Trung ương cần ban hành cơ chế đặc thù về quản lý biên chế đối với địa phương có tốc độ dân số tăng nhanh, dân nhập cư đông, gây áp lực về quy mô trường lớp, tỷ lệ bác sĩ/vạn dân…; tăng cường phân cấp thẩm quyền quản lý, tuyển dụng, sử dụng cán bộ, công chức, viên chức cho địa phương.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/ubpl3-key-25022019163955.jpg" alt="Ủy ban Pháp luật của Quốc hội làm việc với tỉnh Bình Dương - Ảnh minh hoạ 2" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Nguyễn Khắc Định - Ủy viên Trung ương Đảng, Ủy viên Ủy ban Thường vụ Quốc hội, Chủ nhiệm Ủy ban Pháp luật của Quốc hội kết luận buổi làm việc</span><br></p><p style="text-align:justify;">Kết luận buổi làm việc, ông Nguyễn Khắc Định ghi nhận các kiến nghị của tỉnh Bình Dương để tổng hợp, báo cáo với Ủy ban Thường vụ Quốc hội và phối hợp với Chính phủ sửa đổi một số quy định của các Luật theo hướng phân cấp mạnh cho địa phương trên tinh thần tinh giản bộ máy, nâng cao chất lượng hệ thống chính trị.</p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1);
INSERT INTO `tms_vi_news_detail` (`id`, `titlesite`, `description`, `bodyhtml`, `keywords`, `sourcetext`, `files`, `imgposition`, `layout_func`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`) VALUES
(15, 'Ông Nguyễn Văn Lộc giữ chức Chủ tịch Ủy ban MTTQ Việt Nam tỉnh Bình Dương', 'TTĐT - ​Sáng 21-02, tại TP.Th​ủ Dầu Một, Ủy ban MTTQ Việt Nam tỉnh Bình Dương đã tổ chức Hội nghị lần thứ XIII, nhiệm kỳ 2014-2019. ​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass48E52A1B31AD426BB1B237E9DD168EAC"><p style="text-align:justify;">​Tham dự có ông Trần Văn Nam - Ủy viên Ban Chấp hànhTrung ương Đảng, Bí thư Tỉnh ủy, Trưởng Đoàn Đại biểu Quốc hội tỉnh; ông Lý Ngọc Minh - Ủy viên Đoàn Chủ tịch Trung ương MTTQ Việt Nam; ông Võ Văn Thiện - Trưởng Ban công tác phía Nam Ủy ban Trung ương MTTQ Việt Nam; ông Trần Thanh Liêm - Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh.</p><p style="text-align:justify;">Hội nghị đã tiến hành các nội dung báo cáo tình hình tổ chức Đại hội Ủy ban MTTQ Việt Nam cấp xã, nhiệm kỳ 2019-2024; thông qua Tờ trình về việc phân bổ đại biểu tham dự Đại hội Ủy ban MTTQ tỉnh khóa 9, nhiệm kỳ 2019-2024; Tờ trình về số lượng, cơ cấu, thành phần Ủy ban MTTQ Việt Nam tỉnh khóa IX, nhiệm kỳ 2019-2024; Tờ trình hiệp thương thay thế Chủ tịch Ủy ban MTTQ Việt Nam tỉnh khóa VIII, nhiệm kỳ 2014-2019.​</p><p style="text-align:center;"><img src="/uploads/news/2019_03/mt1-key-21022019163151.jpg" alt="Ông Nguyễn Văn Lộc giữ chức Chủ tịch Ủy ban MTTQ Việt Nam tỉnh Bình Dương" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Đại biểu tham dự hội nghị​</span><br></p><p style="text-align:center;"><span style="color:#0000ff;"><img src="/uploads/news/2019_03/mt2-key-21022019163218.jpg" alt="Ông Nguyễn Văn Lộc giữ chức Chủ tịch Ủy ban MTTQ Việt Nam tỉnh Bình Dương - Ảnh minh hoạ 2" style="margin:5px;" /><br></span></p><p style="text-align:center;"><span style="color:#0000ff;"><span style="color:#0000ff;text-align:center;">Đại biểu biểu quyết thông qua các Nghị quyết</span><br></span></p><p style="text-align:justify;">Tính đến thời điểm hiện tại đã có 43/91 xã, phường, thị trấn tổ chức xong Đại hội cấp cơ sở (đạt tỷ lệ 47,25%). Trong đó, TP.Thủ Dầu Một, thị xã Bến Cát và huyện Bắc Tân Uyên có 100% xã, phường, thị trấn đã tổ chức xong Đại hội. Do có sự chủ động trong công tác triển khai, hướng dẫn của Ban Thường trực Ủy ban MTTQ Việt Nam tỉnh và kịp thời hướng dẫn của Ban Thường trực Ủy ban MTTQ Việt Nam các huyện, thị, thành phố; sự chỉ đạo sát sao của cấp ủy địa phương nên công tác tổ chức Đại hội MTTQ Việt Nam cấp xã trên địa bàn tỉnh diễn ra đạt kết quả cao, đảm bảo yêu cầu đề ra. Công tác tuyên truyền cho Đại hội với nhiều hình thức phong phú, đa dạng…. đã tạo khí thế thi đua sôi nổi trong các tầng lớp nhân dân. Hầu hết các đơn vị đều có công trình chào mừng Đại hội gắn với đời sống, nhu cầu của nhân dân ở địa phương.​</p><p style="text-align:center;"><img src="/uploads/news/2019_03/mt3-key-21022019163302.jpg" alt="Ông Nguyễn Văn Lộc giữ chức Chủ tịch Ủy ban MTTQ Việt Nam tỉnh Bình Dương - Ảnh minh hoạ 3" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Trần Văn Nam (bìa trái) - Ủy viên Ban Chấp hànhTrung ương Đảng, Bí thư Tỉnh ủy, Trưởng Đoàn Đại biểu Quốc hội tỉnh và ông Trần Thanh Liêm (bìa phải) - Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh tặng hoa cho ông Nguyễn Thanh Liêm (thứ 2 từ trái qua) và ông Nguyễn Văn Lộc (thứ 2 từ phải qua)​</span><br></p><p style="text-align:justify;">Hội nghị cũng đã thống nhất 100% thông ​qua Tờ trình hiệp thương thay thế chức vụ Chủ tịch Ủy ban MTTQ Việt Nam tỉnh khóa VIII, nhiệm kỳ 2014-2019 đối với ông Nguyễn Thanh Liêm, lý do nghỉ hưu và đề cử ông Nguyễn Văn Lộc - Ủy viên Ban Thường vụ Tỉnh ủy, Trưởng Ban Dân vận Tỉnh ủy kiêm Chủ tịch Ủy ban MTTQ Việt Nam tỉnh Bình Dương khóa VIII, nhiệm kỳ 2014-2019.​</p><p style="text-align:center;"><img src="/uploads/news/2019_03/mt4-key-21022019163340.jpg" alt="Ông Nguyễn Văn Lộc giữ chức Chủ tịch Ủy ban MTTQ Việt Nam tỉnh Bình Dương - Ảnh minh hoạ 4" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Trần Văn Nam - Ủy viên Ban Chấp hànhTrung ương Đảng, Bí thư Tỉnh ủy, Trưởng Đoàn Đại biểu Quốc hội tỉnh​ phát biểu tại hội nghị</span><br></p><p style="text-align:justify;">Phát biểu tại hội nghị, ông Trần Văn Nam - Ủy viên Ban chấp hành Trung ương Đảng, Bí thư Tỉnh ủy,Trưởng Đoàn Đại biểu Quốc hội tỉnh đã đánh giá cao những kết quả của Ủy ban MTTQ Việt Nam tỉnh đạt được trong công tác vận động nhân dân, phát huy dân chủ ở cơ sở, thực hiện hiệu quả các cuộc vận động góp phần xây dựng hệ thống chính trị vững mạnh. Ông mong muốn Chủ tịch Ủy ban MTTQ Việt Nam Nguyễn Văn Lộc tiếp tục phát huy truyền thống của MTTQ Việt Nam thực hiện tốt chức năng đoàn kết, tập hợp khối đại đoàn kết toàn dân, tham gia phản biện xã hội, nâng cao đời sống nhân dân, không ngừng đổi mới phương thức hoạt động, góp phần vào quá trình xây dựng và phát triển tỉnh Bình Dương trở thành đô thị văn minh-hiện đại.</p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(16, 'Số điện thoại đường dây nóng bảo đảm trật tự an toàn giao thông dịp nghỉ Tết Nguyên đán Kỷ Hợi và mùa Lễ hội Xuân 2019', 'TTĐT - ​Ủy ban An toàn giao thông Quốc gia thông báo số điện thoại đường dây nóng để tiếp nhận các ý kiến phản ánh của người dân về hoạt động vận tải, tình hình trật tự an toàn giao thông &#40;TTATGT&#41; xảy ra trong dịp nghỉ Tết Nguyên đán Kỷ Hợi và mùa Lễ hội Xuân 2019.', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass6C12395C41074EEA925F89284FED3F92"><p style="text-align:justify;">​<span style="background-color:transparent;">Theo đó, để p</span><span style="background-color:transparent;">hản ánh về xử lý vi phạm hành chính trong lĩnh vực giao thông đường bộ, đường s</span><span style="background-color:transparent;">ắ</span><span style="background-color:transparent;">t, đường thủ</span><span style="background-color:transparent;">y</span><span style="background-color:transparent;"> nội địa; tình hình</span><span style="background-color:transparent;"> TTATGT</span><span style="background-color:transparent;">, ùn tắc giao thông</span><span style="background-color:transparent;">,</span><span style="background-color:transparent;"> liên h</span><span style="background-color:transparent;">ệ</span><span style="background-color:transparent;">: Cục</span><span style="background-color:transparent;"> C</span><span style="background-color:transparent;">ảnh sát giao thông</span><span style="background-color:transparent;">, số điện thoại: </span><span style="background-color:transparent;">0995</span><span style="background-color:transparent;">.</span><span style="background-color:transparent;">676</span><span style="background-color:transparent;">.</span><span style="background-color:transparent;">767</span><span style="background-color:transparent;">, </span><span style="background-color:transparent;">0692</span><span style="background-color:transparent;">.</span><span style="background-color:transparent;">342608</span><span style="background-color:transparent;">.</span></p><p style="text-align:justify;"><span style="background-color:transparent;">Để p</span><span style="background-color:transparent;">hản ánh c</span><span style="background-color:transparent;">ác</span><span style="background-color:transparent;"> th</span><span style="background-color:transparent;">ô</span><span style="background-color:transparent;">ng ti</span><span style="background-color:transparent;">n</span><span style="background-color:transparent;"> về lĩnh vực giao thông đường bộ</span><span style="background-color:transparent;">, liên hệ: Vụ Vận tải – Tổng cục đường bộ Việt Nam, số điện thoại: 0983.608.989; Vụ An toàn giao thông - Tổng cục đường bộ Việt Nam, số điện thoại: 0916.608.085; Vụ Kết cấu hạ tầng đường bộ - Tổng cục đường bộ Việt Nam, số điện thoại: 0903.479.808; Vụ Vận tải - Bộ Giao thông vận tải, số điện thoại: 0964.045.445; Thanh tra Bộ Giao thông vận tải, số điện thoại: 0962.665.953; Kiểm soát tải trọng xe – Tổng cục đường bộ Việt Nam, số điện thoại: 0915.869.900.</span></p><p style="text-align:justify;">Để phản ánh và được giải đáp những thông tin liên quan đến lĩnh vực hàng không, liên hệ: Cục Hàng không Việt Nam, số điện thoại: 0916.562.119.</p><p style="text-align:justify;">Để phản ánh và được giải đáp những thông tin liên quan đến lĩnh vực đường thủy nội địa, liên hệ: Cục Đường thủy nội địa Việt Nam, số điện thoại: 0243.5481888 và 0942.107.474.</p><p style="text-align:justify;"> </p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(17, 'Tổng kết công tác kiểm tra, giám sát và thi hành kỷ luật Đảng năm 2018', 'TTĐT - ​Sáng 29-01, tại Trung tâm Hành chính tỉnh Bình Dương, Ủy ban Kiểm tra Tỉnh ủy đã tổ chức Hội nghị tổng kết công tác kiểm tra, giám sát và thi hành kỷ l​uật Đảng năm 2018; triển khai phương hướng, nhiệm vụ năm 2019. Ông Trần Văn Nam - Ủy viên Trung ương Đảng, Bí thư Tỉnh ủy, Trưởng Đoàn Đại biểu Quốc hội tỉnh dự và chỉ đạo hội nghị.​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClassB01E7380445C45B68029B365ECD69870"><p style="text-align:justify;">Trong năm 2018, cấp ủy, Ủy ban Kiểm tra các cấp đã lãnh đạo, chỉ đạo và tổ chức thực hiện toàn diện các nhiệm vụ quy định tại Điều 30, 32 Điều lệ Đảng và nhiệm vụ cấp ủy giao đạt chất lượng, hiệu quả. Ủy ban Kiểm tra các cấp chủ động tham mưu, giúp cấp ủy xây dựng và thực hiện chương trình kiểm tra, giám sát có trọng tâm, trọng điểm và phù hợp với tình hình thực tế của Đảng bộ; kịp thời tham mưu cấp ủy tổ chức nghiên cứu, quán triệt, triển khai thực hiện quy định của Bộ Chính trị và hướng dẫn của Ủy ban Kiểm tra Trung ương; xây dựng và ban hành quy trình kiểm tra và thi hành kỷ luật trong Đảng, quy định cụ thể hơn hoạt động của các đoàn kiểm tra, giám sát; từng bước thực hiện quy định cung cấp thông tin cho báo chí sau các kỳ họp Ủy ban Kiểm tra.</p><p style="text-align:justify;">Trong năm, cấp ủy các cấp đã kiểm tra 691 tổ chức Đảng và 2.333 đảng viên (tăng 87 tổ chức Đảng và 286 đảng viên so với năm 2017). Các cuộc kiểm tra, giám sát hoàn thành nội dung đề ra, đúng nguyên tắc, quy trình, quy định. Qua kiểm tra, giám sát đã kết luận rõ ưu điểm, khuyết điểm các tổ chức Đảng, đảng viên, nhận xét, đánh giá đúng tình hình thực hiện nhiệm vụ của tổ chức Đảng cấp dưới, một số tổ chức Đảng, đảng viên còn có hạn chế, thiếu sót trong lãnh đạo, chỉ đạo thực hiện nhiệm vụ đã được cấp ủy và Ủy ban Kiểm tra các cấp kết luận và chỉ đạo khắc phục, sửa chữa chấn chỉnh rút kinh nghiệm trong thời gian tới.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/ktdang2-key-29012019155021.jpg" alt="Tổng kết công tác kiểm tra, giám sát và thi hành kỷ luật Đảng năm 2018" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Bí thư Tỉnh ủy Trần Văn Nam phát biểu chỉ đạo tại hội nghị</span><br></p><p style="text-align:justify;">Phát biểu chỉ đạo tại hội nghị, Bí thư Tỉnh ủy Trần Văn Nam lưu ý, trong năm 2019, cấp ủy, Ủy ban Kiểm tra các cấp tăng cường lãnh đạo, chỉ đạo thực hiện công tác kiểm tra, giám sát, thi hành kỷ luật trong Đảng đúng quy định, quy trình. Đồng thời tăng cường vai trò của Thường trực cấp ủy, Ủy viên Ban Thường vụ cấp ủy, nhất là người đứng đầu trong việc tham gia làm trưởng đoàn kiểm tra, giám sát của cấp ủy. Ủy ban Kiểm tra các cấp nghiên cứu kỹ các quy định, hướng dẫn của Trung ương để thực hiện tốt nhiệm vụ kiểm tra, giám sát, chú trọng các vụ việc, vấn đề gây bức xúc trong dư luận; chọn việc, chọn thời điểm và cách làm phù hợp để đạt hiệu quả cao nhất; công khai kết quả kiểm tra, giám sát. Cùng với đó, tích cực, chủ động tham gia vào việc tổ chức Đại hội Đảng bộ các cấp lần thứ XI.</p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(18, 'Bình Dương&#x3A; Hội nghị quân chính năm 2018', 'TTĐT - ​Sáng 21-01, tại TP.Thủ Dầu​ Một, Bộ Chỉ huy Quân sự &#40;CHQS&#41; tỉnh đã tổ chức Hội nghị quân chính năm 2018, triển khai nhiệm vụ năm 2019. Ông Trần Thanh Liêm - Phó Bí thư Tỉnh uỷ, Chủ tịch UBND tỉnh đã đến dự. ​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass30DD1C31D8C84A6A97BC3FC2EA269B5F"><p style="text-align:justify;">Năm 2018, Bộ CHQS tỉnh đã thực hiện nghiêm các chỉ thị, nghị quyết, kế hoạch của cấp trên. Lực lượng vũ trang tỉnh làm tốt công tác quân sự - quốc phòng địa phương trên tất cả các mặt công tác, đạt chỉ tiêu đề ra. Làm tốt vai trò tham mưu cho cấp uỷ, chính quyền địa phương, tăng cường các biện pháp giữ vững ổn định an ninh chính trị, trật tự an toàn xã hội trong tỉnh, đặc biệt là trong thời gian diễn ra Kỳ họp thứ 5, Quốc hội khoá XIV. Đảm bảo chế độ trực sẵn sàng chiến đấu; thực hiện tốt công tác tuyển chọn, gọi công dân nhập ngũ; công tác xây dựng Đảng, công tác chính trị được quán triệt, triển khai toàn diện trên các mặt, đáp ứng tốt yêu cầu, nhiệm vụ được giao; làm tốt công tác hậu phương quân đội,  đền ơn đáp nghĩa. Chăm lo đời sống vật chất, tinh thần cho các đối tượng chính sách, cán bộ, chiến sĩ trong lực lượng vũ trang được nâng cao; công tác hậu cần, tài chính, kỹ thuật luôn bảo đảm kịp thời phục vụ cho hoạt động sẵn sàng chiến đấu...</p><p style="text-align:center;"><img src="/uploads/news/2019_03/quanchinh2-key-22012019113610.jpg" alt="Bình Dương: Hội nghị quân chính năm 2018" style="margin:5px;" /><br></p><p style="text-align:center;"><img src="/uploads/news/2019_03/quanchinh3-key-22012019113629.jpg" alt="Bình Dương: Hội nghị quân chính năm 2018 - Ảnh minh hoạ 2" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Đại biểu tham dự hội nghị​</span><br></p><p style="text-align:justify;">Phát biểu chỉ đạo hội nghị, ông Trần Thanh Liêm - Phó Bí thư Tỉnh uỷ, Chủ tịch UBND tỉnh đã ghi nhận những nỗ lực tích cực của các cấp, các ngành phối hợp cùng cơ quan quân sự các cấp trên địa bàn tỉnh triển khai thực hiện đạt chất lượng các chỉ tiêu nhiệm vụ quân sự, quốc phòng địa phương năm 2018. Đồng thời ông Trần Thanh Liêm lưu ý, năm 2019, Bộ CHQS tỉnh tỉnh và các sở, ngành, huyện, thị, thành phố cần quán triệt, thực hiện nghiêm các chỉ thị, kế hoạch sẵn sàng chiến đấu của Bộ Quốc phòng, Bộ Tư lệnh Quân khu 7. Tiếp tục làm tốt công tác bồi dưỡng, phổ biến, cập nhật kiến thức quốc phòng và an ninh cho các đối tượng theo đúng kế hoạch. Thực hiện tốt công tác tuyển chọn và gọi công dân nhập ngũ năm 2019, bảo đảm về số lượng, nâng cao chất lượng…</p><p style="text-align:center;"><img src="/uploads/news/2019_03/quanchinh4-key-22012019113657.jpg" alt="Bình Dương: Hội nghị quân chính năm 2018 - Ảnh minh hoạ 3" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Trần Thanh Liêm - Phó Bí thư Tỉnh uỷ, Chủ tịch UBND tỉnh phát biểu chỉ đạo tại hội nghị​</span><br></p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(19, 'Tổng kết công tác nội chính, cải cách tư pháp và phòng, chống tham nhũng năm 2018', 'TTĐT - ​Sáng 21-01, tại Trung tâm Hành chính tỉnh Bình Dương, Ban Nội chính Tỉnh ủy đã tổ chức Hội nghị tổng kết công tác nội chính, cải cách tư pháp và phòng, chống tham nhũng năm 2018; triển khai phương hướng, nhiệm vụ năm 2019. ​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass7B66A384E7674DC59201B6F22E75AA74"><p style="text-align:justify;">Tham dự có ông Võ Văn Bá - Ủy viên Ban Thường vụ Tỉnh ủy, Trưởng Ban Nội chính Tỉnh ủy cùng lãnh đạo các sở, ban, ngành khối Nội chính và đại diện các đơn vị, doanh nghiệp.</p><p style="text-align:justify;">Trong năm 2018, được sự quan tâm lãnh đạo, chỉ đạo kịp thời của cấp ủy, chính quyền, các cơ quan chức năng đã triển khai thực hiện có hiệu quả các nhiệm vụ góp phần giữ vững tình hình an ninh chính trị - trật tự xã hội trên địa bàn; các cấp ủy Đảng, chính quyền địa phương đã cụ thể hoá và ban hành nhiều văn bản chỉ đạo về công tác nội chính và phòng, chống tham nhũng.</p><p style="text-align:justify;">Các cơ quan khối Nội chính đã nỗ lực thực hiện tốt các nhiệm vụ chính trị trọng tâm; phối hợp, chủ động nắm chắc tình hình, quản lý địa bàn, đối tượng không để bị động, bất ngờ; triển khai các phương án đảm bảo an ninh chính trị, tăng cường tấn công, trấn áp các loại tội phạm, đặc biệt là các khu vực giáp ranh, địa bàn trọng điểm. Công tác tuần tra, xử lý hành vi vi phạm an toàn giao thông được thực hiện thường xuyên góp phần khắc phục tình trạng ùn tắc giao thông vào các giờ cao điểm, tai nạn giao thông giảm 3/3 tiêu chí.</p><p style="text-align:justify;">Công tác diễn tập được tiến hành chặt chẽ, đảm bảo an ninh trật tự, an toàn về người và vũ khí trang bị; các ngành chức năng đã phối hợp thực hiện diễn tập khu vực phòng thủ kết hợp với diễn tập phương án xử lý tình huống gây rối an ninh trật tự, bạo loạn, khủng bố, giải quyết con tin năm 2018 sát tình hình thực tế của địa phương.</p><p style="text-align:justify;">Đặc biệt, về công tác thanh tra, kiểm tra, giám sát, giải quyết khiếu nại, tố cáo, trong kỳ toàn tỉnh đã triển khai 11 cuộc thanh tra trách nhiệm về phòng, chống tham nhũng đối với 55 đơn vị. Toàn ngành thanh tra đã thực hiện 47 cuộc thanh tra kinh tế - xã hội. Qua công tác thanh tra kinh tế - xã hội và giải quyết đơn thư khiếu nại, tố cáo chưa phát hiện vụ việc liên quan đến tham nhũng.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/nc1-key-22012019102002.jpg" alt="Tổng kết công tác nội chính, cải cách tư pháp và phòng, chống tham nhũng năm 2018" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;text-align:center;">Toàn cảnh hội nghị</span><br></p><p style="text-align:justify;">Năm 2019, các cấp ủy Đảng, cơ quan Nội chính tỉnh tiếp tục tổ chức triển khai thực hiện hiệu quả các mục tiêu, nhiệm vụ trọng tâm trong Kết luận số 160-KL/TU ngày 26/10/2018 của Tỉnh ủy; đồng thời quán triệt và thực hiện nghiêm các Nghị quyết, Chỉ thị của Đảng và pháp luật của Nhà nước về công tác nội chính, cải cách tư pháp và phòng, chống tham nhũng.</p><p style="text-align:justify;">Tại hội nghị, các đại biểu đã tham luận về một số nội dung liên quan đến công tác nội chính, cải cách tư pháp và phòng, chống tham nhũng tại địa phương, đơn vị mình.</p><p style="text-align:justify;">Dịp này, 05 cá nhân được nhận Kỷ niệm chương "Vì sự nghiệp nội chính Đảng" của Ban Nội chính Trung ương vì có nhiều đóng góp trong công tác nội chính thời gian qua.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/nc2-key-22012019102025.jpg" alt="Tổng kết công tác nội chính, cải cách tư pháp và phòng, chống tham nhũng năm 2018 - Ảnh minh hoạ 2" style="margin:5px;" /><br></p><p style="text-align:center;"><img src="/uploads/news/2019_03/nc3-key-22012019102057.jpg" alt="Tổng kết công tác nội chính, cải cách tư pháp và phòng, chống tham nhũng năm 2018 - Ảnh minh hoạ 3" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Võ Văn Bá - Ủy viên Ban Thường vụ Tỉnh ủy, Trưởng Ban Nội chính Tỉnh ủy trao Kỷ niệm chương "Vì sự nghiệp nội chính Đảng" cho các cá nhân</span><br></p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(20, 'Hội nghị trực tuyến toàn quốc tổng kết công tác phòng, chống tội phạm và tệ nạn xã hội năm 2018', 'TTĐT - ​Chiều 21-01, tại Hà Nội, Ban Chỉ đạo Chương trình Quốc gia phòng, chống tội phạm của Chính phủ &#40;Ban Chỉ đạo 138&#x002F;CP&#41; và Ban Chỉ đạo Quốc gia chống buôn lậu, gian lận thương mại và hàng giả &#40;Ban Chỉ đạo 389 Quốc gia&#41; tổ chức Hội nghị trực tuyến toàn quốc tổng kết công tác năm 2018 và triển khai nhiệm vụ năm 2019. Ông Trương Hòa Bình - Ủy viên Bộ Chính trị, Phó Thủ t​​​ướng Thường trực C​​hính phủ, Trưởng Ban Chỉ đạo 138&#x002F;CP, Trưởng Ban Chỉ đạo 389 Quốc gia chủ trì hội nghị. ', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClassEB4EA4EA0FE9489C8C9EB57C3D4357CF"><p>​<span style="text-align:justify;background-color:transparent;">Tại điểm cầu Bình Dương, tham dự có lãnh đạo các sở, ban, ngành, đoàn thể tỉnh.</span></p><p style="text-align:justify;">Theo báo cáo, năm 2018, các cơ quan chức năng cả nước đã phát hiện 53.240 vụ việc phạm pháp hình sự, giảm 0,61% so với cùng kỳ. Tuy tội phạm hình sự được kiềm chế, nhưng tính chất vẫn nghiêm trọng, cường độ bạo lực gia tăng, có lúc có nơi gây bất an trong nhân dân. Tỷ lệ điều tra khám phá án hình sự đạt 83%. Hầu hết các vụ đặc biệt nghiêm trọng đều được điều tra làm rõ; phát hiện và điều tra khám phá nhiều vụ án kinh tế, tham nhũng, buôn lậu, tội phạm sử dụng công nghệ cao, ma túy, môi trường được dư luận quan tâm. Đặc biệt đã khởi tố, điều tra đưa ra xét xử một số vụ án tham nhũng, kinh tế đặc biệt nghiêm trọng. Theo dự báo, vi phạm ​pháp luật còn xảy ra phức tạp với phương thức, thủ đoạn tinh vi hơn, nếu không có biện pháp phòng ngừa hiệu quả. Riêng tại Bình Dương, năm 2018, phạm pháp hình sự giảm 14%, tội phạm và tệ nạn xã hội từng bước được kiềm chế; 7/13 địa bàn phức tạp về an ninh trật tự dần được chuyển hóa…</p><p style="text-align:center;"><img src="/uploads/news/2019_03/bcd138va389-1.jpg" alt="BCĐ138va389 1.jpg" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;"><img src="/uploads/news/2019_03/bcd138va389-2.jpg" alt="BCĐ138va389 2.jpg" style="margin:5px;" /><br></span></p><p style="text-align:center;"><span style="color:#0000ff;">Toàn cảnh hội nghị tại điểm cầu Bình Dương​</span><br></p><p style="text-align:justify;"> <span style="background-color:transparent;">Song song đó, công tác đấu tranh chống buôn lậu, gian lận thương mại và hàng giả năm 2018 đã được Ban Chỉ đạo 389 và các Bộ, ngành, địa phương chỉ đạo mạnh mẽ, quyết </span><span style="background-color:transparent;">liệt hơn; chú trọng tập trung công tác xây dựng lực lượng, xử lý những vấn đề nóng, nổi cộm, đáp ứng cơ bản các mục tiêu, yêu cầu và hiệu quả công tác năm 2018 cao hơn năm 2017, nhiều đường dây ổ nhóm tội phạm được điều tra, xử lý nghiêm minh đúng pháp luật. Trong năm qua, các lực lượng chức năng cả nước đã phát hiện, bắt giữ, xử lý 202.980 vụ việc vi phạm (giảm 10% so với cùng kỳ năm 2017), thu nộp ngân sách nhà nước đạt 20.123 tỷ 508 triệu đồng (giảm 12% so với cùng kỳ năm 2017), khởi tố 1.979 vụ (tăng 21% so với cùng kỳ năm 2017), bắt giữ 2.339 đối tượng (tăng 10% so với cùng kỳ năm 2017). Riêng Bình Dương, </span><span style="background-color:transparent;">năm 2018 các sở, ngành đã kiểm tra 10.742 vụ (giảm 3,6% so với cùng kỳ 2017), phát hiện 6.749 vụ vi phạm (tăng 0,2% so với cùng kỳ 2017), xử lý 6.705 vụ (giảm 3,8% so với cùng kỳ 2017) với tổng số tiền phạt và truy thu là 624 tỷ 952 triệu đồng (giảm 1,8% so với cùng kỳ 2017)</span><span style="background-color:transparent;">. </span><span style="background-color:transparent;">Các ngành chức năng cũng phát hiện 6.266 vụ gian lận thương mại, đã xử lý với số tiền phạt 177 tỷ 324 triệu đồng, truy thu 442 tỷ 888 triệu đồng</span><span style="background-color:transparent;">  </span><span style="background-color:transparent;">và 21 vụ sản xuất kinh doanh hàng giả, xâm phạm quyền sở hữu trí tuệ xử lý với tổng số tiền phạt là 544 triệu đồng.</span></p><p style="text-align:center;"><span style="background-color:transparent;"><img src="/uploads/news/2019_03/bcd138va389-3.jpg" alt="BCĐ138va389 3.jpg" style="margin:5px;" /><br></span></p><p style="text-align:center;"><span style="background-color:transparent;"><span style="color:#0000ff;">Bình Dương tăng cường các biện pháp chống buôn lậu, gian lận thương mại, hàng giả​</span><br></span></p><p style="text-align:justify;">Phát biểu chỉ đạo tại hội nghị, ông Trương Hòa Bình - Ủy viên Bộ Chính trị, Phó Thủ tướng Thường trực Chính phủ, Trưởng Ban Chỉ đạo 138/CP, Trưởng Ban Chỉ đạo 389 Quốc gia đề nghị cấp ủy, chính quyền các cấp phải xem phòng, chống tội phạm, đảm bảo an ninh trật tự cùng việc chống buôn lậu, gian lận thương mại, hàng giả là nhiệm vụ trọng tâm gắn với nhiệm vụ phát triển kinh tế - xã hội. Trong năm 2019, các Bộ, ngành và địa phương cần triển khai quyết liệt, bám sát các chương trình mục tiêu quốc gia, kế hoạch của Ban chỉ đạo Quốc gia để đổi mới, nâng cao hiệu quả công tác tuyên truyền, phổ biến giáo dục pháp luật. Bên cạnh việc nhân rộng mô hình hay, Ban chỉ đạo các cấp cần dự báo tốt tình hình, diễn biến tội phạm, vi phạm pháp luật để có biện pháp phòng ngừa, đấu tranh có hiệu quả.​</p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(21, 'Ngày 01&#x002F;4&#x002F;2019 sẽ thực hiện Tổng điều tra dân số và nhà ở năm 2019 trên toàn quốc', 'TTĐT -  Chiều 13-3, tại Hà Nội, ông Vương Đình Huệ - Phó Thủ tướng Chính Phủ, Trưởng Ban Chỉ đạo Tổng điều tra dân số và nhà ở Trung ương &#40;viết tắt là BCĐ Trung ương&#41; đã chủ trì  cuộc họp   báo cáo công tác chuẩn bị thu nhập thông tin Tổng điều tra dân số và nhà ở bắt đầu từ ngày 01&#x002F;4&#x002F;2019 và kéo dài trong 25 ngày.', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClassD879F0A18EE142FC811B35EAEA8986FB"><p style="text-align:justify;">​<span style="text-align:justify;background-color:transparent;">Cuộc họp trực tuyến tới 775 điểm cầu, kết nối tới tất cả các cấp huyện trên toàn quốc với 36.000 đại biểu tham dự.</span></p><p style="text-align:justify;">Tại điểm cầu Bình Dương, tham dự có ông Đặng Minh Hưng – Phó Chủ tịch UBND tỉnh, Trưởng BCĐ tỉnh; lãnh đạo các sở, ban, ngành, địa phương, Cục Thống kê tỉnh.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/tongdieutrads-1.jpg" alt="TongdieutraDS 1.jpg" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="font-size:12px;"><span style="line-height:115%;font-family:arial;color:#0000ff;">Toàn cảnh hội nghị tại điểm cầu Bình Dương</span><br></span></p><p style="text-align:justify;">Đây là lần thứ 5 nước ta tiến hành Tổng điều tra dân số và nhà ở, với 5 mục đích chính: Thu thập thông cơ bản về dân số và nhà ở trên toàn quốc để phục vụ công tác nghiên cứu, phân tích quá trình phát triển dân số và nhà ở trên phạm vi toàn lãnh thổ Việt Nam; đáp ứng nhu cầu thông tin để đánh giá kết quả thực hiện các kế hoạch phát triển kinh tế, xã hội giai đoạn 2011-2020, đồng thời là cơ sở quan trọng để xây dựng và hoạch định chiến lược phát triển kinh tế - xã hội đến năm 2030 và tầm nhìn đến năm 2045; phục vụ cho công tác giám sát thực hiện Nghị quyết Trung ương khóa XII về công tác dân số trong tình hình mới; giám sát các mục tiêu phát triển bền vững của Liên Hiệp Quốc mà Chính phủ đã cam kết và cung cấp thông tin phục vụ xây dựng cơ sở dữ liệu tổng hợp của quốc gia về dân số trong giai đoạn hiện nay.​<br></p><p style="text-align:justify;">Tổng điều tra dân số và nhà ở năm 2019 là cuộc Tổng điều tra đầu tiên tại Việt Nam ứng dụng công nghệ thông tin - truyền thông trong tất cả các công đoạn nhằm nâng cao chất lượng số liệu, rút ngắn quá trình xử lý thông tin, công bố sớm kết quả tổng điều tra. Trong đó, áp dụng hai hình thức thu thập thông tin mới là sử dụng thiết bị điện tử di động để điều tra và sử dụng phiếu trực tuyến để các hộ dân cư tự cung cấp thông tin thông qua mạng Internet.</p><p style="text-align:justify;">Theo ông Nguyễn Bích Lâm - Tổng Cục trưởng Tổng cục Thống kê, các địa phương và 3 Bộ liên quan (Quốc phòng, Công an và Ngoại giao) đã thành lập các BCĐ, triển khai các hội nghị tập huấn về công tác phân chia địa bàn điều tra và vẽ sơ đồ nền xã, phường, thị trấn, công tác quản lý và lập Bảng kê hộ, nghiệp vụ và ứng dụng công nghệ thông tin.</p><p style="text-align:justify;">Lực lượng tham gia Tổng điều tra gồm khoảng 9.300 giám sát viên các cấp, khoảng 110.000 điều tra viên thống kê và tổ trưởng điều tra (không bao gồm người tham gia lập bảng kê hộ).</p><p style="text-align:justify;">Công tác lập Bảng kê hộ đã hoàn thành vào ngày 20/01/2019. Tổng số có 217.586 địa bàn điều tra với 26,2 triệu hộ dân cư và trên 94 triệu người được lập bảng kê. Trong đó, nữ chiếm 50,4%; thành phố Hồ Chí Minh dẫn đầu cả nước về tổng số hộ và số người được lập bảng kê, tương ứng là 2,5 triệu hộ và 8,9 triệu người. Tổng số hộ đăng ký tự cung cấp thông tin trên Internet là 68.990 hộ, chiếm 0,26%. Tổng Cục Thống kê đã nâng cấp máy chủ phục vụ Tổng điều tra nhằm bảo đảm việc sao lưu và xử lý số liệu điều tra trực tuyến và phiếu điện tử; giao dự toán ngân sách Nhà nước năm 2019 bao gồm kinh phí tổng điều tra cho các Cục Thống kê cấp tỉnh và các đơn vị sự nghiệp trực thuộc Tổng cục Thống kê.</p><p style="text-align:justify;">Riêng tỉnh Bình Dương, để tổ chức thực hiện Quyết định của Thủ tướng Chính phủ, Tỉnh ủy đã ban hành Chỉ thị số 33-CT/TU ngày 21/01/2019 về thực hiện thắng lợi Tổng điều tra dân số và nhà ở năm 2019. BCĐ tỉnh đã hướng dẫn các BCĐ cấp huyện phối hợp các BCĐ cấp xã tiến hành rà soát, phân định ranh giới hành chính, vẽ sơ đồ nền xã, phường, thị trấn và phân chia địa bàn điều tra. Đến ngày 15/10/2018 đã hoàn thành công tác nghiệm thu kết quả; chụp, quét ảnh sơ đồ nền xã, phường, thị trấn và gửi ảnh đã được đặt tên vào cơ sở dữ liệu ảnh của BCĐ Trung ương, cập nhật danh sách địa bàn điều tra lên trang web hệ thống điều hành tác nghiệp Tổng điều tra dân số và nhà ở năm 2019. <br></p><p style="text-align:center;"><img src="/uploads/news/2019_03/tongdieutrads-2.jpg" alt="TongdieutraDS 2.jpg" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Đặng Minh Hưng – Phó Chủ tịch UBND tỉnh, Trưởng BCĐ tỉnh phát biểu tham luận tại hội nghị</span>​<br></p><p style="text-align:justify;">Tính đến ngày 20/01/2019, tỉnh đã hoàn thành công tác lập bảng kê đơn vị điều tra, báo cáo về BCĐ Trung ương. Từ ngày 22/01/2019 – 25/01/2019, BCĐ tỉnh đã tổ chức 01 lớp tập huấn nghiệp vụ và công nghệ thông tin cho các BCĐ và giảng viên cấp huyện. Công tác tuyển chọn tổ trưởng và điều tra viên được thực hiện theo đúng yêu cầu đề ra, phù hợp với điều kiện dân trí mỗi vùng. Toàn tỉnh đã huy động 2.901 điều tra viên và 151 tổ trưởng điều tra.</p><p style="text-align:justify;">Do đặc thù của tỉnh có nhiều khu công nghiệp, tốc độ đô thị hoá cao nên thu hút rất đông lực lượng lao động từ các tỉnh, thành khác đến sinh sống, làm việc, công tác điều tra dân số và nhà ở sẽ gặp nhiều khó khăn. Để khắc phục, BCĐ tỉnh đã chỉ đạo các BCĐ cấp huyện và cấp xã, tăng cường công tác tuyên truyền nhằm huy động sự tham gia của toàn hệ thống chính trị, tích cực hưởng ứng của toàn thể nhân dân, tạo điều kiện cho các điều tra viên hoàn thành nhiệm vụ.</p><p style="text-align:justify;"><span style="background-color:transparent;">Phát biểu chỉ đạo tại cuộc họp, Phó Thủ tướng Vương Đình Huệ yêu cầu BCĐ, các Bộ, ngành và chính quyền địa phương các cấp tập trung truyền thông, vận động toàn thể nhân dân tham gia Tổng điều tra, bảo đảm an toàn, nhất là ở vùng sâu, vùng xa, vùng biên giới; đánh giá kỹ việc tuyển chọn, tập huấn nghiệp vụ công nghệ thông tin cho điều tra viên khi đây là lần đầu tiên cuộc Tổng điều tra ứng dụng triệt để các tiện ích của công nghệ từ thu thập phiếu, lưu trữ, đánh giá số liệu và xây dựng báo cáo tổng thể. Các Bộ, địa phương quan tâm tới công tác chỉ đạo, phân công nhiệm vụ để thu thập thông tin giữa các địa bàn có đặc điểm phân bổ dân cư khác với trước đây, bảo đảm số liệu xác thực.</span><br></p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(22, 'Lãnh đạo tỉnh Nghệ An thăm và làm việc với Bình Dương về hoạt động thu hút đầu tư, chế biến, xuất khẩu gỗ, và các sản từ gỗ lâm sản', 'TTĐT - Chiều 08-3, tại Trung tâm Hành chính tỉnh, ông Mai Hùng Dũng – Phó Chủ tịch Thường trực UBND tỉnh Bình Dương đã tiếp Đoàn công tác của UBND tỉnh Nghệ An do ông Đinh Viết Hồng - Phó Chủ tịch UBND tỉnh đến thăm và làm việc với Bình Dương về hoạt động thu hút đầu tư, chế biến, xuất khẩu gỗ và các sản phẩm từ gỗ lâm sản. ​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass870CFD51B92041CE9C6AA34A23FFD263"><p style="text-align:justify;">Tham dự Đoàn có ông Trương Đình Tuyển - Nguyên Bộ trưởng Bộ Thương mại Việt Nam, ông Trần Đình Thiên - Nguyên Viện trưởng Viện Kinh tế với tư cách là cố vấn phát triển kinh tế của tỉnh Nghệ An và lãnh đạo các sở, ngành chức năng. </p><p style="text-align:justify;">Phát biểu tại buổi làm việc, ông Đinh Viết Hồng cảm ơn tỉnh Bình Dương đã tạo điều kiện hỗ trợ Nghệ An trong việc phát triển Khu công nghiệp Việt Nam – Singapore (VSIP) trong thời gian vừa qua. Ông cũng báo cáo sơ bộ về những lợi thế của ngành nông nghiệp của Nghệ An, đặc biệt là trong việc cung ứng nguồn nguyên liệu cho ngành gỗ xuất khẩu với 160.000 ha rừng, trong đó có khoảng 150 ha rừng trồng, chủ yếu là cây keo. Ông mong muốn nhận được sự hỗ trợ, hợp tác của chính quyền Bình Dương để phát triển ngành gỗ xuất khẩu của Nghệ An đang còn hạn chế. Ông khẳng định khả năng và kinh nghiệm trồng rừng của Nghệ An  rất tốt. Thêm vào đó, Nghệ An đang có lợi thế về cảng, đường bộ, đường sắt, thuận lợi cho doanh nghiệp (DN) ngành gỗ đầu tư. Nghệ An có tham vọng xây dựng khu công nghiệp và phát triển thành trung tâm chế biến gỗ. Ngày 25/3/2019, Nghệ An sẽ tổ chức Hội nghị ngành gỗ và mong muốn mời lãnh đạo tỉnh, DN gỗ Bình Dương tham dự. </p><p style="text-align:justify;"> </p><p style="text-align:center;"><img src="/uploads/news/2019_03/go2-key-09032019095503.jpg" alt="Lãnh đạo tỉnh Nghệ An thăm và làm việc với Bình Dương về hoạt động thu hút đầu tư, chế biến, xuất khẩu gỗ, và các sản từ gỗ lâm sản" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Mai Hùng Dũng - Phó Chủ tịch Thường trực UBND tỉnh tiếp Đoàn công tác UBND tỉnh Nghệ An</span><br></p><p style="text-align:justify;"></p><p style="text-align:justify;">Chia sẻ với những thuận lợi, khó khăn của tỉnh Nghệ An, Phó Chủ tịch UBND tỉnh Bình Dương Mai Hùng Dũng ủng hộ những định hư​ớng phát triển của Nghệ An và sẵn sàng hỗ trợ, khuyến khích các DN đầu tư vào Nghệ An. ​</p><p style="text-align:center;"><img src="/uploads/news/2019_03/go3-key-09032019095525.jpg" alt="Lãnh đạo tỉnh Nghệ An thăm và làm việc với Bình Dương về hoạt động thu hút đầu tư, chế biến, xuất khẩu gỗ, và các sản từ gỗ lâm sản - Ảnh minh hoạ 2" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Đoàn công tác UBND tỉnh nghệ An thăm và làm việc với Bifa Bình Dương</span><br></p><p style="text-align:justify;"></p><p style="text-align:justify;">Trước đó, sáng cùng ngày, Đoàn đã thăm và làm việc với Hiệp hội chế biến gỗ Bình Dương (Bifa). Đoàn đánh giá cao việc tạo điều kiện cho DN hoạt động tại Bình Dương, trong đó có ngành gỗ. Ông mong muốn Bình Dương tận dụng những lợi thế vốn có để  trở thành trung tâm hội nhập quốc tế của các ngành, đặc biệt là ngành gỗ. Bình Dương có những điều kiện trở thành trung tâm hội nhập quốc tế của Việt Nam, nhất là sau khi sân bay Long Thành đi vào hoạt động. Ông mong muốn DN gỗ Bình Dương mở rộng liên kết với Nghệ An, chuyển dịch một phần năng lực sản xuất cho Nghệ An. </p><p style="text-align:justify;">Đoàn cũng đã đi thăm nhà máy sản xuất gỗ Mifaco (Bình Chuẩn- Thuận An)​.​</p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(23, 'Nghiêm túc triển khai đồng bộ các giải pháp cấp bách khống chế bệnh Dịch tả lợn Châu Phi', 'TTĐT - Đó là chỉ đạo của Thủ tướng Nguyễn Xuân Phúc tại Hội nghị trực tuyến toàn quốc triển khai cấp bách khống chế bệnh Dịch tả lợn Châu Phi &#40;DTLCP&#41; vào ngày 04&#x002F;3&#x002F;2019.', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass8338F3DAE0444BF0B00842EBFB8116F7"><div style="text-align:justify;"></div><p style="text-align:justify;"><span style="font-family:arial;font-size:12px;color:#181818;">​Tham dự có Phó Thủ tướng Trịnh Đình Dũng, Bộ trưởng Nông nghiệp và Phát triển nông thôn Nguyễn Xuân Cường và các Bộ, ngành liên quan.​</span></p><p style="margin:0cm 0cm 0.0001pt;text-align:justify;"><span style="font-family:arial;font-size:12px;color:#181818;">Tại điểm cầu Bình Dương, tham dự có ông Trần Thanh Liêm – Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh; ông Mai Hùng Dũng - Ủy viên Ban Thường vụ Tỉnh ủy, Phó Chủ tịch Thường trực UBND tỉnh và lãnh đạo các sở, ban, ngành, địa phương.</span></p><p style="margin:0cm 0cm 0.0001pt;text-align:center;"><span style="font-family:arial;font-size:12px;color:#181818;"><img src="/uploads/news/2019_03/dichtalon-1.jpg" alt="dichtalon 1.jpg" style="margin:5px;" /><br></span></p><p style="margin:0cm 0cm 0.0001pt;text-align:center;"><span style="font-family:arial;font-size:12px;color:#181818;"><span style="color:#0000ff;">Toàn cảnh hội nghị tại điểm cầu Bình Dương​​</span><br></span></p><p style="text-align:justify;">​​​Theo Bộ Nông nghiệp và Phát triển nông thôn, từ ngày 01/02/2019 đến 03/3/2019, bệnh DTLCP đã xảy ra tại 202 hộ, 64 thôn, 33 xã, 14 huyện của 7 tỉnh, thành phố (Hưng Yên, Thái Bình, Hải Phòng, Thanh Hóa, Hà Nội, Hà Nam và Hải Dương). Tổng số lợn bị mắc bệnh và tiêu hủy là 4.231 con, với tổng trọng lượng tiêu hủy hơn 297 tấn. Nguy cơ bệnh DTLCP lây lan nhanh, ở phạm vi rộng và làm ảnh hưởng lớn đến phát triển chăn nuôi, an sinh xã hội và môi trường là rất lớn.</p><p style="text-align:justify;">Theo nghiên cứu dịch tễ, có 3 nguyên nhân chính khiến bệnh DTLCP lây lan, trong đó 46% là do phương tiện vận chuyển và do con người không thực hiện vệ sinh, phun thuốc khử trùng tiêu độc; 34% là do sử dụng thức ăn thừa; 19% là do vận chuyển lợn sống và các sản phẩm của lợn giữa các vùng. Do bệnh DTLCP không lây nhiễm và gây bệnh ở người nên nhiều người chăn nuôi lợn chủ quan.​​</p><p style="text-align:justify;">Phát biểu tại hội nghị, Bộ trưởng Bộ Nông nghiệp và Phát triển nông thôn Nguyễn Xuân Cường nhận định, DTLCP là bệnh dịch rất nguy hiểm cho ngành chăn nuôi lợn. Bởi lẽ, virus gây bệnh lan truyền rất nhanh bằng nhiều đường, nhiều hình thức và đã xâm nhập vào đàn lợn là tỷ lệ chết rất cao, thậm chí 100%. Trên thế giới chưa tìm ra vacxin phòng, chống. Nếu không khống chế được thì tổn hại về kinh tế sẽ rất lớn.</p><p class="MsoNormal" style="margin-bottom:11.25pt;line-height:normal;background-image:initial;background-position:initial;background-size:initial;background-repeat:initial;background-attachment:initial;background-origin:initial;background-clip:initial;text-align:center;"><span style="font-family:arial;font-size:12px;color:#181818;">​<img src="/uploads/news/2019_03/dichtalon-2.jpg" alt="dichtalon 2.jpg" style="margin:5px;" /><br></span></p><p class="MsoNormal" style="margin-bottom:11.25pt;line-height:normal;background-image:initial;background-position:initial;background-size:initial;background-repeat:initial;background-attachment:initial;background-origin:initial;background-clip:initial;text-align:center;"><span style="color:#0000ff;">Hiện DTLCP đã xảy ra ở 7 tỉnh, thành của Việt Nam</span><br><span style="font-family:arial;font-size:12px;color:#181818;"></span></p><p style="text-align:justify;">Tại Bình Dương, khi có những thông tin về dịch bệnh này bùng phát ở Trung Quốc, UBND tỉnh đã ban hành Kế hoạch số 6089/KH-UBND ngày 17/12/2018 về hành động ứng phó bệnh DTLCP nhằm đồng bộ các biện pháp phòng, chống, ứng phó nguy cơ xâm nhiễm bệnh DTLCP vào địa bàn tỉnh. Ngày 26/02/2019, Chi cục Chăn nuôi, thú y và thủy sản đã có văn bản số 99/CCCNTYVTS-QLDB gửi các trạm chăn nuôi và thú y các huyện, thị xã, thành phố về việc tăng cường phòng, chống dịch bệnh DTLCP.<br></p><p style="text-align:justify;">Phát biểu chỉ đạo tại hội nghị, Thủ tướng Nguyễn Xuân Phúc yêu cầu cả hệ thống chính trị, các cấp, các ngành, doanh nghiệp và người chăn nuôi phải thực hiện nghiêm túc, hiệu quả Chỉ thị 04/CT-TTg ngày 20/2/2019 của Thủ tướng về việc triển khai đồng bộ các giải pháp cấp bách khống chế bệnh DTLCP. Chủ tịch UBND các tỉnh, thành phố phải chịu trách nhiệm trước pháp luật, trước Thủ tướng về kết quả phòng, chống bệnh DTLCP tại địa phương mình quản lý. Thủ tướng yêu cầu Bộ Tài chính phải có hướng dẫn thanh toán kịp thời cho các địa phương. Bộ Thông tin và Truyền thông cần đẩy mạnh tuyên truyền về vấn đề này, để không gây hoang mang và quay lưng với thịt lợn sạch, không để do vấn đề này mà ngành chăn nuôi ở Việt Nam bị ứ đọng, đình trệ.</p><p style="text-align:justify;">Trước đó, để ngăn chặn dịch bệnh có khả năng lây nhiễm từ bên ngoài, Thủ tướng đã chỉ đạo nghiêm cấm mọi hình thức vận chuyển, buôn bán, giết mổ, tiêu thụ lợn, sản phẩm của lợn nhập lậu, không rõ nguồn gốc.</p><div style="text-align:justify;"></div><div style="border:1pt solid windowtext;padding:1pt 4pt;background:none 0% 0% repeat scroll #b8cce4;text-align:justify;"><p style="margin:0cm 0cm 11.25pt;background-image:initial;background-position:initial;background-size:initial;background-repeat:initial;background-attachment:initial;background-origin:initial;background-clip:initial;border:medium none;padding:0cm;"><span style="font-family:arial;font-size:12px;">Liên quan tới công tác hỗ trợ ngành chăn nuôi lợn, Bộ Nông nghiệp và Phát triển nông thôn đề xuất Chính phủ cho phép hỗ trợ 80% giá thị trường đối với lợn con, lợn thịt và tăng gấp 1,5 đến 1,8 lần đối với lợn nái và lợn đực giống buộc phải tiêu hủy. Bộ cũng lưu ý bệnh không lây sang người nên người tiêu dùng không nên quay lưng với các <span style="background-image:initial;background-position:initial;background-size:initial;background-repeat:initial;background-attachment:initial;background-origin:initial;background-clip:initial;">sản phẩm thịt lợn an toàn và bảo đảm</span><span style="background:none 0% 0% repeat scroll #c6d9f1;"> chất lượng.</span></span></p></div><p><br></p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(24, 'Bình Dương tổng kết công tác đầu tư công năm 2018', 'TTĐT - ​Sáng 01-3, tại Trung tâm Hành chính tỉnh Bình Dương, ông Trần Thanh Liêm – Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh chủ trì Hội nghị trực tuyến tổng kết tình hình đầu tư công và công tác đền bù, giải phóng mặt bằng năm 2018 trên địa bàn tỉnh.​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClassB51A1CECF8044A7FA3914D8B8B2881A3"><p>​<span style="text-align:justify;background-color:transparent;">Tham dự có</span><span style="text-align:justify;background-color:transparent;"> ông Mai Hùng Dũng - Ủy viên Ban Thường vụ Tỉnh ủy, Phó Chủ tịch Thường trực UBND tỉnh; lãnh đạo các sở, ban, ngành, đoàn thể tỉnh</span><span style="text-align:justify;background-color:transparent;"> và lãnh đạo 09 huyện, thị, thành phố tại các điểm cầu cấp huyện</span></p><p style="text-align:justify;">Theo báo cáo, tổng nguồn vốn đầu tư công năm 2018 của Bình Dương là trên 7.989 tỷ đồng. Trong năm 2018, có tổng số 1.471 gói thầu được phê duyệt lựa chọn nhà thầu. Tổng khối lượng thực hiện hết năm 2018 là 7.000 tỷ đồng, đạt 87,7% kế hoạch và tổng giá trị giải ngân đến hết tháng 01/2019 đạt gần 6.790 tỷ đồng, đạt 85% kế hoạch. Trong đó có những địa phương đạt khối lượng và tỷ lệ giải ngân cao như: Dầu Tiếng, Bàu Bàng, Phú Giáo và Thuận An. Tuy nhiên, có một số ngành, địa phương có khối lượng và tỷ lệ giải ngân thấp, dưới 66%. </p><p style="text-align:center;"><img src="/uploads/news/2019_03/chutich2-key-15072017074617-key-10082017085236.jpg" alt="chutich2_Key_15072017074617_Key_10082017085236.jpg" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Công tác đầu tư công năm 2018 có nhiều chuyển biến tích cực</span><span style="color:#0000ff;">​</span><br></p><p style="text-align:justify;">Trong năm 2018, có 223 dự án thực hiện công tác báo cáo giám sát, đánh giá đầu tư;  102 dự án thực hiện kiểm tra và 55 công trình, dự án đã hoàn thành đưa vào sử dụng, góp phần thúc đẩy phát triển kinh tế - xã hội và đảm bảo an sinh xã hội của địa phương. Nhìn chung, công tác đầu tư công năm 2018 có những chuyển biến tích cực, song cũng còn tồn tại những hạn chế như công tác đền bù giải phóng mặt bằng chậm, chất lượng công tác chuẩn bị đầu tư chưa cao, năng lực nhà thầu hạn chế, việc phối hợp các ngành, địa phương, giữa chủ đầu tư và nhà thầu chưa thật sự hiệu quả trong giải quyết nhanh các vướng mắc và khó khăn trong quá trình triển khai thi công.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/dtc-2.jpg" alt="ĐTC 2.jpg" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Trần Thanh Liêm – Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh phát biểu tại Hội nghị​​</span><br></p><p style="text-align:justify;">Phát biểu kết luận tại hội nghị, Chủ tịch UBND tỉnh Trần Thanh Liêm yêu cầu các sở, ngành, địa phương cần nghiêm túc quán triệt, triển khai thực hiện Nghị quyết 01/2019 của Chính phủ và kế hoạch đầu tư công năm 2019 của UBND tỉnh đã thông qua. Đồng thời tập trung xử lý đền bù giải tỏa để sớm giao mặt bằng cho chủ đầu tư; rà soát nghiên cứu kỹ các quy định để thực hiện tốt; thực hiện báo cáo liên tục tình hình giải phóng mặt bằng, đền bù, đặc biệt là các công trình t​rọng điểm. Cùng với đó, cần lựa chọn đơn vị tư vấn đủ năng lực, kinh nghiệm và theo dõi, đôn đốc đơn vị thi công đúng tiến độ công trình để không làm kéo dài, chậm trễ. Các huyện, thị xã, thành phố cần đề xuất xây dựng các khu tái định cư các công trình trên địa bàn để dễ dàng thực hiện công tác giải phóng mặt bằng, phục vụ xây dựng công trình.</p><p style="text-align:justify;">Lưu ý vấn đề đầu tư nâng cấp đô thị đang là nhu cầu lớn của tỉnh, Chủ tịch UBND tỉnh yêu cầu các sở, ngành, địa phương phải khắc phục các hạn chế trong công tác đầu tư công, bảo đảm hoàn thành kế hoạch năm 2019.</p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1);
INSERT INTO `tms_vi_news_detail` (`id`, `titlesite`, `description`, `bodyhtml`, `keywords`, `sourcetext`, `files`, `imgposition`, `layout_func`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`) VALUES
(25, 'Hội nghị chính sách phát triển ngành nước&#x3A; Cơ hội, khó khăn, thách thức và kiến nghị', '​TTĐT - Sáng 01-3, tại Trung t​âm Hội nghị và Triển lãm tỉnh Bình Dương, Hội Cấp thoát nước Việt Nam đã tổ chức Hội nghị thường niên với chủ đề &quot;Chính sách phát triển ngành nước&#x3A; Cơ hội, khó khăn, thách thức và kiến nghị&quot;.​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass0217D0AC941B452DB80AAFF36A2268C7"><p style="text-align:justify;">Tham dự có ông Cao Lại Quang - Chủ tịch Hội Cấp thoát nước Việt Nam; ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh Bình Dương; đại diện các Bộ, ban, ngành Trung ương, lãnh đạo một số sở, ban, ngành tỉnh Bình Dương và các doanh nghiệp ngành nước.</p><p style="text-align:justify;">Hội nghị tập trung thảo luận những cơ hội, thách thức, khó khăn trong chính sách phát triển ngành nước Việt Nam và đề xuất những kiến nghị trong thời gian tới. Lãnh đạo Hội Cấp thoát nước Việt Nam, các Bộ, ban, ngành và doanh nghiệp ngành nước đã trình bày các tham luận về những kết quả và bài học kinh nghiệm trong quá trình cổ phần hóa; đổi mới cơ chế về giá nước; hệ thống quy chuẩn và tiêu chuẩn cấp thoát nước Việt Nam; khung chiến lược phát triển doanh nghiệp ngành nước…</p><p style="text-align:justify;">Những năm qua, khung thể chế về phát triển cấp, thoát nước đã từng bước hoàn thiện, góp phần nâng cao hiệu lực quản lý nhà nước cũng như tạo điều kiện thuận lợi cho các doanh nghiệp đầu tư, kinh doanh trong lĩnh vực cấp, thoát nước, đặc biệt là các chính sách liên quan đến xã hội hóa nhằm huy động mọi nguồn vốn và khuyến khích sự tham gia của các thành phần kinh tế. Theo thống kê, 10 năm qua nhiều chỉ tiêu của ngành đều tăng, cụ thể như: Tổng công suất các nhà máy nước đạt khoảng 9 triệu m3; tỷ lệ dân cư đô thị được cung cấp nước sạch qua hệ thống cấp nước tập trung đạt 86%; tổng lượng nước thải được xử lý gần 1 triệu m3/ngày tương ứng với tỷ lệ xử lý nước thai đô thị đạt khoảng 15-16%; 193/223 khu công nghiệp tập trung đang hoạt động có nhà máy xử lý nước thải tập trung.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/nganhnuoc2-key-01032019141346.jpg" alt="Hội nghị chính sách phát triển ngành nước: Cơ hội, khó khăn, thách thức và kiến nghị" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Nguyễn Hồng Tiến - Phó Chủ tịch kiêm Tổng thư ký trình bày tham luận tại hội nghị</span><br></p><p style="text-align:justify;">Mặc dù vậy, cơ chế chính sách phát triển ngành nước vẫn còn nhiều bất cập, đó là chưa thống nhất trong các văn bản quy phạm pháp luật hoặc các quy định trong các văn bản pháp luật chưa được cập nhật, bổ sung, sửa đổi; nhiều quy định về ưu đãi hỗ trợ chưa được thực hiện; các quy định về cổ phần hóa và quản lý doanh nghiệp sau cổ phần hóa còn thiếu hoặc chưa hợp lý… Do đó, các đại biểu kiến nghị cần nghiên cứu, bổ sung các văn bản quy phạm pháp luật (Luật Giá, Luật Đầu tư, Luật Bảo vệ môi trường, Luật Xây dựng, Luật Giao thông đường bộ…) đảm bảo tính thống nhất và đồng bộ; nghiên cứu xây dựng và ban hành Luật Cấp nước, Luật Thoát nước và xử lý nước thải; nghiên cứu lộ trình cổ phần hóa các doanh nghiệp ngành nước cho phù hợp với địa phương…</p><p style="text-align:center;"><img src="/uploads/news/2019_03/nganhnuoc3-key-01032019141418.jpg" alt="Hội nghị chính sách phát triển ngành nước: Cơ hội, khó khăn, thách thức và kiến nghị - Ảnh minh hoạ 2" style="margin:5px;" /><br></p><p style="text-align:center;"><img src="/uploads/news/2019_03/nganhnuoc4-key-01032019141434.jpg" alt="Hội nghị chính sách phát triển ngành nước: Cơ hội, khó khăn, thách thức và kiến nghị - Ảnh minh hoạ 3" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Các gian hàng trưng bày mô hình cấp thoát nước tại hội nghị</span><br></p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(26, 'Nâng cao hiệu quả hoạt động Hội đồng giám sát xổ số kiến thiết tỉnh', 'TTĐT - ​Chiều 28-02, tại TP.Thủ Dầu Một, ông Mai Hùng Dũng - Phó Chủ tịch Thường trực UBND tỉnh, Chủ tịch Hội đồng giám sát xổ số kiến thiết tỉnh đã chủ trì Hội nghị tổng kết hoạt động giám sát xổ số kiến thiết năm 2018; triển khai phương hướng, nhiệm vụ năm 2019. ​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClassD501964BBC014C16BB19881B645FD459"><p style="text-align:justify;">​Trong năm 2018, hoạt động kinh doanh xổ số kiến thiết có nhiều thách thức lớn trong việc giữ vững tỷ lệ tiêu thụ khi tăng cặp vé phát hành. Bên cạnh đó là sự cạnh tranh, phân chia thị phần gay gắt của xổ số điện toán khi liên tục tăng thêm các loại hình dự thưởng. Hội đồng giám sát đã tăng cường giám sát công tác tổ chức quay số mở thưởng; việc thu hồi vé số tự chọn thủ công; việc kiểm tra định kỳ và đột xuất thiết bị quay số mở thưởng và các nhiệm vụ khác được quy định tại Quy chế tổ chức và hoạt động của Hội đồng giám sát xổ số kiến thiết… Với 52 kỳ quay số mở thưởng, các thành viên Hội đồng và ủy nhiệm đã thực hiện giám sát đầy đủ các công việc từ khâu kiểm tra dấu niêm phong; giám sát tổng quan tình hình trang thiết bị; các điều kiện để chuẩn bị cho buổi quay số; giám sát về thời gian và quy trình tổ chức quay số mở thưởng cho đến khi kết thúc buổi quay số.</p><p style="text-align:justify;"><span style="background-color:transparent;">Đối với các điểm nhờ thu hộ và Ban giám sát cấp huyện, Hội đồng đã thực hiện kiểm tra, giám sát kết quả thu hồi vé ế, ký xác nhận bản fax/email bảng kê tổng hợp vé ế của các điểm thu hộ cũng như giám sát việc niêm phong vé ế đã thu hồi… Nhìn chung, Hội đồng giám sát và cán bộ ủy nhiệm đã hoạt động tích cực, trách nhiệm, thực hiện nghiêm túc, đúng quy chế UBND tỉnh ban hành, không để xảy ra sai sót, tiêu cực. Đảm bảo tính khách quan, trung thực, bảo vệ quyền lợi của người mua vé số, góp phần giúp Công ty xổ số kiến thiết tỉnh tổ chức, quản lý hiệu quả hoạt động kinh doanh cũng như chấp hành nghiêm quy định của Bộ Tài chính. Với kết quả trong năm 2018, Công ty đã hoàn thành vượt mức các chỉ tiêu, cụ thể tổng doanh thu đạt 4.222,1 tỷ đồng, tăng 17,9% so với năm 2017, vượt 11,7% so với kế hoạch năm; nộp ngân sách 1.353,8 tỷ đồng, vượt 8% chỉ tiêu tỉnh giao; tỷ suất lợi nhuận sau thuế trên vốn tổng sở hữu đạt 92,6%, vượt 12,6% so chỉ tiêu tỉnh giao.</span></p><p style="text-align:center;"><span style="background-color:transparent;"><img src="/uploads/news/2019_03/xskt2-key-01032019140903.jpg" alt="Nâng cao hiệu quả hoạt động Hội đồng giám sát xổ số kiến thiết tỉnh" style="margin:5px;" /><br></span></p><p style="text-align:center;"><span style="background-color:transparent;"><span style="color:#0000ff;">Ông Mai Hùng Dũng - Phó Chủ tịch Thường trực UBND tỉnh phát biểu tại hội nghị</span><br></span></p><p style="text-align:justify;">Phát biểu chỉ đạo tại hội nghị, ông Mai Hùng Dũng đánh giá cao những kết quả của Công ty cũng như của Hội đồng giám sát đạt được trong năm 2018. Năm 2019, ông đề nghị Hội đồng giám sát tập trung kiện toàn các thành viên, điều chỉnh quy chế hoạt động giám sát, xây dựng quy trình giám sát, tiếp tục nâng cao hiệu quả hoạt động theo đúng chức năng, nhiệm vụ quy định của UBND tỉnh.</p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(27, 'Hội nghị tham vấn định hướng hoàn thiện thể chế chính sách về đầu tư nước ngoài trong bối cảnh mới', 'TTĐT- ​Chiều 14-02, tại Trung tâm Hội nghị và Triển lãm tỉnh Bình Dương, Bộ Kế hoạch và Đầu tư phối hợp với UBND tỉnh Bình Dương tổ chức Hội nghị tham vấn định hướng hoàn thiện thể chế chính sách về đầu tư nước ngoài trong bối cảnh mới. Ông Vương Đình Huệ - Uỷ viê​​n Bộ Chính trị, Phó Thủ tướng Chính phủ chủ trì hội nghị.​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass590B9A1A04374399BB073E51B7022722"><p style="text-align:justify;">Dự hội nghị có trên 650 đại biểu đến từ Ban Kinh tế Trung ương, lãnh đạo một số Bộ, ngành, lãnh đạo UBND, Sở Kế hoạch và Đầu tư, Ban quản lý Khu kinh tế, khu công nghiệp các địa phương khu vực phía Nam, đại diện cơ quan ngoại giao, tổ chức quốc tế, Hiệp hội doanh nghiệp, các nhà đầu tư trong nước và nước ngoài. Về phía tỉnh Bình Dương, tham dự có ông Trần Văn Nam - Uỷ viên Trung ương Đảng, Bí thư Tỉnh uỷ, Trưởng Đoàn Đại biểu Quốc hội tỉnh; ông Trần Thanh Liêm - Phó Bí thư Tỉnh uỷ, Chủ tịch UBND tỉnh và lãnh đạo các sở, ban, ngành.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/fdi2-key-14022019171712.jpg" alt="Hội nghị tham vấn định hướng hoàn thiện thể chế chính sách về đầu tư nước ngoài trong bối cảnh mới" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Phó Thủ tướng Chính phủ Vương Đình Huệ phát biểu tại hội nghị</span><br></p><p style="text-align:justify;">Phát biểu tại hội nghị, Phó Thủ tướng Vương Đình Huệ khẳng định, trong 30 năm qua, kết quả thu hút và sử dụng đầu tư nước ngoài (FDI) là một minh chứng về thành tựu đổi mới và hội nhập của Việt Nam. Hết năm 2018, có 27.353 dự án FDI đang hoạt động, từ 130 quốc gia và vùng lãnh thổ, với tổng vốn đầu tư cam kết 340,1 tỷ đô la Mỹ, hơn 191 tỷ đô la Mỹ đã thực hiện. FDI có mặt ở tất cả các địa phương, trong đó khu vực Đông Nam bộ chiếm 43,6% tổng vốn đăng ký. </p><p style="text-align:justify;">Phó Thủ tướng đánh giá, khu vực FDI là nguồn vốn quan trọng trong tổng vốn đầu tư phát triển toàn xã hội; thúc đẩy chuyển dịch cơ cấu kinh tế. FDI cũng giữ vai trò chủ đạo trong xuất khẩu, từng bước đưa Việt Nam tham gia vào mạng sản xuất và chuỗi giá trị toàn cầu; thực hiện chuyển giao công nghệ ở một số ngành, lĩnh vực; bước đầu hình thành mối liên kết giữa khu vực FDI với khu vực trong nước, thúc đẩy phát triển công nghiệp hỗ trợ; đóng góp cho ngân sách nhà nước; hỗ trợ cán cân thanh toán, góp phần ổn định kinh tế vĩ mô; giải quyết việc làm, chuyển đổi cơ cấu việc làm, phát triển nguồn nhân lực, năng suất lao động của nền kinh tế và trở thành một động lực của tăng trưởng. FDI không chỉ là một nguồn lực quan trọng cho phát triển kinh tế - xã hội, mà còn góp phần thúc đẩy hoàn thiện thể chế kinh tế, môi trường đầu tư kinh doanh phù hợp với kinh tế thị trường và thông lệ quốc tế, góp phần đáng kể trong nâng cao vị thế của đất nước. Trong giai đoạn đầu, FDI đã góp phần khai thông, mở rộng quan hệ quốc tế, đưa Việt Nam ra khỏi tình thế khó khăn, bình thường hóa với các quốc gia. </p><p style="text-align:justify;">Tuy nhiên, bên cạnh những kết quả đạt được, việc thu hút và sử dụng FDI thời gian qua còn một số hạn chế, bất cập. Liên kết của khu vực FDI đến khu vực trong nước và hiệu ứng lan tỏa năng suất chưa cao. Chuyển giao công nghệ từ khu vực FDI chưa đạt hiệu quả mong muốn. FDI từ các tập đoàn xuyên quốc gia và vào lĩnh vực sử dụng công nghệ cao, công nghệ nguồn còn hạn chế. Phát triển kết cấu hạ tầng và nông nghiệp là những lĩnh vực Việt Nam ưu tiên, có nhu cầu và tiềm năng lớn, nhưng kết quả thu hút FDI chưa tương xứng. Một số dự án FDI chưa tuân thủ nghiêm túc quy định của pháp luật bảo vệ môi trường. Phó Thủ tướng nhấn mạnh, trong bối cảnh, tình hình khu vực và thế giới đang diễn biến nhanh chóng và phức tạp, xuất hiện những nhân tố mới có tầm ảnh hưởng sâu, rộng, kéo theo việc thay đổi chính sách của nhiều quốc gia, nền kinh tế lớn, đặt ra yêu cầu cho Việt Nam phải tiếp tục hoàn thiện hơn nữa thể chế, chính sách và điều chỉnh mục tiêu, định hướng thu hút, sử dụng FDI, gắn kết FDI với Chiến lược phát triển kinh tế - xã hội giai đoạn 2021-2030. Do đó, ông mong muốn trên cơ sở nhận định, đánh giá tình hình, đặc biệt là xu hướng thay đổi trong bối cảnh cuộc Cách mạng công nghiệp 4.0, hội nghị sẽ đề xuất những mục tiêu, định hướng cụ thể, hiến kế giúp Chính phủ hoàn thiện thể chế chính sách thu hút FDI trong thời gian tới. Trên cơ sở các ý kiến tại hội nghị, giao Bộ Kế hoạch và Đầu tư cùng các bộ, ngành liên quan hoàn thiện Đề án về thu hút đầu tư nước ngoài trình Chính phủ và Bộ Chính trị.​</p><p style="text-align:center;"><img src="/uploads/news/2019_03/fdi4-key-14022019171808.jpg" alt="Hội nghị tham vấn định hướng hoàn thiện thể chế chính sách về đầu tư nước ngoài trong bối cảnh mới - Ảnh minh hoạ 2" style="margin:5px;" /><br></p><p style="text-align:center;"><img src="/uploads/news/2019_03/fdi5-key-14022019171852.jpg" alt="Hội nghị tham vấn định hướng hoàn thiện thể chế chính sách về đầu tư nước ngoài trong bối cảnh mới - Ảnh minh hoạ 3" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Đại biểu tham dự hội nghị</span><br></p><p style="text-align:justify;">Hội nghị đã nghe ý kiến tham luận của lãnh đạo UBND các tỉnh, thành, đại diện các tổ chức quốc tế, các doanh nghiệp FDI về các vấn đề: Kinh nghiệm thu hút FDI trong lĩnh vực dịch vụ, công nghệ cao; khuyến nghị thu hút FDI trong bối cảnh các hiệp định thương mại tự do (FTA) thế hệ mới; giải pháp, chính sách tăng cường thu hút FDI từ các tập đoàn đa quốc gia; phát triển công nghiệp hỗ trợ, tăng cường mối liên kết giữa doanh nghiệp FDI và doanh nghiệp trong nước; khó khăn, vướng mắc và đề xuất thay đổi Luật Đầu tư, Luật Doanh nghiệp và pháp luật liên quan…</p><p style="text-align:justify;">Trình bày tham luận tại hội nghị về "Vai trò của FDI trong việc phát triển công nghiệp gắn với phát triển đô thị thông minh tại tỉnh Bình Dương", ông Trần Thanh Liêm - Chủ tịch UBND tỉnh cho biết, hiện nay tỉnh Bình Dương đã thu hút trên 3.500 dự án đầu tư trực tiếp nước ngoài từ 64 quốc gia và vùng lãnh thổ, với tổng vốn đăng ký hơn 32,5 tỷ đô la Mỹ; trở thành địa phương đứng thứ 3 trong cả nước về thu hút vốn đầu tư nước ngoài. Tính riêng trong năm 2018, khu vực doanh nghiệp FDI đóng góp trên 49,6% tổng vốn đầu tư toàn xã hội và chiếm gần 20% trong tổng thu ngân sách của tỉnh; góp phần cho GRDP bình quân đầu người đạt 130,3 triệu đồng. </p><p style="text-align:center;"><img src="/uploads/news/2019_03/fdi3-key-14022019171941.jpg" alt="Hội nghị tham vấn định hướng hoàn thiện thể chế chính sách về đầu tư nước ngoài trong bối cảnh mới - Ảnh minh hoạ 4" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Trần Thanh Liêm - Chủ tịch UBND tỉnh Bình Dương phát biểu tham luận tại hội nghị</span><br></p><p style="text-align:justify;">Với thành quả từ công cuộc phát triển công nghiệp và nguồn lực từ vốn đầu tư nước ngoài; đồng thời đáp ứng những đòi hỏi ngày càng cấp bách của cuộc Cách mạng công nghiệp 4.0, năm 2016, tỉnh Bình Dương đã mạnh dạn đổi mới mô hình phát triển, tạo bước đột phá trong thu hút đầu tư, hình thành động lực tăng trưởng mới cho sự phát triển bền vững thông qua việc triển khai Đề án "Thành phố Thông minh - Bình Dương" từ những kinh nghiệm được đúc kết của thành phố kết nghĩa Eindhoven - Hà Lan. Tỉnh cũng tiến hành triển khai chương trình đổi mới thu hút đầu tư giai đoạn 2016-2020, hướng đến với mục tiêu tập trung thu hút đầu tư vào các đối tác có tiềm lực kinh tế mạnh, các tập đoàn kinh tế lớn trên thế giới; song song với tiếp tục củng cố phát triển các thị trường truyền thống; tăng cường kêu gọi, thu hút đầu tư nước ngoài vào các lĩnh vực công nghệ cao, giá trị gia tăng cao, ít thâm dụng lao động, thân thiện với môi trường; tập trung thu hút vào các khu công nghiệp, cụm công nghiệp đã được quy hoạch. Chú trọng thu hút đầu tư trong nước đối với ngành công nghiệp phụ trợ, tham gia vào chuỗi giá trị toàn cầu của các tập đoàn đa quốc gia. </p><p style="text-align:justify;">Các chiến lược đột phá, đổi mới thu hút đầu tư, hướng tới thành phố thông minh trong thời gian qua bước đầu đã tạo được những ảnh hưởng tích cực mang tầm quốc tế. Năm 2018, Bình Dương được Diễn đàn cộng đồng thông minh Thế giới (ICF) đưa vào danh sách 21 Thành phố có chiến lược phát triển Thành phố thông minh (Smart21) và trở thành thành viên của Hiệp hội Đô thị Khoa học thế giới WTA; tỉnh đã tổ chức thành công 2 Hội nghị quốc tế là Diễn đàn đổi mới sáng tạo toàn cầu nhân Kỷ niệm 20 năm thành lập WTA và Diễn đàn hợp tác Kinh tế Châu Á Horasis. Những thành quả đó đã tiếp tục khẳng định vị thế của tỉnh Bình Dương, mở ra một giai đoạn mới với xu hướng liên kết và hợp tác giữa các tỉnh, thành trong và ngoài nước, tạo thuận lợi cho các doanh nghiệp tiếp cận và vươn xa trong thời đại khoa học công nghệ, củng cố niềm tin của các nhà đầu tư và góp phần cho công tác thu hút đầu tư nước ngoài của tỉnh ngày một thuận lợi, hiệu quả hơn. </p><p style="text-align:justify;">Dịp này, UBND tỉnh Bình Dương đã trao Giấy chứng nhận đầu tư cho 03 dự án FDI với tổng vốn đầu tư 175,8 triệu đô la Mỹ.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/fdi6-key-14022019183049.jpg" alt="Hội nghị tham vấn định hướng hoàn thiện thể chế chính sách về đầu tư nước ngoài trong bối cảnh mới - Ảnh minh hoạ 5" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Phó Thủ tướng Chính phủ Vương Đình Huệ (thứ 6 từ phải qua) và lãnh đạo các Bộ, ngành Trung ương, Bí thư Tỉnh uỷ Bình Dương Trần Văn Nam (thứ 8 từ phải qua) chứng kiến Lễ trao Giấy chứng nhận đầu tư cho các doanh nghiệp</span><br></p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(28, 'Hội nghị trực tuyến toàn quốc triển khai công tác Kế hoạch và Đầu tư năm 2019', 'TTĐT - ​Sáng 16-01, tại Hà Nội, Bộ Kế hoạch và Đầu tư tổ chức Hội nghị trực tuyến toàn quốc tổng kết công tác năm 2018 và triển khai nhiệm vụ năm 2019. Ôn​g Vương Đình Huệ - Ủy viên Bộ Chính trị, Phó Thủ tướng Chính phủ dự và chỉ đạo hội nghị.​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass6FA1FFD578494A138B7DFED8796D8D84"><p style="text-align:justify;">Tại điểm cầu Bình Dương, tham dự có ông Trần Thanh Liêm - Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh và lãnh đạo một số sở, ban, ngành.</p><p style="text-align:justify;">Với phương châm "Tiên phong đổi mới, nắm bắt cơ hội", ngay từ đầu năm 2018, toàn ngành Kế hoạch và Đầu tư đã khẩn trương, quyết liệt tổ chức thực hiện hiệu quả các nhiệm vụ được giao, góp phần tích cực vào kết quả chung thực hiện phát triển kinh tế - xã hội năm 2018 của đất nước.</p><p style="text-align:justify;">Năm 2018 là năm đầu tiên sau nhiều năm các chỉ tiêu kế hoạch Quốc hội giao đều đạt và vượt mục tiêu, với kết quả toàn diện trên nhiều lĩnh vực. Trong đó, kinh tế vĩ mô tiếp tục được duy trì ổn định với kết quả nổi bật là tăng trưởng GDP đạt mức kỷ lục, đạt 7,08% (kế hoạch giao là 6,7%), cao nhất trong 10 năm qua. Chỉ số lạm phát (CPI) được kiểm soát ở mức 3,54%, mô hình tăng trưởng hình thành rõ nét, quy mô nền kinh tế tăng mạnh, chất lượng tăng trưởng được nâng lên, tăng trưởng bền vững hơn; có sự chuyển biến rõ rệt, thực chất hơn trong thực hiện 3 đột phá chiến lược, cơ cấu lại nền kinh tế gắn với đổi mới mô hình tăng trưởng, khắc phục một số tồn tại, yếu kém vốn có của nền kinh tế...</p><p style="text-align:center;"><img src="/uploads/news/2019_03/khdt2-key-16012019165025.jpg" alt="Hội nghị trực tuyến toàn quốc triển khai công tác Kế hoạch và Đầu tư năm 2019" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Năm 2018, tăng trưởng tổng sản phẩm (GRDP) của Bình Dương đạt 9,01%</span><br></p><p style="text-align:justify;">Năm 2019, ngành Kế hoạch và Đầu tư tập trung thực hiện các nhiệm vụ, giải pháp trọng tâm để hoàn thành mục tiêu: Tiếp tục ổn định kinh tế vĩ mô, kiểm soát lạm phát, nâng cao năng suất, chất lượng, hiệu quả, tính tự chủ và sức cạnh tranh của nền kinh tế. Tập trung cải thiện môi trường đầu tư, kinh doanh, thúc đẩy tăng trưởng kinh tế; tạo chuyển biến thực chất hơn trong thực hiện các đột phá chiến lược, cơ cấu lại nền kinh tế gắn với đổi mới mô hình tăng trưởng, nâng cao năng suất, chất lượng, hiệu quả và sức cạnh tranh của nền kinh tế, phát triển kinh tế tư nhân, thực hiện hiệu quả tiến trình hội nhập kinh tế quốc tế; đẩy mạnh đổi mới sáng tạo, ứng dụng khoa học, công nghệ tiên tiến và tận dụng có hiệu quả cuộc Cách mạng công nghiệp 4.0...</p><p style="text-align:center;"><img src="/uploads/news/2019_03/khdt1-key-16012019165126.jpg" alt="Hội nghị trực tuyến toàn quốc triển khai công tác Kế hoạch và Đầu tư năm 2019 - Ảnh minh hoạ 2" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Đại biểu dự hội nghị tại điểm cầu Bình Dương</span><br></p><p style="text-align:justify;">Phát biểu chỉ đạo hội nghị, Phó Thủ tướng Vương Đình Huệ đánh giá cao những kết quả đạt được khá toàn diện của ngành Kế hoạch và Đầu tư trong năm 2018, đặc biệt là công tác hoàn thiện thể chế, pháp luật, quản lý đầu tư công, thực hiện kịp thời các đề án, kế hoạch… Phó Thủ tướng yêu cầu Bộ Kế hoạch và Đầu tư cần tiếp tục đổi mới, quyết liệt hành động để hoàn thành tốt hơn nữa các nhiệm vụ được giao tại các Nghị quyết của Trung ương Đảng, Quốc hội, Chính phủ, phấn đấu hoàn thành tốt các mục tiêu, chỉ tiêu đã đề ra. Đặc biệt là việc hoàn thiện thể chế quản lý đầu tư công, cải thiện môi trường đầu tư kinh doanh, phát triển doanh nghiệp, triển khai các nội dung liên quan đến cuộc Cách mạng công nghiệp 4.0; tăng cường quản lý đầu tư phát triển và triển khai kế hoạch đầu tư công trung hạn giai đoạn 2016-2020...</p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(29, 'Bình Dương xây dựng nền nông nghiệp phát triển bền vững', 'TTĐT - Thời gian qua, ngành Nông nghiệp tỉnh Bình Dương đã đạt nhiều thành tựu đáng khích lệ, đặc biệt là quy mô phát triển và sản lượng của vườn cây ăn quả, nông sản theo quy trình công nghệ cao. Thông qua thực hiện hàng loạt các giải pháp đồng bộ, Bình Dương mong muốn tìm được thị trường tiêu thụ ổn định làm cơ sở để thúc đẩy sản xuất và tiêu thụ sản phẩm nông nghiệp theo hướng bền vững, hướng đến một nền nông nghiệp sạch, cung cấp nông sản an toàn cho tiêu dùng trong nước và xuất khẩu.​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass51914CC36B0B48E580E5265F973C1D1D"><p style="text-align:justify;">​<strong style="background-color:transparent;">Phát triển nông nghiệp công nghệ cao</strong></p><p style="text-align:justify;">Bình Dương là một tỉnh thuộc vùng Đông Nam bộ, tổng diện tích tự nhiên là 269.464 ha, trong đó diện tích đất nông nghiệp trên địa bàn tỉnh là 207.495,5 ha, với điều kiện tự nhiên, điều kiện thời tiết khí hậu và chế độ thủy văn, nguồn nước,… ngành sản xuất Nông nghiệp của tỉnh trong thời gian qua có sự phát triển rõ nét. Việc tìm đầu ra và nâng cao giá trị các mặt hàng nông sản, đặc biệt là trái cây đặc sản, hướng đến xuất khẩu luôn là mục tiêu quan trọng của tỉnh để thúc đẩy lĩnh vực nông nghiệp phát triển. Do đó, tỉnh luôn quan tâm đầu tư, tạo điều kiện tốt nhất cho lĩnh vực này phát triển. Nhờ đó, tuy trong cơ cấu kinh tế của tỉnh hiện nay nông nghiệp chỉ chiếm 3,74% nhưng lại mang về giá trị kinh tế cao, đóng góp vào thành tựu chung của kinh tế - xã hội của địa phương.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/nongnghiepbd-1.jpg" alt="NongnghiepBD 1.jpg" style="margin:5px;" /><br></p><p style="text-align:center;"><img src="/uploads/news/2019_03/nongnghiepbd-2.jpg" alt="NongnghiepBD 2.jpg" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Khu nông nghiệp công nghệ cao An Thái: Mô hình sản xuất nông nghiệp hiện đại, hiệu quả cao</span><span style="color:#0000ff;"> (Ảnh: Báo Bình Dương)​</span><br></p><p style="text-align:justify;">Ông Hồ Trúc Thanh - Phó Giám đốc Sở Nông nghiệp và Phát triển nông thôn cho biết, từ năm 2011, triển khai chuyển dịch cơ cấu ngành nông nghiệp theo hướng hiện đại hóa gắn với công nghiệp chế biến, đến nay, tỉnh Bình Dương đã có 04 khu nông nghiệp công nghệ cao (Khu nông nghiệp công nghệ cao Tiến Hùng, huyện Bắc Tân Uyên; Khu nông nghiệp công nghệ cao tại xã Tân Hiệp và Phước Sang, huyện Phú Giáo; Khu công nghệ cao tại xã Vĩnh Tân, thị xã Tân Uyên; Khu nông nghiệp công nghệ cao An Thái, huyện Phú Giáo) và nhiều trang trại sản xuất theo mô hình nông nghiệp đô thị. Bên cạnh đó, Bình Dương còn có 3.415,4 ha trồng cây có múi và cây ăn quả chủ lực. Diện tích ứng dụng công nghệ cao trong trồng trọt khoảng 2.754,4 ha với các loại cây trồng có giá trị như: Rau, nấm, cây ăn trái, hoa lan, cây cảnh. Diện tích sản xuất nông nghiệp đô thị khoảng 131,6 ha với các loại cây trồng chủ yếu như: Rau thủy canh, rau mầm, nấm, hoa lan, cây cảnh và hoa Tết các loại. Trong đó có Khu nông nghiệp công nghệ cao An Thái do Công ty Cổ phần xây dựng U&I làm chủ đầu tư với diện tích 411,7 ha. Các sản phẩm của Khu nông nghiệp này, đặc biệt là chuối, đã xuất khẩu sang các nước Nhật Bản, Hàn Quốc, Malaysia và các tiểu Vương quốc Ả rập thống nhất. Ngoài ra, công ty còn ký hợp đồng cung cấp sản phẩm cho các siêu thị lớn như Saigon Co.op, Big C, Aeon, Lotte...</p><p style="text-align:justify;"><span style="background-color:transparent;">Thời gian qua, việc ứng dụng công nghệ cao trong sản xuất hoa quả đã được nhiều tổ chức, cá nhân trên địa bàn tỉnh áp dụng rộng rãi, chủ yếu là các loại cây trồng có giá trị như: Dưa lưới, cây có múi, chuối. Trong số này, có nhiều tổ chức, cá nhân đã mạnh dạn đầu tư thâm canh, thiết kế hệ thống tưới phun tự động, nhỏ giọt, trồng cây theo phương pháp thủy canh, áp dụng quy trình sản xuất theo tiêu chuẩn VietGAP, GlobalGAP nhằm đem lại năng suất, chất lượng sản phẩm cao nhất. Tính tới nay, toàn tỉnh có 95 trang trại, cơ sở sản xuất nông nghiệp chứng nhận VietGAP; đã được chứng nhận đạt tiêu chuẩn GlobalGAP với quy mô diện tích 60ha trồng chuối. Cùng với đó, Công ty TNHH Đức Tiến (huyện Bắc Tân Uyên) và Công ty Vinamit Việt Nam tại Bình Dương (huyện Phú Giáo) đạt chứng nhận sản xuất nông nghiệp hữu cơ.</span><br></p><p style="text-align:justify;"><strong>Đẩy mạnh mở rộng thị trường tiêu thụ </strong></p><p style="text-align:justify;">Tại Hội nghị trực tuyến tổng kết ngành Nông nghiệp 2018, Thủ tướng Chính phủ Nguyễn Xuân Phúc đã nhấn mạnh, ngành Nông nghiệp phải khơi gợi được khát vọng của dân tộc, phấn đấu trong 10 năm nữa, Việt Nam lọt vào nhóm 15 quốc gia có nền nông nghiệp phát triển nhất; riêng lĩnh vực chế biến nông sản, phải vào top 10 của thế giới.</p><p style="text-align:justify;">Năm 2019, ngành Nông nghiệp và Phát triển nông thôn cả nước phấn đấu tốc độ tăng trưởng GDP đạt 3%; kim ngạch xuất khẩu đạt 42 - 43 tỷ đô la Mỹ…</p><p style="text-align:justify;">Xác định rõ mục tiêu phát triển ngành Nông nghiệp trong tương lai, Bình Dương đã và đang thực hiện hàng loạt giải pháp nhằm đẩy mạnh kết nối cung cầu trong chuỗi liên kết nông sản, tạo ra bước tiến mới cho thị trường nông sản và trái cây tại Bình Dương.</p><p style="text-align:justify;">Ngày 28/12/2018, Bình Dương đã tổ chức Hội nghị kết nối cung cầu mặt hàng nông sản và trái cây trên địa bản tỉnh năm 2018 với sự tham gia của 150 doanh nghiệp, nhà phân phối trong và ngoài tỉnh; các Hiệp hội ngành hàng, chủ trang trại, hợp tác xã trong tỉnh.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/nongnghiepbd-3.jpg" alt="NongnghiepBD 3.jpg" style="margin:5px;" /><br></p><p style="text-align:center;"><img src="/uploads/news/2019_03/nongnghiepbd-4.jpg" alt="NongnghiepBD 4.jpg" style="margin:5px;" /><br></p><p style="text-align:center;"><img src="/uploads/news/2019_03/nongnghiepbd-5.jpg" alt="NongnghiepBD 5.jpg" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;font-family:arial;background-color:transparent;">Đẩy mạnh kết nối cung cầu mặt hàng nông sản và trái cây trên địa bản tỉnh</span><br></p><p style="text-align:justify;">Ông Hồ Văn Bình - Phó Giám đốc Sở Công Thương cho biết, Hội nghị kết nối cung - cầu mặt hàng nông sản, trái cây tỉnh Bình Dương năm 2018 nhằm mục đích quảng bá thương hiệu sản phẩm nông sản, trái cây sản xuất trên địa bàn tỉnh, tạo điều kiện cho các đơn vị trồng trọt, cung ứng nông sản, trái cây trên địa bàn gặp gỡ, chia sẻ kinh nghiệm để nâng cao năng suất, chất lượng sản phẩm, sức cạnh tranh và đáp ứng nhu cầu tiêu dùng trong nước và xuất khẩu. Hội nghị cũng giúp các đơn vị, doanh nghiệp trồng trọt, cung ứng nông sản tiếp cận các cơ quan, đơn vị phân phối trong và ngoài nước để hình thành chuỗi liên kết tiêu thụ nông sản ổn định, lâu dài.</p><p style="text-align:justify;">Trên thực tế, sản xuất nông nghiệp Bình Dương tỷ lệ lớn vẫn còn ở các hộ nhỏ lẻ; kiến thức và kỹ năng của các chủ hộ sản xuất có lợi thế trong kỹ thuật sản xuất nhưng còn rất lúng túng trong việc tiếp cận thị trường, nắm bắt, dự báo nhu cầu thị trường và khả năng tổ chức sản xuất theo nhu cầu thị trường. Đối với công tác xúc tiến thương mại thời gian qua, chỉ tập trung ở một số sự kiện như hội chợ, triển lãm… với chính sách hỗ trợ cho các đối tượng tham gia chưa cao nên phần nào chưa thu hút các doanh nghiệp, trang trại, hộ sản xuất; cơ sở hạ tầng phục vụ cho công tác xúc tiến thương mại còn thiếu…</p><p style="text-align:justify;">Chính vì vậy, trong thời gian tới, Bình Dương cần tập trung triển khai đồng bộ các giải pháp về tổ chức sản xuất trên từng cơ sở sản xuất, từng hộ nông dân; đầu tư vào nâng cao chất lượng sản phẩm hàng hóa, ứng dụng tiến bộ khoa học kỹ thuật để tạo ra sản phẩm chất lượng tốt, năng suất cao, giá thành cạnh tranh đáp ứng đúng nhu cầu thị trường. Cùng với đó, việc tổ chức sản xuất, tăng cường liên kết hợp tác trong sản xuất theo chuỗi liên kết ngang giữa các hộ sản xuất tạo thành các tổ hợp tác, hợp tác xã nhằm tạo ra lợi thế sản phẩm, chủ động trong quá trình tham gia thị trường tiến tới hình thành chuỗi liên kết dọc, xúc tiến ký kết hợp đồng hợp tác sản xuất, hợp tác tiêu thụ sản phẩm giữa các cơ sở sản xuất với chế biến, tiêu thụ cũng đóng vai trò vô cùng quan trọng.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/nongnghiepbd-6.jpg" alt="NongnghiepBD 6.jpg" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="font-size:12px;"><span style="line-height:115%;color:#0000ff;font-family:arial;">Tăng cường để các nhà phân phối gặp gỡ và trao đổi trực tiếp với nhà sản xuất</span><br></span></p><p style="text-align:justify;">Là một doanh nghiệp chuyên ngành thực phẩm trứng gia cầm và sản phẩm từ gia cầm, ông Phạm Thanh Hùng – Phó Chủ tịch Hội đồng quản trị Công ty cổ phần Ba Huân chia sẻ, công ty luôn hướng đến việc liên kết, hình thành chuỗi giá trị nông nghiệp thông qua việc liên kết với nông dân sản xuất hàng hóa theo quy trình kỹ thuật tiên tiến, nhằm hướng đến sự khép kín, tiến bộ trong sản xuất, tạo nên giá trị kép cho từng sản phẩm nông nghiệp. Trong tất cả chiến lược kinh doanh, công ty đều hướng tới hình thành chuỗi giá trị, phục vụ việc liên kết chặt chẽ giữa nông dân – hợp tác xã; từ đó hình thành kênh phân phối hàng nông sản, tạo lập thị trường nội địa cũng như xuất khẩu, nâng cao năng lực cạnh tranh hàng nông sản Việt Nam trên thị trường trong nước, khu vực và thế giới.</p><p style="text-align:justify;">Ông Hồ Văn Bình - Phó Giám đốc Sở Công Thương nhấn mạnh, khâu tiêu thụ sản phẩm luôn là một khâu quan trọng quyết định kết quả, hiệu quả và quá trình tổ chức sản xuất. Để tổ chức sản xuất và tiêu thụ sản phẩm nông sản trên địa bàn tỉnh Bỉnh Dương đạt kết quả và hiệu quả cao, Sở Công Thương sẽ cùng các sở, ngành liên quan hỗ trợ tích cực ngành Nông nghiệp với các chương trình, kế hoạch dự án triển khai đồng bộ, huy động sự cuộc của các ngành, các cấp và sự tích cực, chủ động của các hộ, cơ sở sản xuất kinh doanh lĩnh vực nông nghiệp. Song song đó, tiếp tục hỗ trợ khai thác các hoạt động xúc tiến thương mại, hỗ trợ xây dựng thương hiệu, hội chợ triển lãm để quảng bá sản phẩm, đẩy mạnh ứng dụng thương mại điện tử, công nghiệp công nghệ cao vào hoạt động sản xuất, kinh doanh và xuất khẩu.​</p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(30, 'Tổng kết tình hình thực hiện nhiệm vụ tài chính, ngân sách nhà nước năm 2018 và triển khai nhiệm vụ năm 2019', 'TTĐT  - ​Chiều 09-01, tại Hà Nội, Bộ Tài chính tổ chức Hội nghị trực tuyến toàn quốc đánh giá tình hình thực hiện nhiệm vụ tài chính, ngân sách nhà nư​ớc &#40;NSNN&#41; năm 2018; quán triệt nhiệm vụ và các giải pháp thực hiện nhiệm vụ năm 2019. Ông Nguyễn Xuân Phúc - Ủy viên Bộ Chính trị, Thủ tướng Chính phủ dự và chỉ đạo hội nghị. ​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClassF80F74F6255C4451BF0BD35AF51213A3"><p style="text-align:justify;">Tại điểm cầu Bình Dương, tham dự có ông Trần Thanh Liêm - Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh; lãnh đạo các sở, ngành liên quan. </p><p style="text-align:justify;">Năm 2018, toàn ngành Tài chính đã chủ động đề xuất, triển khai đồng bộ các giải pháp, hoàn thành toàn diện các nhiệm vụ tài chính - NSNN, góp phần thực hiện thắng lợi các mục tiêu phát triển kinh tế - xã hội của cả nước. Trong năm, thu cân đối NSNN ước đạt 1.422,7 nghìn tỷ đồng, vượt 103,5 nghìn tỷ đồng tương đương vượt 7,8% so với dự toán. Trong đó, thu ngân sách Trung ương vượt 4,3%; thu ngân sách địa phương vượt 12,5% dự toán. Nhờ thu ngân sách đạt khá, các nhiệm vụ chi ngân sách được đảm bảo theo dự toán. Bội chi NSNN năm 2018 ước dưới 3,6% GDP. Tính đến 31/12/2018, dư nợ công dưới 61% GDP, dư nợ Chính phủ dưới 52% GDP, dư nợ vay nước ngoài của quốc gia đạt khoảng 49,7% GDP, trong phạm vi Quốc hội cho phép.</p><p style="text-align:justify;">Căn cứ kế hoạch phát triển kinh tế - xã hội và dự toán NSNN năm 2019 được Quốc hội thông qua, ngành Tài chính xác định mục tiêu nhiệm vụ năm 2019 là tiếp tục thực hiện chính sách tài khóa chặt chẽ, hiệu quả, phối hợp đồng bộ với chính sách tiền tệ nhằm hỗ trợ phát triển sản xuất kinh doanh, tiếp tục ổn định kinh tế vĩ mô, kiểm soát lạm phát, thúc đẩy tăng trưởng kinh tế; tăng cường kỷ luật tài chính, NSNN; thực hành tiết kiệm, chống lãng phí, cơ cấu lại NSNN và nợ công; tăng tỷ trọng chi đầu tư phát triển, đẩy mạnh sắp xếp tổ chức bộ máy, biên chế; tăng cường quản lý sử dụng tiết kiệm, hiệu quả các nguồn lực tài chính nhà nước gắn với huy động các nguồn lực xã hội để thúc đẩy phát triển kinh tế, thực hiện tốt nhiệm vụ an sinh xã hội, đảm bảo an ninh quốc phòng. </p><p style="text-align:center;"><img src="/uploads/news/2019_03/taichinh-key-09012019201142.jpg" alt="Tổng kết tình hình thực hiện nhiệm vụ tài chính, ngân sách nhà nước năm 2018 và triển khai nhiệm vụ năm 2019" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Đại biểu dự hội nghị tại điểm cầu Bình Dương</span><br></p><p style="text-align:justify;">Phát biểu chỉ đạo tại hội nghị, Thủ tướng Nguyễn Xuân Phúc đã thẳng thắn chỉ ra những tồn tại, hạn chế trong công tác hoàn thiện thể chế, cải thiện môi trường đầu tư kinh doanh; chính sách tài chính chưa tạo thuận lợi cho phát triển nông nghiệp… Thủ tướng đề nghị Bộ Tài chính cần nhất quán quan điểm trong tham mưu các chính sách tài chính, sớm có chính sách cụ thể hóa Luật Hỗ trợ doanh nghiệp vừa và nhỏ để khuyến khích, thúc đẩy loại hình doanh nghiệp này phát triển; cần có chính sách tài chính để chống thất thoát thuế sử dụng mặt đất, mặt nước cũng như chính sách tài chính đối với đất đai trong lâm trường, từ đó chặn đứng lợi ích nhóm, doanh nghiệp "sân sau"… Bộ Tài chính cũng cần tham mưu Chính phủ ban hành chính sách khuyến khích doanh nghiệp khởi nghiệp và đầu tư phát triển mạng 5G, dịch vụ băng thông rộng, dây chuyền sản xuất tự động, công nghệ sinh học nhằm tạo nên bước nhảy vọt và đảm bảo đủ xung lực cho sự phát triển kinh tế số tại Việt Nam.</p><div style="border:1pt solid windowtext;padding:1pt 4pt;background:#b8cce4 none repeat scroll 0% 0%;"><p class="MsoNormal" style="text-align:justify;background-image:initial;background-position:initial;background-size:initial;background-repeat:initial;background-attachment:initial;background-origin:initial;background-clip:initial;border:medium none;padding:0cm;"><span style="font-family:arial;">Với tốc độ tăng trưởng kinh tế cao, Bình Dương nằm trong số các tỉnh, thành nộp NSNN cao nhất. Theo báo cáo của UBND tỉnh, năm 2018 tình hình kinh tế của địa phương tiếp tục ổn định và phát triển. Các doanh nghiệp không ngừng nâng cao năng lực sản xuất kinh doanh và tăng khả năng cạnh tranh. Bên cạnh đó, thị trường bất động sản những tháng đầu năm sôi động; các chính sách liên quan đến nộp tiền sử dụng đất, tiền thuê đất tác động tích cực đến nguồn thu từ đất và thuế thu nhập cá nhân,... đã làm cho thu NSNN năm 2018 ước tăng khá. Tuy nhiên, do dự toán thu NSNN năm nay quá cao đã ảnh hưởng đến kết quả hoàn thành dự toán được giao của địa phương. Năm 2018, thu NSNN từ kinh tế - xã hội của tỉnh đạt gần 50.372 tỷ đồng, tăng 9% so với thực hiện năm 2017, đạt 96% dự toán. Năm 2019, Bình Dương phấn đấu tổng thu NSNN trên địa bàn đạt 54.500 tỷ đồng.</span></p></div><p style="text-align:justify;">​<br></p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(31, 'Hội Liên hiệp Phụ nữ tỉnh Bình Dương họp mặt kỷ niệm 109 năm Ngày Quốc tế Phụ nữ', 'TTĐT - ​Sáng 08-3, tại TP.Thủ Dầu Một, Hội Liên hiệp Phụ nữ &#40;LHPN&#41; tỉnh Bình Dương đã tổ chức Họp mặt kỷ niệm 109 năm Ngày Quốc tế Phụ nữ​ 08&#x002F;3 &#40;08&#x002F;3&#x002F;1910 - 08&#x002F;3&#x002F;2019&#41; và 1979 năm Cuộc khởi nghĩa Hai Bà Trưng. ​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass21F615A4C22A4B8B8619ADBC2379A01C"><p style="text-align:justify;">Tham dự buổi lễ có bà Nguyễn Minh Thủy - Ủy viên Ban Thường vụ Tỉnh ủy, Trưởng Ban Tổ chức Tỉnh ủy; ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh, Trưởng Ban Vì sự tiến bộ phụ nữ tỉnh, Anh hùng lực lượng vũ trang nhân dân Trần Thị Hường cùng các đồng chí nguyên là Chủ tịch, Phó Chủ tịch Hội LHPN tỉnh qua các thời kỳ.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/pn1-key-09032019094715.jpg" alt="Hội Liên hiệp Phụ nữ tỉnh Bình Dương họp mặt kỷ niệm 109 năm Ngày Quốc tế Phụ nữ" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Bà Nguyễn Minh Thủy (thứ 2 từ trái qua) - Ủy viên Ban Thường vụ Tỉnh ủy, Trưởng Ban Tổ chức Tỉnh ủy và ông Đặng Minh Hưng (bìa trái) - Phó Chủ tịch UBND tỉnh, Trưởng Ban Vì sự tiến bộ phụ nữ tỉnh tặng lẵng hoa chúc mừng Hội LHPN tỉnh</span><br></p><p style="text-align:justify;">Tại buổi lễ, các đại biểu đã cùng nhau ôn lại truyền thống 109 năm Ngày Quốc tế Phụ nữ 08/3 và 1979 năm cuộc khởi nghĩa Hai Bà Trưng. Tiếp nối truyền thống vẻ vang của phụ nữ Việt Nam, trong những năm qua phụ nữ Bình Dương đã tích cực học tập, lao động sáng tạo, xây dựng gia đình hạnh phúc gắn với học tập và làm theo tư tưởng, đạo đức, phong cách Hồ Chí Minh; triển khai sâu rộng các phong trào thi đua yêu nước, cuộc vận động xây dựng gia đình "5 không 3 sạch", phấn đấu rèn luyện phẩm chất người phụ nữ trong thời kỳ đẩy mạnh công nghiệp hóa - hiện đại hóa đất nước "Tự tin, tự trọng, trung hậu, đảm đang", giữ gìn và phát huy truyền thống, nâng cao phẩm chất tốt đẹp của người phụ nữ Việt Nam.   ​</p><p style="text-align:center;"> <img src="/uploads/news/2019_03/pn2-key-09032019094817.jpg" alt="Hội Liên hiệp Phụ nữ tỉnh Bình Dương họp mặt kỷ niệm 109 năm Ngày Quốc tế Phụ nữ - Ảnh minh hoạ 2" style="margin:5px;" /> </p><p style="text-align:center;"><span style="color:#0000ff;">Hội viên phụ nữ tham dự buổi họp mặt</span><br></p><p style="text-align:justify;">Cũng tại buổi lễ, bà Nguyễn Thị Thu Hồng - Chủ tịch Hội LHPN tỉnh đã phát động thi đua, phong trào "Phụ nữ khởi nghiệp" và thực hiện chủ đề năm 2019 "An toàn cho phụ nữ và trẻ em" trên toàn tỉnh Bình Dương. Theo đó, các hoạt động cần chú trọng tới các nội dung như: Giám sát Chương trình sữa học đường, hỗ trợ nhóm trẻ tư thục ở khu công nghiệp, khu nhà trọ; xây dựng mô hình thành phố, huyện, thị xã an toàn, thân thiện cho phụ nữ; xây dựng các mô hình, hoạt động an toàn cho trẻ em ở trường học, mô hình nhà tạm lánh, địa chỉ tin cậy…</p><p style="text-align:center;"><img src="/uploads/news/2019_03/pn3-key-09032019094847.jpg" alt="Hội Liên hiệp Phụ nữ tỉnh Bình Dương họp mặt kỷ niệm 109 năm Ngày Quốc tế Phụ nữ - Ảnh minh hoạ 3" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh, Trưởng Ban Vì sự tiến bộ phụ nữ tỉnh phát biểu tại buổi họp mặt</span><br></p><p style="text-align:justify;">Phát biểu tại buổi lễ, ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh, Trưởng Ban Vì sự tiến bộ phụ nữ tỉnh đã đánh giá cao những kết quả của Hội LHPN tỉnh đạt được trong thời gian qua. Đồng thời nhấn mạnh, các cấp, ban ngành cần quán triệt sâu sắc các quan điểm, mục tiêu công tác phụ nữ trong tình hình mới; Chỉ thị số 21-CT/TW ngày 20/01/2018 của Ban Bí thư Trung ương về tiếp tục đẩy mạnh công tác phụ nữ trong tình hình mới. Đẩy mạnh hơn nữa công tác tuyên truyền, giáo dục nâng cao nhận thức về giới và ý thức trách nhiệm thực hiện bình đẳng giới cho cán bộ, đảng viên và các tầng lớp nhân dân. Tạo điều kiện thuận lợi cho sự phát triển của phụ nữ như hỗ trợ đào tạo, bồi dưỡng nâng cao kiến thức về mọi mặt, giải quyết việc làm cho phụ nữ nghèo, khuyết tật… Tiếp tục thực hiện đồng bộ các biện pháp để nâng cao chất lượng, hiệu quả hoạt động Hội; chú trọng công tác quy hoạch, đào tạo cán bộ nữ để tham gia cấp ủy trong nhiệm kỳ tới. Phát huy hơn nữa vai trò giám sát, phản biện trong việc xây dựng, thực thi chính sách, pháp luật về bình đẳng giới và thực hiện hiệu quả chủ đề năm 2019 bảo đảm an toàn cho phụ nữ, trẻ em.</p><p style="text-align:justify;"> </p><p style="text-align:center;"><img src="/uploads/news/2019_03/pn4-key-09032019094910.jpg" alt="Hội Liên hiệp Phụ nữ tỉnh Bình Dương họp mặt kỷ niệm 109 năm Ngày Quốc tế Phụ nữ - Ảnh minh hoạ 4" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Bà Nguyễn Minh Thủy - Ủy viên Ban Thường vụ Tỉnh ủy, Trưởng Ban Tổ chức Tỉnh ủy và bà Nguyễn Thị Thu Hồng - Chủ tịch Hội LHPN tỉnh mừng thọ các phụ nữ trên 80 tuổi</span><br></p>​</div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(32, 'Khai mạc Giải đua xe đạp nữ quốc tế Bình Dương - Cúp Biwase lần thứ IX', 'TTĐT -  ​Sáng 08-3, tại Trung tâm ​Hội nghị và Triển lãm tỉnh, Sở Văn hóa, Thể thao và Du lịch phối hợp với Đài Phát thanh và Truyền hình Bình Dương, Công ty cổ phần Nước - Môi trường Bình Dương &#40;Biwase&#41; tổ chức Lễ khai mạc Giải đua xe đạp nữ quốc tế Bình Dương - Cúp Biwase lần thứ IX - năm 2019.​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClassE2AD1D9838C64E3A885561AF14CB3CDC"><p style="text-align:justify;">Đến dự có ông Lê Hữu Phước - Ủy viên Ban Thường vụ Tỉnh ủy, Trưởng Ban Tuyên giáo Tỉnh ủy; ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh; lãnh đạo Liên đoàn Xe đạp - Mô tô thể thao Việt Nam và các sở, ban, ngành tỉnh Bình Dương.</p><p style="text-align:justify;">Giải đua xe đạp nữ quốc tế Bình Dương - Cúp Biwase lần thứ IX năm 2019 quy tụ 90 vận động viên của 09 đội xe đạp nữ thuộc các Câu lạc bộ xe đạp mạnh trong nước và 07 đội đến từ các quốc gia: Nhật Bản, Hàn Quốc, Thái Lan, Malaysia, Philippines và Australia. Năm nay, Giải có lộ trình dài và đa dạng với 09 chặng đua, tổng chiều dài 850 km đi qua 07 tỉnh, thành miền Đông Nam bộ, miền Trung Tây Nguyên, chinh phục các ngọn đèo hiểm trở: Đèo Bảo Lộc, đèo Prenn, đèo Cù Hin, đèo Vĩnh Hy… Giải diễn ra từ ngày 08/3 đến 16/3/2019. Giải thưởng gồm 05 chiếc áo chung cuộc danh giá nhất từ áo vàng, áo xanh, áo đỏ nữ hoàng leo núi, áo hồng dành cho hoa khôi và áo trắng dành cho vận động viên trẻ triển vọng, có thành tích tốt nhất.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/xedapnu1-key-08032019105254.jpg" alt="Khai mạc Giải đua xe đạp nữ quốc tế Bình Dương - Cúp Biwase lần thứ IX" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Lê Hữu Phước (thứ 2 từ phải qua) - Ủy viên Ban Thường vụ Tỉnh ủy, Trưởng Ban Tuyên giáo Tỉnh ủy và ông Đặng Minh Hưng (thứ 2 từ trái qua) - Phó Chủ tịch UBND tỉnh tặng hoa cho các nhà tài trợ</span><br></p><p style="text-align:center;"><span style="color:#0000ff;"><img src="/uploads/news/2019_03/xedapnu2-key-08032019105356.jpg" alt="Khai mạc Giải đua xe đạp nữ quốc tế Bình Dương - Cúp Biwase lần thứ IX - Ảnh minh hoạ 2" style="margin:5px;" /><br></span></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh trao cờ thi đấu cho Ban Tổ chức Giải<br></span></p><p style="text-align:justify;">Giải đua xe đạp nữ quốc tế Bình Dương - Cúp Biwase là một giải đua truyền thống nằm trong hệ thống thi đấu quốc gia dành riêng cho nữ, là cơ hội tốt để các vận động viên xe đạp nữ của Việt Nam được cọ xát với đối thủ mạnh đến từ các nước. Qua đó, nâng cao trình độ, kinh nghiệm chuyên môn để chuẩn bị cho các giải đua xe đạp toàn quốc trong năm 2019 và các giải quốc tế.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/xedapnu3-key-08032019105429.jpg" alt="Khai mạc Giải đua xe đạp nữ quốc tế Bình Dương - Cúp Biwase lần thứ IX - Ảnh minh hoạ 3" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh tặng hoa cho các vận động viên</span><br></p><p style="text-align:justify;">Phát biểu tại buổi lễ, Phó Chủ tịch UBND tỉnh Đặng Minh Hưng đánh giá, qua 08 lần tổ chức, Giải đua xe đạp nữ quốc tế Bình Dương - Cúp Biwase đã thành công và để lại ấn tượng sâu sắc, tạo sân chơi và làm tiền đề để các vận động viên các tỉnh, thành cả nước nói chung, Bình Dương nói riêng đạt thành tích cao trên đấu trường quốc gia và khu vực. Tiếp nối thành công đạt được, Giải lần này là sự kiện quan trọng khởi đầu một mùa giải mới của làng đua xe đạp Việt Nam trong năm 2019, đây cũng là món quà ý nghĩa dành tặng cho các nữ vận động viên đua xe đạp nhân Ngày quốc tế Phụ nữ 08/3. Phó Chủ tịch UBND tỉnh chúc các vận động viên thi đấu tốt và Giải đua diễn ra thành công tốt đẹp.</p><p style="text-align:justify;">Sau Lễ khai mạc, các vận động viên bước vào thi đấu chặng 1 lộ trình vòng quanh Thành phố mới Bình Dương với cự ly 66km.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/xedapnu4-key-08032019105455.jpg" alt="Khai mạc Giải đua xe đạp nữ quốc tế Bình Dương - Cúp Biwase lần thứ IX - Ảnh minh hoạ 4" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Các vận động viên tranh tài ở chặng 1 Giải đua xe đạp nữ quốc tế Bình Dương - Cúp Biwase lần thứ IX, năm 2019</span><br></p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(33, 'Phát động Chương trình Sức khỏe Việt Nam', 'TTĐT - ​Nhân kỷ niệm 64 năm Ngày Thầy thuốc Việt Nam, ngày 27-02, dưới sự chủ trì của Thủ tướng Chính phủ Nguyễn Xuân Phúc, Bộ Y tế phối hợp với Bộ Giáo dục ​và Đào tạo, Bộ Văn hóa, Thể thao và Du lịch và các Bộ, ngành liên quan tổ chức phát động Chương trình Sức khỏe Việt Nam. Đây là một sự kiện quan trọng nhằm công bố, khởi động thực hiện Chươn​g trình Sức khỏe Việt Nam trên phạm vi cả nước. ​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass19C04FF8E31B4DC39603446565267926"><p style="text-align:justify;">​Tại điểm cầu Bình Dương, tham dự có ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh; lãnh đạo các sở, ngành liên quan.</p><p style="text-align:justify;">Chương trình Sức khỏe Việt Nam được Thủ tướng Chính phủ phê duyệt tại Quyết định số 1092 ngày 02/9/2018 nhằm thực hiện Nghị quyết số 20 về tăng cường công tác bảo vệ, chăm sóc và nâng cao sức khỏe nhân dân trong tình hình mới của Hội nghị lần thứ 6 Ban Chấp hành Trung ương khóa XII. Chương trình đề ra các nhiệm vụ và giải pháp để tập trung thực hiện 28 chỉ tiêu của 11 lĩnh vực sức khỏe. </p><p style="text-align:justify;">Phát biểu phát động Chương trình, Thủ tướng Chính phủ Nguyễn Xuân Phúc khẳng định, sức khỏe là vốn quý của mỗi con người và toàn xã hội. Trong thời gian qua, Đảng và Nhà nước hết sức chú trọng đến công tác chăm sóc, bảo vệ sức khỏe nhân dân. Thủ tướng cho rằng, muốn giữ gìn, nâng cao sức khỏe, phát triển tầm vóc thì cần đồng thời thực hiện tốt cả 3 yêu cầu, đó là: Vệ sinh phòng bệnh, ăn uống điều độ đảm bảo dinh dưỡng và rèn luyện thể lực. Việc bảo vệ và nâng cao sức khỏe phải là nhiệm vụ của mỗi người dân và cả hệ thống chính trị. Thủ tướng kêu gọi người dân bắt đầu thực hiện, duy trì hành vi, lối sống lành mạnh, tự bảo vệ chăm sóc sức khỏe cho bản thân và cộng đồng. Thủ tướng cũng đề nghị các địa phương cần phải đưa chương trình phát động Sức khỏe Việt Nam vào các chương trình hành động, phát triển kinh tế- xã hội ở địa phương.</p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1);
INSERT INTO `tms_vi_news_detail` (`id`, `titlesite`, `description`, `bodyhtml`, `keywords`, `sourcetext`, `files`, `imgposition`, `layout_func`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`) VALUES
(34, 'Đại hội Hội in tỉnh Bình Dương lần thứ I, nhiệm kỳ 2019-2024', 'TTĐT - ​Sáng 26-02, tại thành phố Thủ Dầu Một, Hội in tỉnh Bình Dương đã tổ chức Đại hội lần thứ I, nhiệm kỳ 2019-2024. ​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass46B1172C0C6C48C1974D012C7E32929E"><p style="text-align:justify;">Tham dự có ông Nguyễn Văn Dòng - Chủ tịch Hiệp hội in Việt Nam, ông Lai Xuân Thành - Giám đốc Sở Thông tin và Truyền thông cùng lãnh đạo các sở, ngành của tỉnh.</p><p style="text-align:justify;"><span style="background-color:transparent;">Toàn tỉnh hiện có trên 300 doanh nghiệp hoạt động in ấn và các ngành nghề phụ trợ khác, gồm thiết bị máy móc, giấy, mực in, hóa chất, chế bản… Trong đó có hơn 100 cơ sở hoạt động in có 100% vốn đầu tư nước ngoài. Hoạt động ngành in của tỉnh đang phát triển do có sự đầu tư mạnh của các cơ sở in, từ cơ sở vật chất, kỹ thuật đến nguồn nhân lực, đã sản xuất ra những sản phẩm in đạt yêu cầu mỹ thuật và kiểu dáng công nghiệp cao, đáp ứng thị trường in gia công trong và ngoài tỉnh. Tuy nhiên, hoạt động in ấn vẫn còn chưa tương xứng với tiềm năng của tỉnh, hoạt động kinh doanh còn riêng lẻ, cạnh tranh chưa lành mạnh; chưa liên doanh, liên kết, hợp tác để phát huy thế mạnh của từng cơ sở in… </span><span style="background-color:transparent;">Trên cơ sở đó, ngày 29/11/2018, UBND tỉnh đã ban hành Quyết định số 3370/QĐ-UBND cho phép thành lập Hội in tỉnh Bình Dương.</span></p><p style="text-align:center;"><img src="/uploads/news/2019_03/hoiin3-key-26022019161132.jpg" alt="Đại hội Hội in tỉnh Bình Dương lần thứ I, nhiệm kỳ 2019-2024" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Toàn cảnh Đại hội</span><br></p><p style="text-align:justify;">Hội in tỉnh Bình Dương là một tổ chức xã hội-nghề nghiệp của các tổ chức, cá nhân đang hoạt động trong ngành in trên địa bàn toàn tỉnh, tự nguyện thành lập, nhằm mục đích tập hợp, đoàn kết, bảo vệ quyền, lợi ích hợp pháp của hội viên; hỗ trợ nhau hoạt động có hiệu quả, góp phần vào phát triển kinh tế-xã hội của tỉnh Bình Dương nói riêng và cả nước nói chung. Bước đầu thành lập, Hội có 53 thành viên tham gia, với mục tiêu chung là củng cố tổ chức bộ máy, phát triển hội viên, phát triển các hoạt động dịch vụ, tạo nguồn tài chính đáp ứng nhu cầu phát triển của Hội và tăng cường hoạt động phục vụ lợi ích của hội viên, góp phần vì mục tiêu phát triển chung của tỉnh. </p><p style="text-align:justify;">Đại hội đã biểu quyết thông qua Quy chế làm việc, Điều lệ Hội và Chương trình hoạt động của Hội; bầu Ban chấp hành Hội nhiệm kỳ 2019-2024 gồm 15 thành viên, ông Nguyễn Công Luận - Tổng Giám đốc Công ty TNHH MTV Xổ số kiến thiết tỉnh Bình Dương được bầu giữ chức Chủ tịch Hội.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/hoiin2-key-26022019161315.jpg" alt="Đại hội Hội in tỉnh Bình Dương lần thứ I, nhiệm kỳ 2019-2024 - Ảnh minh hoạ 2" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Nguyễn Văn Dòng - Chủ tịch Hiệp Hội in Việt Nam phát biểu​ tại Đại hội</span><br></p><p style="text-align:justify;">Phát biểu tại Đại hội, ông Nguyễn Văn Dòng - Chủ tịch Hiệp Hội in Việt Nam đã đánh giá cao những tiềm năng phát triển của ngành công nghệ in tỉnh Bình Dương, đồng thời nhấn mạnh sự thành lập Hội in tỉnh là rất cần thiết. Ông đề nghị Ban chấp hành Hội cần sớm hoàn thiện tổ chức bộ máy, phấn đấu phát triển hội viên; tạo điều kiện liên kết kinh doanh giữa các hội viên; cung cấp công nghệ thông tin của ngành cũng như tổ chức hội thảo… tạo môi trường kinh doanh lành mạnh; tăng cường hợp tác phát triển, giúp doanh nghiệp đưa hoạt động kinh doanh hiệu quả, góp phần vào sự phát triển kinh tế-xã hội của tỉnh Bình Dương.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/hoiin1-key-26022019161350.jpg" alt="Đại hội Hội in tỉnh Bình Dương lần thứ I, nhiệm kỳ 2019-2024 - Ảnh minh hoạ 3" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ra mắt Ban chấp hành Hội In tỉnh Bình Dương</span><br></p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(35, 'Bình Dương họp mặt văn nghệ sĩ đầu xuân Kỷ Hợi 2019', 'TTĐT - ​Sáng 26-02, tại TP.Thủ Dầu ​​​Một, UBND tỉnh Bình Dương đã tổ chức Họp mặt văn nghệ sĩ đầu Xuân Kỷ Hợi 2019. ​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass45A71B0C3D6540468B09018FDB115D29"><p style="text-align:justify;">​​Đến dự có ông Lê Hữu Phước - Ủy viên Ban Thường vụ Tỉnh ủy, Trưởng Ban Tuyên giáo Tỉnh ủy; ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh; lãnh đạo một số sở, ngành cùng văn nghệ sĩ các chuyên ngành trong tỉnh.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/vannghesi2-key-26022019161851.jpg" alt="Bình Dương họp mặt văn nghệ sĩ đầu xuân Kỷ Hợi 2019" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Đại biểu tham dự buổi họp mặt</span><br></p><p style="text-align:justify;">Năm 2018, Hội Văn học - Nghệ thuật (VHNT) tỉnh đã tổ chức nhiều hoạt động đáp ứng kịp thời những nhiệm vụ chính trị của địa phương và phục vụ tốt nhu cầu thưởng thức VHNT của nhân dân trong tỉnh. Hội viên ở các chuyên ngành đã sáng tác nhiều tác phẩm có chất lượng nghệ thuật cao. Số lượng tác phẩm mỹ thuật và nhiếp ảnh của Bình Dương được chọn trưng bày và đạt giải chiếm tỷ lệ cao tại các kỳ liên hoan khu vực. Tỷ lệ các bài viết về văn học, văn nghệ dân gian của tác giả và cộng tác viên Bình Dương ngày càng nhiều trên Tạp chí Văn nghệ Bình Dương. Nghệ sĩ sân khấu luôn tìm tòi nhiều cách thể hiện mới trong sáng tác và tích cực phát hiện, đào tạo, bồi dưỡng các tài năng trẻ.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/vannghesi3-key-26022019161941.jpg" alt="Bình Dương họp mặt văn nghệ sĩ đầu xuân Kỷ Hợi 2019 - Ảnh minh hoạ 2" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh phát biểu tại buổi họp mặt</span><br></p><p style="text-align:justify;">Phát biểu tại buổi họp mặt, ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh đã đánh giá cao đóng góp của đội ngũ văn nghệ sĩ trong thời gian qua. Qua đó, kêu gọi các văn nghệ sĩ trong tỉnh cần nâng cao nhận thức, tiếp thêm ngọn lửa cho lòng đam mê nghề nghiệp, chủ động và bản lĩnh hơn nữa để sáng tác thêm nhiều tác phẩm văn học nghệ thuật mang tính chân - thiện - mỹ có giá trị nghệ thuật cao, đáp ứng nhu cầu văn hóa tinh thần ngày càng đa dạng của các tầng lớp nhân dân.</p><p style="text-align:justify;">Ông hy vọng, với tài năng, tâm huyết và quyết tâm đổi mới, đội ngũ văn nghệ sĩ tỉnh nhà sẽ phát triển mạnh mẽ hơn nữa trong thời gian tới, thể hiện được vai trò xung kích trên mặt trận tư tưởng, góp phần xây dựng đời sống văn hóa tinh thần cao đẹp, phát huy những giá trị truyền thống tốt đẹp của con người  Bình Dương trong thời kỳ hội nhập và giao lưu quốc tế. </p><p style="text-align:center;"><img src="/uploads/news/2019_03/vannghesi4-key-26022019162003.jpg" alt="Bình Dương họp mặt văn nghệ sĩ đầu xuân Kỷ Hợi 2019 - Ảnh minh hoạ 3" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Các văn nghệ sĩ chụp hình lưu niệm cùng lãnh đạo tỉnh</span><br></p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(36, 'Truyền hình trực tiếp tất cả các trận đấu của Becamex Bình Dương tại AFC Cup 2019', 'TTĐT - ​Theo thông tin từ Câu lạc bộ &#40;CLB&#41; Becamex Bình Dương, tất cả các trận đấu của đội này tại đấu trường AFC Cup 2019 đều được phát trực tiếp trên kênh BT​​V nhằm đáp ứng nhu cầu của người hâm mộ.​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass7AC7175632A344CAA458B172AE2B0092"><p style="text-align:justify;">Để phục vụ người hâm mộ bóng đá Bình Dương nói riêng và cả nước nói chung, Tổng công ty Becamex IDC đã phối hợp với Đài Phát thanh và Truyền hình Bình Dương mua bản quyền tất cả các trận của CLB Becamex Bình Dương tại AFC Cup 2019.</p><p style="text-align:justify;">Becamex Bình Dương nằm ở bảng G cùng với các CLB mạnh của khu vực như: Persija Jakarta (Indonesia); Cerez Negros (Philippine); Shan United (Myanmar). Trận ra quân đầu tiên tại giải này, Becamex Bình Dương sẽ gặp Persija Jakarta (Indonesia) vào lúc 15h30 ngày 26/02/2019 trên sân nhà của CLB Persija Jakarta.  </p><p style="text-align:justify;">Tất cả các trận đấu của Becamex Bình Dương tại vòng bảng AFC Cup 2019 sẽ được truyền hình trực tiếp trên kênh BTV1 Đài Phát thanh và Truyền hình Bình Dương, trên tất cả các nền tảng phát sóng tại Việt Nam để phục vụ người hâm mộ Bình Dương nói riêng và cả nước nói chung.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/clbbecamex-key-26022019162327.jpg" alt="Truyền hình trực tiếp tất cả các trận đấu của Becamex Bình Dương tại AFC Cup 2019" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">CLB Becamex Bình Dương trong buổi tập tại Indonesia tối 24/02/2019. Ảnh: ANH TRẦN</span><br></p><p style="text-align:justify;">Hiện Becamex Bình Dương là CLB có thành tích tốt nhất của bóng đá Việt Nam tại các giải cấp châu lục, là CLB duy nhất của Việt Nam đạt danh hiệu Huy chương đồng AFC Cup vào năm 2009. Đài Phát thanh và Truyền hình Bình Dương và Tổng công ty Becamex IDC tiếp tục mua bản quyền phát sóng thành công là một tin rất vui cho người hâm mộ bóng đá cả nước, là nguồn động viên lớn để thầy trò Huấn luyện viên Trần Minh Chiến tiếp tục thi đấu tốt tại sân chơi cấp châu lục.</p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(37, 'Bình Dương&#x3A; Sôi nổi khởi động Tháng Thanh niên năm 2019', 'TTĐT - ​Sáng 26-02, tại huyện Phú Giáo, Ban chỉ đạo &#40;BCĐ&#41; các hoạt động Thanh thiếu nhi tỉnh Bình Dương đã tổ chức Lễ khởi động Tháng Thanh niên tỉnh Bình​ Dương năm 2019.​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass81D175E6C4144F5CB9C28633D3177E47"><p style="text-align:justify;">Đến dự có bà Nguyễn Thị Tuyết Minh – Phó Trưởng Ban Dân vận Tỉnh ủy; đại diện lãnh đạo các sở, ban ngành, đoàn thể tỉnh, thành viên BCĐ các hoạt động Thanh thiếu nhi (TTN) tỉnh, lãnh đạo huyện Phú Giáo và đại diện Ban Thường vụ các Huyện, Thị, Thành Đoàn và Đoàn trực thuộc cùng hơn 500 đoàn viên, thanh niên.   </p><p style="text-align:justify;">Tháng Thanh niên năm 2019 có chủ đề "Tuổi trẻ Bình Dương tình nguyện vì cộng đồng", gồm các hoạt động: Tập trung các hoạt động giáo dục lý tưởng cách mạng, đạo đức lối sống, văn hóa cho thanh niên bằng nhiều nội dung, hình thức đa dạng gắn với chủ đề "Năm Thanh niên tình nguyện" do Trung ương Đoàn phát động và 50 năm thực hiện Di chúc Chủ tịch Hồ Chí Minh; rà soát, nâng cao chất lượng hoạt động Đoàn – Hội – Đội ở cơ sở, nhất là ở khu phố, ấp, xã, phường, thị trấn, tăng cường công tác mở rộng, nâng cao tỷ lệ đoàn kết, tập hợp thanh niên Bình Dương, đồng loạt tổ chức các lớp bồi dưỡng, kỹ năng Đoàn – Hội – Đội, giới thiệu đoàn viên ưu tú cho Đảng tại các địa phương, đơn vị; thực hiện các công trình, phần việc thanh niên vì cộng đồng, vì an sinh xã hội, tham gia xây dựng nông thôn mới, văn minh đô thị,… nhằm giáo dục ý thức, trách nhiệm công dân cho thanh niên.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/ttn1-key-26022019163119.jpg" alt="Bình Dương: Sôi nổi khởi động Tháng Thanh niên năm 2019" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Trao tặng các công trình thanh niên cho đoàn viên, thanh thiếu nhi huyện Phú Giáo</span></p><p style="text-align:justify;">​Tại buổi lễ, Ban Thường vụ Tỉnh Đoàn, Hội đồng Đội tỉnh và các đơn vị trực thuộc đã trao tặng các công trình hỗ trợ xây dựng nông thôn mới, đồng hành với học sinh khó khăn gồm 01 Ngôi nhà Khăn quàng đỏ trị giá 50 triệu đồng, 01 Khu vui chơi miễn phí cho thiếu nhi tại giáo xứ Bàu Ao, thị trấn Phước Vĩnh, huyện Phú Giáo và 01 chương trình chăm sóc sức khỏe miễn phí cho 300 em học sinh trường Tiểu học An Bình A và Trung học cơ sở An Bình, huyện Phú Giáo; tổ chức ra quân trồng 200 cây xanh tại tuyến đường Công chúa Ngọc Hân thị trấn Phước Vĩnh nhằm thực hiện 01 tuyến đường thanh niên làm theo lời Bác; Đoàn trường Cao đẳng Y tế thực hiện Công trình thanh niên chăm sóc sức khỏe miễn phí cho 100 người dân có hoàn cảnh khó khăn, trị giá 15.000.000 đồng; Thành Đoàn Thủ Dầu Một thực hiện công trình "Vì một đô thị xanh" trao tặng 20 thùng rác cho Huyện Đoàn Phú Giáo; Đoàn trường Đại học Bình Dương trao tặng 150 nón bảo hiểm,… cho đoàn viên, thanh thiếu nhi và người dân trên địa bàn huyện Phú Giáo.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/ttn2-key-26022019163147.jpg" alt="Bình Dương: Sôi nổi khởi động Tháng Thanh niên năm 2019 - Ảnh minh hoạ 2" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Trồng 200 cây xanh trên tuyến đường Công chúa Ngọc Hân thị trấn Phước Vĩnh</span></p><p style="text-align:center;"><span style="color:#0000ff;"><img src="/uploads/news/2019_03/ttn3-key-26022019163213.jpg" alt="Bình Dương: Sôi nổi khởi động Tháng Thanh niên năm 2019 - Ảnh minh hoạ 3" style="text-align:center;margin:5px;" /><br></span></p><p style="text-align:center;"><span style="color:#0000ff;"><img src="/uploads/news/2019_03/ttn5-key-26022019163259.jpg" alt="Bình Dương: Sôi nổi khởi động Tháng Thanh niên năm 2019 - Ảnh minh hoạ 4" style="margin:5px;" /><br></span></p><p style="text-align:center;"><span style="color:#0000ff;">Khánh thành khu vui chơi thiếu nhi tại giáo xứ Bàu Ao, thị trấn Phước Vĩnh</span></p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(38, 'Bình Dương họp mặt báo chí đầu năm - Xuân Kỷ Hợi 2019', 'TTĐT - ​Sáng 22-02, tại Trung tâm Hội nghị và Triển lãm tỉnh, Tỉnh ủy, HĐND, UBND, Ủy ban MTTQ Việt Nam tỉnh Bình Dương tổ chức Họp mặt báo chí đầu nă​m - Xuân Kỷ Hợi 2019.​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClassD4A9898E7B7448C68727BEBCA95E79F8"><p style="text-align:justify;">Đến dự có ông Lê Hữu Phước - Ủy viên Ban Thường vụ Tỉnh ủy, Trưởng Ban Tuyên giáo Tỉnh ủy; ông Phạm Trọng Nhân - Phó Trưởng Đoàn Đại biểu Quốc hội tỉnh; ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh, lãnh đạo các sở, ban ngành, địa phương, các nhà báo lão thành, đại diện các cơ quan báo chí Trung ương, trong và ngoài tỉnh.</p><p style="text-align:justify;">Đây là buổi họp mặt được tổ chức thường niên nhằm thông tin đến các cơ quan thông tấn, báo chí tình hình kinh tế - xã hội của tỉnh trong năm qua và triển khai kế hoạch tuyên truyền trong thời gian tới. Đồng thời, là dịp để lãnh đạo tỉnh bày tỏ sự quan tâm, tri ân đến những người làm báo đồng hành cùng Bình Dương trong thời gian qua.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/baochi1-key-22022019162746.jpg" alt="Bình Dương họp mặt báo chí đầu năm - Xuân Kỷ Hợi 2019" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Lê Hữu Phước - Ủy viên Ban Thường vụ Tỉnh ủy, Trưởng Ban Tuyên giáo Tỉnh ủy phát biểu tại buổi họp mặt ​​</span><br></p><p style="text-align:justify;">Phát biểu tại buổi họp mặt, ông Lê Hữu Phước - Ủy viên Ban Thường vụ Tỉnh ủy, Trưởng Ban Tuyên giáo Tỉnh ủy ghi nhận và biểu dương những đóng góp của báo chí vào sự phát triển kinh tế - xã hội của Bình Dương trong năm qua. Các cơ quan báo chí đã luôn bám sát nhiệm vụ chính trị và thực tiễn sinh động của đời sống xã hội, thông tin, tuyên truyền chính xác, kịp thời, sâu sắc những diễn biến hàng ngày trên tất cả các lĩnh vực. Sự chủ động, tích cực, trách nhiệm của các cơ quan báo chí đã đáp ứng tốt nhu cầu thông tin, giải trí, tạo được sự đồng thuận trong cán bộ, đảng viên và các tầng lớp nhân dân và cộng đồng doanh nghiệp, góp phần thúc đẩy phát triển kinh tế - xã hội, đảm bảo quốc phòng - an ninh, mở rộng quan hệ đối ngoại, quảng bá, giới thiệu về Bình Dương đến bạn bè quốc tế.</p><p style="text-align:justify;">Ông đề nghị trong thời gian tới, các cơ quan báo chí tiếp tục đổi mới nội dung, hình thức để tiếp cận ngày càng gần hơn với độc giả, khán thính giả, để việc thông tin, tuyên truyền được kịp thời, chính xác, hiệu quả hơn. Về phía Bình Dương, với tinh thần cầu thị, lắng nghe, tỉnh sẽ tiếp tục hợp tác và tạo điều kiện thuận lợi cho phóng viên các cơ quan báo chí trong tác nghiệp.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/baochi5-key-22022019162820.jpg" alt="Bình Dương họp mặt báo chí đầu năm - Xuân Kỷ Hợi 2019 - Ảnh minh hoạ 2" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Lê Hữu Phước (thứ 5 từ trái qua) - Ủy viên Ban Thường vụ Tỉnh ủy, Trưởng Ban Tuyên giáo Tỉnh ủy và ông Đặng Minh Hưng (thứ 5 từ phải qua) - Phó Chủ tịch UBND tỉnh trao Bằng khen của UBND tỉnh cho các cá nhân</span></p><p style="text-align:center;"><span style="color:#0000ff;"><img src="/uploads/news/2019_03/baochi2-key-22022019162838.jpg" alt="Bình Dương họp mặt báo chí đầu năm - Xuân Kỷ Hợi 2019 - Ảnh minh hoạ 3" style="margin:5px;" /><br></span></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh tặng Bằng khen của UBND tỉnh cho các tập thể</span></p><p style="text-align:center;"><span style="color:#0000ff;"><img src="/uploads/news/2019_03/baochi3-key-22022019162859.jpg" alt="Bình Dương họp mặt báo chí đầu năm - Xuân Kỷ Hợi 2019 - Ảnh minh hoạ 4" style="margin:5px;" /><br></span></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Đặng Minh Hưng (thứ 5 từ trái qua) - Phó Chủ tịch UBND tỉnh và ông Phạm Trọng Nhân (thứ 7 từ trái qua) - Phó Trưởng Đoàn Đại biểu Quốc hội tỉnh trao Bằng khen của UBND tỉnh cho các tập thể</span></p><p style="text-align:center;"><span style="color:#0000ff;"><img src="/uploads/news/2019_03/baochi4-key-22022019162918.jpg" alt="Bình Dương họp mặt báo chí đầu năm - Xuân Kỷ Hợi 2019 - Ảnh minh hoạ 5" style="margin:5px;" /><br></span></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Lê Hữu Phước (thứ 5 từ trái qua) - Ủy viên Ban Thường vụ Tỉnh ủy, Trưởng Ban Tuyên giáo Tỉnh ủy và ông Lai Xuân Thành (thứ 6 từ trái qua) - Giám đốc Sở Thông tin và Truyền thông trao Bằng khen của UBND tỉnh cho các tập thể</span></p><p style="text-align:justify;">Dịp này, UBND tỉnh đã tặng Bằng khen cho 21 tập thể và 13 cá nhân có thành tích xuất sắc trong công tác thông tin tuyên truyền năm 2018. Hội Nhà báo tỉnh Bình Dương trao giải cho 22 tác phẩm báo chí chất lượng cao năm 2018, gồm 05 giải A, 08 giải B và 09 giải C.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/baochi6-key-22022019162943.jpg" alt="Bình Dương họp mặt báo chí đầu năm - Xuân Kỷ Hợi 2019 - Ảnh minh hoạ 6" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Trao giải A báo chí chất lượng cao năm 2018</span></p><p style="text-align:center;"><span style="color:#0000ff;"><img src="/uploads/news/2019_03/baochi7-key-22022019163007.jpg" alt="Bình Dương họp mặt báo chí đầu năm - Xuân Kỷ Hợi 2019 - Ảnh minh hoạ 7" style="margin:5px;" /><br></span></p><p style="text-align:center;"><span style="color:#0000ff;">Trao giải B báo chí chất lượng cao năm 2018</span></p><p style="text-align:center;"><span style="color:#0000ff;"><img src="/uploads/news/2019_03/baochi8-key-22022019163025.jpg" alt="Bình Dương họp mặt báo chí đầu năm - Xuân Kỷ Hợi 2019 - Ảnh minh hoạ 8" style="margin:5px;" /><br></span></p><p style="text-align:center;"><span style="color:#0000ff;">Trao giải C báo chí chất lượng cao năm 2018</span></p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(39, 'Bình Dương sẵn sàng cho Lễ hội Rằm tháng Giêng năm 2019', '​TTĐT - Sáng 18-02, Phó Chủ tịch UBND tỉnh Đặng Minh Hưng cùng lãnh đạo các sở, ngành đã đi kiểm tra công tác chuẩn bị Lễ hội Rằm tháng Giêng năm 2019​ tại thành phố Thủ Dầu Một. Qua kiểm tra, mọi công tác chuẩn bị cho mùa Lễ hội Rằm tháng Giêng đã sẵn sàng.​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClassFD7BD623A4424A2383B26EDEF15A3F62"><p style="text-align:justify;">Tại thành phố Thủ Dầu Một, hàng năm vào dịp Rằm tháng Giêng, cộng đồng người Hoa tổ chức lễ hội và rước cộ Bà Thiên Hậu Thánh Mẫu tại Miếu Bà ở trung tâm thành phố và nhiều địa phương khác như phường Hòa Phú, Hiệp An… </p><p style="text-align:justify;">Rút kinh nghiệm qua nhiều năm, năm 2019, Ban Chỉ đạo Lễ hội Rằm tháng Giêng thành phố Thủ Dầu Một đã phân công nhiệm vụ cụ thể và phối hợp đồng bộ nhiều lực lượng, cùng chung tay xây dựng một mùa lễ hội văn minh, với nhiều nghĩa cử thân thiện như: Phát nước, cơm, bánh mì, vá xe miễn phí… tạo hình ảnh tốt đẹp trong lòng khách thập phương hành hương về vùng Đất Thủ.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/ramthanggieng1-key-18022019162314.jpg" alt="Bình Dương sẵn sàng cho Lễ hội Rằm tháng Giêng năm 2019" style="margin:5px;" /><br></p><p style="text-align:center;"><br></p><p style="text-align:center;"><span style="color:#0000ff;">Phó Chủ tịch UBND tỉnh Đặng Minh Hưng và lãnh đạo các sở, ngành kiểm tra công tác chuẩn bị Lễ hội Rằm tháng Giêng tại Miếu Bà Thiên Hậu (Chùa Bà Thiên Hậu) trên địa bàn phường Phú Cường, thành phố Thủ Dầu Một​</span><br></p><p style="text-align:justify;"></p><p style="text-align:justify;">Qua kiểm tra, Phó Chủ tịch UBND tỉnh Đặng Minh Hưng đánh giá cao sự chung tay góp sức của cộng đồng người Hoa, các đơn vị tổ chức trong việc xã hội hóa các hoạt động phục vụ mùa Lễ hội Rằm tháng Giêng. Để Lễ hội diễn ra an toàn, văn minh, Phó Chủ tịch yêu cầu Ban Chỉ đạo Lễ hội phối hợp đồng bộ với Ban Trị sự Chùa Bà trong mọi công tác tổ chức, nhất là đảm bảo an ninh trật tự, an toàn lễ hội, trật tự giao thông, vệ sinh an toàn thực phẩm trong mùa lễ hội, đặc biệt là trong cao điểm ngày Rằm tháng Giêng.​</p><p style="text-align:center;"><img src="/uploads/news/2019_03/ramthanggieng3-key-18022019162516.jpg" alt="Bình Dương sẵn sàng cho Lễ hội Rằm tháng Giêng năm 2019 - Ảnh minh hoạ 2" style="margin:5px;" />​<br></p><p style="text-align:center;"><span style="color:#0000ff;">Phó Chủ tịch UBND tỉnh Đặng Minh Hưng và lãnh đạo các sở, ngành kiểm tra công tác chuẩn bị Lễ hội Rằm tháng Giêng tại Miếu Ông (Chùa Ông) trên địa bàn phường Phú Cường, thành phố Thủ Dầu Một</span><br></p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(40, 'Bình Dương họp mặt giao thừa Tết Nguyên đán Kỷ Hợi 2019 và tuyên dương người tốt, việc tốt', 'TTĐT - ​Tối 04-02 &#40;30 Tết&#41;, tại Trung tâm Hội nghị và Triển lãm tỉnh Bình Dương, Tỉnh ủy, HĐND, UBND, Ủy ban MTTQ Việt Nam tỉnh đã tổ chức Họp mặt giao thừa Tết Nguyên đán Kỷ Hợi 2019 và tuyên dương gương người tốt, việc tốt.', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClassA2A9E90F094F4482914F846F76D6A3D7"><div style="text-align:justify;">​<span style="background-color:transparent;">Đến dự có ông Trần Văn Nam - Ủy viên Ban Chấp hành Trung ương Đảng, Bí thư Tỉnh ủy, Trưởng Đoàn Đại biểu Quốc hội tỉnh; ông Trần Thanh Liêm – Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh; bà Nguyễn Thị Kim Oanh – Phó Chủ tịch HĐND tỉnh; các Phó Chủ tịch HĐND, UBND tỉnh; lãnh đạo tỉnh qua các thời kỳ; đại diện lãnh đạo các sở, ban, ngành, đoàn thể, huyện, thị, thành phố và các doanh nghiệp, công dân tiêu biểu.</span></div><p style="text-align:justify;">Phát biểu tại buổi họp mặt, ông Trần Thanh Liêm – Chủ tịch UBND tỉnh cho rằng, năm 2018, mặc dù tình hình chung còn nhiều khó khăn, thách thức; nhưng với sự đoàn kết, nỗ lực và quyết tâm cao của cả hệ thống chính trị, của cộng đồng doanh nghiệp và các tầng lớp nhân dân trong tỉnh, tình hình kinh tế - xã hội của tỉnh tiếp tục chuyển biến tích cực và đạt được kết quả khá toàn diện trên các lĩnh vực. </p><p style="text-align:justify;">Kinh tế tiếp tục tăng trưởng ổn định và chuyển dịch đúng hướng (GRDP tăng 8,68%); thu nhập bình quân đầu người đạt 130,8 triệu đồng; kim ngạch xuất khẩu đạt 25,3 tỷ đô la Mỹ, đặc biệt duy trì thặng dư thương mại trên 4,7 tỷ đô la Mỹ. Thu hút đầu tư nước ngoài đạt 2,2 tỷ đô la Mỹ; lũy kế đến nay đã thu hút được 32,3 tỷ đô la Mỹ, đứng thứ 3 trong toàn quốc. </p><p style="text-align:justify;">Công tác đối ngoại trong năm đạt được nhiều kết quả quan trọng, Bình Dương đã tổ chức thành công nhiều sự kiện quốc tế, nổi bật là kỷ niệm 20 năm thành lập Hiệp hội Đô thị Khoa học thế giới (WTA) và Diễn đàn hợp tác kinh tế Châu Á - Horasis 2018, những sự kiện đã để lại những dấu ấn tốt đẹp, góp phần quảng bá tiềm năng, lợi thế, đẩy mạnh thu hút đầu tư, mở rộng quan hệ hợp tác quốc tế của tỉnh. </p><p style="text-align:justify;">Tiếp tục phát huy tối đa tinh thần đoàn kết, quyết tâm vượt khó vươn lên; tập trung tăng tốc bứt phá trong năm 2019, Chủ tịch UBND tỉnh Trần Thanh Liêm lưu ý, các cấp, các ngành cần khai thác tối đa tiềm năng, thế mạnh sẵn có, biết vận dụng và tranh thủ các thời cơ, để tạo ra bước đột phá mới. Huy động mạnh mẽ các nguồn lực để phát triển cơ sở hạ tầng, tạo sự chuyển biến mạnh mẽ trên lĩnh vực văn hóa xã hội; thực hiện tốt các chính sách an sinh xã hội; giải quyết kịp thời các vấn đề bức xúc; nâng cao hơn nữa mức sống vật chất, tinh thần của người dân và đảm bảo cho người dân trên địa bàn tỉnh được thụ hưởng một cách nhanh nhất, đầy đủ nhất từ những thành quả phát triển của tỉnh mang lại. Tiếp tục triển khai đồng bộ các giải pháp giữ vững ổn định an ninh chính trị, trật tự an toàn xã hội; thực hiện đạt mục tiêu của nhiệm kỳ này nhằm tạo được nền tảng vững chắc cho nhiệm kỳ tiếp theo; góp phần tạo điều kiện thuận lợi cho phát triển kinh tế và đảm bảo cuộc sống yên bình cho nhân dân tỉnh nhà.</p><p style="text-align:justify;">Tại buổi họp mặt, UBND tỉnh đã tuyên dương 09 gương người tốt, việc tốt nhằm ghi nhận những tấm gương tiêu biểu trên các lĩnh vực, góp phần giữ vững an ninh chính trị, trật tự an toàn xã hội, xây dựng và bảo vệ Tổ quốc. </p><p style="text-align:center;"><img src="/uploads/news/2019_03/img-0427ok-key-04022019224624.jpg" alt="Bình Dương họp mặt giao thừa Tết Nguyên đán Kỷ Hợi 2019 và tuyên dương người tốt, việc tốt" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Trần Văn Nam - Bí thư Tỉnh uỷ trao biểu trưng lưu niệm cho người tốt, việc tốt</span></p><p style="text-align:center;"><img src="/uploads/news/2019_03/img-0437ok-key-04022019224653.jpg" alt="Bình Dương họp mặt giao thừa Tết Nguyên đán Kỷ Hợi 2019 và tuyên dương người tốt, việc tốt - Ảnh minh hoạ 2" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Trần Thanh Liêm - Chủ tịch UBND tỉnh tặng hoa cho người tốt, việc tốt</span></p><p style="text-align:center;"><img src="/uploads/news/2019_03/img-0438ok-key-04022019224712.jpg" alt="Bình Dương họp mặt giao thừa Tết Nguyên đán Kỷ Hợi 2019 và tuyên dương người tốt, việc tốt - Ảnh minh hoạ 3" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Lãnh đạo tỉnh chụp hình lưu niệm với người tốt, việc tốt</span></p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(41, 'Quy định quản lý tài nguyên nước trên địa bàn tỉnh Bình Dương', 'TTĐT - ​UBND tỉnh Bình Dương vừa ban hành Quyết định số 04&#x002F;2019&#x002F;QĐ-UBND quy định quản lý tài nguyên nước trên địa bàn tỉnh Bình Dương. Quyết định này có hiệu lực thi hành kể từ ngày 01&#x002F;4&#x002F;2019 và thay thế Quyết định số 44&#x002F;2014&#x002F;QĐ-UBND ngày 04&#x002F;12&#x002F;2014 của UBND tỉnh.​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_2c252756_52d1_402f_9e55_c5d20c741adb_ctl00_Label_BodyTinTucMoRong"><p style="text-align:justify;">Quy định này quy định về điều tra cơ bản tài nguyên nước; thẩm quyền đăng ký khai thác nước dưới đất, cấp phép hoạt động về tài nguyên nước và phê duyệt tính tiền cấp quyền khai thác tài nguyên nước; trách nhiệm, quyền hạn của các cơ quan quản lý nhà nước về quản lý tài nguyên nước và các tổ chức, cá nhân hoạt động về tài nguyên nước trên địa bàn tỉnh. </p><p style="text-align:justify;">Đối tượng áp dụng gồm các cơ quan quản lý nhà nước, tổ chức, cá nhân, hộ gia đình có liên quan đến hoạt động tài nguyên nước trên địa bàn tỉnh Bình Dương.</p><p style="text-align:justify;">So với Quyết định số 44/2014/QĐ-UBND, Quyết định này chỉnh sửa, bổ sung một số nội dung mới như: Bỏ Điều giải thích từ ngữ, bỏ các Điều liên quan đến quy hoạch tài nguyên nước, các Điều liên quan đến thủ tục hành chính được dẫn chiếu theo Điều Khoản của Nghị định, Thông tư… Trách nhiệm kiểm kê tài nguyên nước được giao cho UBND cấp huyện chủ trì thực hiện; thẩm quyền cấp phép, phê duyệt tính tiền cấp quyền khai thác tài nguyên nước được quy định cụ thể cho Sở Tài nguyên và Môi trường, UBND cấp huyện. Đồng thời quy định chi tiết hơn trách nhiệm của cơ quan chuyên môn thuộc UBND tỉnh, trách nhiệm của UBND cấp huyện, cấp xã,…</p><p style="text-align:justify;">Tải về <a href="https://www.binhduong.gov.vn/chinhquyen/Pages/van-ban-quy-pham-phap-luat-chi-tiet.aspx?ItemID=1697">Quyết định.​</a></p></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(42, 'Năm 2019, triển khai 11 dự án xây dựng Thành phố thông minh Bình Dương', 'TTĐT - Chiều 14 - 3, tại Trung tâm Hội nghị và Triển lãm tỉnh, ông Mai Hùng Dũng – Phó Chủ tịch Thường trực UBND tỉnh, Trưởng Ban Điều hành Thành phố thông minh &#40;TPTM&#41; Bình Dương chủ trì họp Ban Điều hành thông qua Kế hoạch thực hiện Đề án TPTM Bình Dương trong năm 2019.', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_2c252756_52d1_402f_9e55_c5d20c741adb_ctl00_Label_BodyTinTucMoRong"><div style="text-align:justify;">  </div><p style="text-align:justify;">Theo đó, năm 2019, Bình Dương sẽ tập trung thực hiện 11 dự án trọng điểm liên quan đến logistics thông minh; nhà máy bán dẫn; đào tạo nguồn nhân lực chất lượng cao, phát triển hệ thống Fablab, Techlab trong các trường đại học, thúc đẩy đổi mới sáng tạo trong cộng đồng, hỗ trợ khởi nghiệp; phát triển Khu công nghiệp Khoa học công nghệ; đẩy mạnh dự án Lighting LED; triển khai xây dựng hệ thống phần mềm quản lý cơ sở dữ liệu doanh nghiệp; phát triển hệ thống chính quyền điện tử, cải cách hành chính và ứng dụng công nghệ thông tin trong quản lý; đẩy mạnh truyền thông, quảng bá hình ảnh Bình Dương; tổ chức sự kiện mang tầm quốc tế; phát triển các chương trình bền vững. </p><p style="text-align:justify;"><span lang="VI">Cuộc họp đã </span>thảo luận chương trình kế hoạch của từng đơn vị sẽ thực hiện phục vụ cho Đề án TPTM theo kế hoạch năm 2019. Qua thảo luận cho thấy, nhiều <span lang="VI">dự án </span>sẽ được hoàn thành trong năm nay. Cụ thể như đưa vào hoạt động Trung tâm sáng kiến cộng đồng và hỗ trợ khởi nghiệp, thành lập và đưa vào hoạt động 2 Fablab tại Đại học Thủ Dầu Một và Cao đẳng nghề Việt Nam - Singapore; hoàn thành cơ sở dữ liệu doanh nghiệp tỉnh Bình Dương kết nối vào hệ thống cơ sở dữ liệu chung của tỉnh; ban hành kiến trúc cơ sở dữ liệu doanh nghiệp phục vụ TPTM; triển khai dự án chiếu sáng bằng đèn LED tại khu vực thành phố mới Bình Dương. Tỉnh sẽ tập trung nghiên cứu xây dựng Khu công nghiệp Khoa học công nghệ; nghiên cứu khả thi logistics thông minh và tuyến đường sắt trình Chính phủ phê duyệt dự án. Riêng Ban Điều hành Đề án TPTM chuẩn bị tổ chức các sự kiện lớn liên quan đến TPTM tại Bình Dương, phát huy mạng lưới quốc tế , Horasis, WTA, ICF...</p><p style="text-align:justify;">K<span lang="VI">ết luận cuộc họp</span>,<span lang="VI"> ông Mai Hùng Dũng </span>cơ bản thống nhất với kế hoạch triển khai thực hiện Đề án TPTM Bình Dương năm 2019. Ông <span lang="VI">lưu ý thêm,</span> tỉnh cần<span lang="VI"> khai thác</span> tốt<span lang="VI"> các mối quan hệ </span>với các tổ chức quốc tế có kinh nghiệm <span lang="VI">để </span>họ hỗ trợ tư vấn <span lang="VI">một số dự án triển khai </span>xây dựng TPTM<span lang="VI">. Các sở, ngành, đơn vị tập trung triển khai thực hiện hiệu quả các dự án</span> đã đề ra<span lang="VI">, nhất là</span> các dự án liên quan đến bán dẫn,<span lang="VI"> đèn chiếu sáng khu vự</span>c, xây dựng C<span lang="VI">hính phủ điện tử. </span>T<span lang="VI">ổ chức </span>Diễn đàn <span lang="VI">Horasis 2019 bên cạnh các chương trình chính, cần phải có thêm các chương trình sáng kiến để sinh viên, người dân tham gia. </span></p></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(43, 'Bình Dương&#x3A; 46&#x002F;46 xã đạt chuẩn nông thôn mới', 'TTĐT - ​Sáng 14-3, tại Trung tâm Hành chính tỉnh Bình Dương, ông Mai Hùng Dũng - Ủy viên Ban Thường vụ Tỉnh ủy, Phó Chủ tịch Thường trực UBND tỉnh​ đã chủ trì họp Hội đồng thẩm định xét công nhận xã đạt chuẩn nông thôn mới năm 2018.​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_2c252756_52d1_402f_9e55_c5d20c741adb_ctl00_Label_BodyTinTucMoRong"><p style="text-align:justify;">​Căn cứ Quyết định số 2540/QĐ-TTg ngày 30/12/2016 của Thủ tướng Chính phủ về việc ban hành Quy định điều kiện, trình tự, thủ tục, hồ sơ xét công nhận và công bố địa phương đạt chuẩn nông thôn mới, địa phương hoàn thành nhiệm vụ xây dựng nông thôn mới giai đoạn 2016-2020 và theo kết quả ý kiến nhất trí của các thành viên Hội đồng thẩm định tại cuộc họp, 03 xã trên địa bàn tỉnh Bình Dương gồm An Bình, Phước Hoà (huyện Phú Giáo) và Trừ Văn Thố (huyện Bàu Bàng) được công nhận xã đạt chuẩn nông thôn mới năm 2018. Như vậy, đến nay, 46/46 xã của tỉnh Bình Dương đều đã hoàn thành xây dựng nông thôn mới. Huyện Dầu Tiếng đã đạt chuẩn nông thôn mới, thị xã Tân Uyên hoàn thành nhiệm vụ xây dựng nông thôn mới, thị xã Bến Cát đã được phê duyệt hoàn thành nhiệm vụ xây dựng nông thôn mới.  </p><p style="text-align:justify;">Thống nhất với kết quả thẩm định các xã nông thôn mới, ông Mai Hùng Dũng nhấn mạnh, xây dựng nông thôn mới là quá trình thường xuyên, liên tục với mục đích chính là nâng cao đời sống cư dân nông thôn. Do đó, trên nền tảng kết quả đã đạt được, các địa phương cần tiếp tục tập trung nâng cao chất lượng tiêu chí ở các xã đã đạt chuẩn, hướng đến xây dựng nông thôn mới nâng cao, kiểu mẫu; phát huy những cách làm hay, sáng tạo để chương trình xây dựng nông thôn mới mang lại hiệu quả thiết thực hơn, phục vụ tốt đời sống cư dân nông thôn, tạo sự chuyển biến rõ nét hơn ở vùng nông thôn của tỉnh. Lãnh đạo tỉnh đề nghị các ngành, địa phương tiếp tục tập trung các điều kiện thực hiện tốt nhất chương trình xây dựng nông thôn mới, sớm đưa các huyện Phú Giáo, Bàu Bàng, Bắc Tân Uyên đạt chuẩn nông thôn mới.</p></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(44, 'Chính thức khai trương Trục liên thông văn bản quốc gia', '​​ TTĐT - Chiều 12-3, tại Hà Nội, Văn phòng Chính phủ &#40;VPCP&#41; đã chính thức khai trương Trục liên thông văn bản quốc gia. Lễ khai trương có kết nối truyền hình trực tuyến với 63 điểm cầu tại các tỉnh, thành phố. ', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_2c252756_52d1_402f_9e55_c5d20c741adb_ctl00_Label_BodyTinTucMoRong"><p style="text-align:justify;">​<span style="background-color:transparent;">​</span><span style="background-color:transparent;">Tham dự có Thủ tướng Chính phủ Nguyễn Xuân Phúc; Trưởng Ban Tổ chức Trung ương Phạm Minh Chính; Phó Thủ tướng Chính phủ Vũ Đức Đam; Bộ trưởng, Chủ nhiệm VPCP Mai Tiến Dũng; Thứ trưởng Bộ Thông tin và Truyền thông Nguyễn Thành Hưng; đại diện các Bộ, ngành và tỉnh, thành, Tập đoàn VNPT, Viettel và khách quốc tế.</span></p><p style="text-align:justify;">Tại điểm cầu Bình Dương, tham dự có ông Trần Thanh Liêm – Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh; lãnh đạo các sở, ban, ngành, địa phương.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/trucvb-3.jpg" alt="TrucVB 3.jpg" class="ms-rte-paste-setimagesize" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;text-decoration-style:solid;text-decoration-color:#0000ff;">Toàn cảnh hội nghị tại điểm cầu Bình Dương​</span><br></p><p style="text-align:justify;">Ngày 19/01/2019, VPCP đã phối hợp với các Bộ, ngành, địa phương cùng với Tập đoàn VNPT – đơn vị triển khai, để tiến hành chuyển đổi hệ thống Trục liên thông văn bản quốc gia theo công nghệ mới, thử nghiệm gửi, nhận văn bản điện tử với 95 Bộ, ngành, địa phương; thực hiện theo dõi, đánh giá tình hình gửi, nhận văn bản của các Bộ, ngành, địa phương sau chuyển đổi. Đến thời điểm hiện tại, hệ thống đang hoạt động ổn định. Cụ thể, số lượng đơn vị kết nối hệ thống Quản lý văn bản và điều hành (QLVB&ĐH) thông qua Trục liên thông văn bản quốc gia là 95/95 cơ quan (31 Bộ, cơ quan ngang Bộ, cơ quan thuộc Chính phủ; 63 tỉnh, thành phố trực thuộc Trung ương và Văn phòng Trung ương Đảng) đã hoàn thành kết nối thông qua mạng Truyền số liệu chuyên dùng của các cơ quan Đảng, Nhà nước.</p><p style="text-align:justify;">Tính đến ngày 8/3/2019, 100% cơ quan đã hoàn thành cập nhật mã định danh cơ quan theo Thông tư 10/2016/TT-BTTTT ngày 01/4/2016 của Bộ Thông tin và Truyền thông về việc ban hành Quy chuẩn kỹ thuật quốc gia về cấu trúc mã định danh và định dạng dữ liệu gói tin phục vụ kết nối các phần mềm QLVB&ĐH.</p><p style="text-align:justify;">Trong thời gian từ ngày 19/01/2019 đến 8/3/2019 đã có 12.257 văn bản gửi, 35.360 văn bản nhận trên Trục liên thông văn bản quốc gia, trong đó Thanh tra Chính phủ chưa phát sinh gửi văn bản điện tử. Hiện 63/95 cơ quan đã chuẩn bị được máy chủ bảo mật dùng riêng, tích hợp chứng thư số chuyên dùng do Ban Cơ yếu Chính phủ cung cấp (bảo đảm văn bản điện tử gửi, nhận thông qua Trục liên thông văn bản quốc gia được thông suốt, an toàn, an ninh), 32/95 cơ quan đang sử dụng máy chủ bảo mật chung do VPCP cung cấp.</p><p style="text-align:justify;">Bên cạnh đó, vấn đề bảo đảm an toàn, an ninh thông tin văn bản gửi, nhận trên Trục liên thông văn bản quốc gia được VPCP đặc biệt quan tâm. Do vậy, VPCP đã phối hợp với Bộ Thông tin và Truyền thông, Bộ Công an tiến hành kiểm tra, đánh giá an toàn, an ninh đối với hệ thống thiết bị, hệ thống ứng dụng Trục liên thông văn bản quốc gia. Trong thời gian tới sẽ liên tục rà soát, đánh giá an toàn bảo mật đối với Trục liên thông văn bản quốc gia, đảm bảo an ninh, an toàn tối đa cho hệ thống.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/trucvb-2.jpg" alt="TrucVB 2.jpg" class="ms-rte-paste-setimagesize" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;text-decoration-style:solid;text-decoration-color:#0000ff;">Thủ tướng Nguyễn Xuân Phúc ký ban hành văn bản trên hệ thống quản lý văn bản điện tử (Nguồn: Chinhphu.vn)​</span><br></p><p style="text-align:justify;">Bộ trưởng, Chủ nhiệm VPCP Mai Tiến Dũng cho biết, Trục liên thông văn bản quốc gia là tiền đề của nền tảng tích hợp dữ liệu phục vụ xây dựng Chính phủ điện tử, hướng tới Chính phủ số, nền kinh tế số. Đây là một bước đột phá mạnh mẽ vào tư duy giấy tờ, quan liêu kiểu cũ để tạo lập nền tảng cho những bước phát triển mới của Chính phủ điện tử và là một trong những bước đi chuẩn bị cho việc triển khai ở giai đoạn tiếp theo nền tảng tích hợp, chia sẻ quốc gia kết nối các hệ thống thông tin, cơ sở dữ liệu của các Bộ, ngành, địa phương, thúc đẩy quá trình chuyển đổi số tại các cơ quan nhà nước nhằm phục vụ người dân, doanh nghiệp tốt hơn.</p><p style="text-align:justify;">Tại buổi lễ, Thủ tướng Chính phủ Nguyễn Xuân Phúc, Trưởng Ban Tổ chức Trung ương Phạm Minh Chính, Phó Thủ tướng Chính phủ Vũ Đức Đam, cùng lãnh đạo các cơ quan Trung ương, khách quốc tế... đã thực hiện nghi thức khai trương Trục liên thông văn bản quốc gia. Tiếp đó, Thủ tướng Chính phủ Nguyễn Xuân Phúc đã ký, ban hành Quyết định phê duyệt Đề án Cổng dịch vụ công quốc gia trên hệ thống phần mềm quản lý hồ sơ công việc và gửi nhận văn bản điện tử trên môi trường mạng. </p><p style="text-align:center;"><img src="/uploads/news/2019_03/trucvb-1.jpg" alt="TrucVB 1.jpg" class="ms-rte-paste-setimagesize" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;text-decoration-style:solid;text-decoration-color:#0000ff;">Các đại biểu thực hiện nghi thức khai trương Trục liên thông văn bản quốc gia (Nguồn: Chinhphu.vn)​</span><br></p><p style="text-align:justify;">Để phát huy những kết quả đã đạt được, với mong muốn xây dựng, vận hành Trục liên thông văn bản quốc gia thông suốt, thống nhất, an toàn và hiệu quả; góp phần hoàn thành mục tiêu đưa Việt Nam vào nhóm 4 nước dẫn đầu về Chính phủ điện tử của ASEAN, Thủ tướng Chính phủ Nguyễn Xuân Phúc đã yêu cầu các Bộ, ngành, địa phương nghiêm túc triển khai gửi, nhận văn bản điện tử trên Trục liên thông văn bản quốc gia theo đúng quy định; huy động, sử dụng có hiệu quả mọi nguồn lực để tập trung nâng cấp, hoàn thiện các phần mềm quản lý văn bản nội bộ và triển khai hạ tầng kỹ thuật đồng bộ phục vụ liên thông gửi, nhận văn bản điện tử…; tiếp tục xây dựng, hoàn thiện các cơ sở dữ liệu quốc gia, trước mắt là các cơ sở dữ liệu quốc gia về dân cư, bảo hiểm, tài chính, đăng ký doanh nghiệp, đất đai quốc gia, hộ tịch điện tử và các cơ sở dữ liệu chuyên ngành, để trong giai đoạn 2020 - 2025 sẵn sàng kết nối liên thông với nền tảng tích hợp, chia sẻ dữ liệu quốc gia được phát triển trên nền Trục liên thông văn bản quốc gia; bảo đảm tối đa an toàn thông tin, an ninh mạng, bảo vệ thông tin cá nhân, tổ chức; không được để lộ, lọt dữ liệu và thông tin thuộc phạm vi bí mật nhà nước. Thủ tướng cũng yêu cầu các Bộ trưởng, Thủ trưởng cơ quan ngang Bộ, cơ quan thuộc Chính phủ và hệ thống chính trị, đặc biệt là Chủ tịch UBND các tỉnh, thành phố trực thuộc Trung ương, căn cứ nhiệm vụ được giao tại Nghị quyết 17/NQ-CP của Chính phủ ngày 07/3/2019 về một số nhiệm vụ, giải pháp trọng tâm phát triển Chính phủ điện tử giai đoạn 2019-2020, định hướng đến 2025, tập trung chỉ đạo, bảo đảm hoàn thành các mục tiêu, nhiệm vụ đã đề ra.​</p></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(45, 'Năm 2019&#x3A; Bình Dương đẩy mạnh phát triển công nghiệp và dịch vụ thông minh', 'TTĐT - Chiều 04-3, tại Trung tâm Hành chính tỉnh Bình Dương, ông Mai Hùng Dũng - Phó Chủ tịch Thường trực UBND tỉnh chủ trì họp nghe các đơn vị báo cáo kế hoạch thực hiện Đề án Thành phố thông minh Bình Dương năm 2019 và chuẩn bị Diễn đàn Hợp tác kinh tế châu Á - Horasis 2019; kiến trúc điều hành cho Thành phố thông minh Bình Dương.', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_2c252756_52d1_402f_9e55_c5d20c741adb_ctl00_Label_BodyTinTucMoRong"><p style="text-align:justify;"></p><div style="text-align:justify;">  </div><div style="text-align:justify;">  </div><p style="text-align:justify;">Theo kế hoạch, mục tiêu năm 2019, Bình Dương sẽ tập trung chủ đề công nghiệp và dịch vụ thông minh; hoàn thiện hơn nữa mô hình hợp tác Ba nhà; đẩy mạnh kết nối, trao đổi quốc tế, tham gia tích cực, phát huy tối đa cơ hội hợp tác với các mạng lưới, tổ chức quốc tế của các thành phố thông minh, khoa học công nghệ trên thế giới; triển khai ít nhất 03 dự án có hiệu quả trực tiếp đến người dân và doanh nghiệp. </p><p style="text-align:justify;">Để đạt được mục tiêu trên, các cấp, các ngành sẽ tập trung triển khai thực hiện 11 dự án trọng điểm. Trong đó, phát triển logictics thông minh để tạo động lực thu hút các doanh nghiệp có giá trị gia tăng cao, thúc đẩy sản xuất kinh doanh; phát triển nhà máy bán dẫn công đoạn Back-end để thu hút các nhà đầu tư công nghệ cao; tập trung phát triển nguồn nhân lực chất lượng cao; phát triển khu công nghiệp khoa học công nghệ; phát triển các chương trình phát triển bền vững như năng lượng sạch, bảo vệ môi trường, xử lý rác thải; xây dựng đường dây nóng, hệ thống camera giao thông thông minh, ứng dụng công nghệ thông tin cho Thành phố thông minh...</p><p style="text-align:justify;">Đặc biệt, trong năm 2019, Bình Dương tiếp tục tổ chức các sự kiện lớn mang tầm quốc tế như Diễn đàn Hợp tác kinh tế châu Á - Horasis 2019, cuộc thi ý tưởng sáng tạo hàng năm về thành phố thông minh. Theo đó, Diễn đàn Hợp tác kinh tế châu Á - Horasis 2019 dự kiến sẽ diễn ra từ 24-25/11/2019 tại Thành phố mới Bình Dương. </p><p style="text-align:justify;">Qua báo cáo của các cơ quan, đơn vị, ông Mai Hùng Dũng - Phó Chủ tịch Thường trực UBND tỉnh lưu ý, Văn phòng Thành phố thông minh Bình Dương và các cơ quan, đơn vị dựa trên kế hoạch đã đăng ký trong năm 2019 tập trung triển khai thực hiện có hiệu quả các dự án; chủ động đề xuất những đề án đổi mới, sáng tạo phục vụ cho Đề án Thành phố thông minh Bình Dương, đặc biệt các dự án ứng dụng công nghệ thông tin cho Thành phố thông minh; đẩy mạnh kết nối giữa Bình Dương và các tổ chức quốc tế. Đối với sự kiện Horasis 2019, Phó Chủ tịch cơ bản thống nhất với công tác chuẩn bị, tuy nhiên cần đẩy mạnh công tác tuyên truyền, quảng bá để nâng tầm hình ảnh Bình Dương trên trường quốc tế. </p></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(46, 'Bình Dương&#x3A; Đại lý Internet không cung cấp dịch vụ trò chơi điện tử chỉ được hoạt động từ 8 giờ đến 22 giờ hàng ngày', 'TTĐT - ​UBND tỉnh vừa ban hành Quyết định số 02&#x002F;2019&#x002F;QĐ-UBND quy định thời gian hoạt động của điểm truy nhập Internet công cộng không cung cấp dịch vụ trò chơi điện tử; qu​​y mô diện tích và thẩm quyền cấp, sửa đổi, bổ sung, gia hạn, cấp lại, thu hồi giấy chứng nhận đủ điều kiện hoạt động đối với điểm cung cấp dịch vụ trò chơi điện tử công cộng trên địa bàn tỉnh Bình Dương. Quyết định này có hiệu lực kể từ ngày 01&#x002F;03&#x002F;2019 và thay thế Quyết định số 31&#x002F;2014&#x002F;QĐ-UBND ngày 12&#x002F;8&#x002F;2014, Quyết định số 3003&#x002F;QĐ-UBND ngày 26&#x002F;11&#x002F;2014.​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_2c252756_52d1_402f_9e55_c5d20c741adb_ctl00_Label_BodyTinTucMoRong"><p style="text-align:justify;">Theo đó, đại lý Internet không cung cấp dịch vụ trò chơi điện tử chỉ được hoạt động từ 8 giờ đến 22 giờ hàng ngày. Điểm truy nhập Internet công cộng không cung cấp dịch vụ trò chơi điện tử của doanh nghiệp cung cấp dịch vụ truy nhập Internet được hoạt động theo giờ mở cửa hoạt động chung của doanh nghiệp. Điểm truy nhập Internet công cộng tại khách sạn, nhà hàng, sân bay, bến tàu, bến xe, quán cà phê và điểm công cộng khác không cung cấp dịch vụ trò chơi điện tử được hoạt động theo giờ mở cửa, đóng cửa của mỗi điểm.</p><p style="text-align:justify;">Tổng diện tích các phòng máy của điểm cung cấp dịch vụ trò chơi điện tử công cộng tại các phường thuộc các thị xã và thành phố Thủ Dầu Một tối thiểu là 50m<sup>2</sup>; tại các thị trấn thuộc các huyện tối thiểu là 40m<sup>2</sup>; tại các xã trên địa bàn tỉnh tối thiểu là 30m<sup>2</sup> .</p><p style="text-align:justify;">​UBND cấp huyện chủ trì thực hiện việc thẩm định hồ sơ, kiểm tra thực tế và cấp, sửa đổi, bổ sung, gia hạn, cấp lại, thu hồi giấy chứng nhận đủ điều kiện hoạt động đối với điểm cung cấp dịch vụ trò chơi điện tử công cộng thuộc địa bàn quản lý.</p><p style="text-align:justify;">Quyết định này điều chỉnh theo Nghị định số 27/2018/NĐ-CP ngày 01/3/2018 của Chính phủ, trong đó quy định cụ thể quy mô diện tích phòng máy tại các xã, phường thuộc các huyện, thị xã, thành phố trên địa bàn tỉnh Bình Dương (trước đây quy định theo loại đô thị).</p><p style="text-align:justify;">Tài về <a href="https://www.binhduong.gov.vn/Lists/ThongTinTuyenTruyen/NewForm.aspx?Source=/Lists/thongtintuyentruyen/Tatca.aspx&ContentTypeId=0x01006B434E144EA34B09B66CBCE45AAE3E910038B3B4FD4C33074F83820CAC1CCEE180&RootFolder=/Lists/ThongTinTuyenTruyen">Quyết định.​</a></p></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1);
INSERT INTO `tms_vi_news_detail` (`id`, `titlesite`, `description`, `bodyhtml`, `keywords`, `sourcetext`, `files`, `imgposition`, `layout_func`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`) VALUES
(47, 'Quy chế quản lý, vận hành và sử dụng mạng truyền số liệu chuyên dùng cấp II của các cơ quan Đảng, Nhà nước trên địa bàn tỉnh Bình Dương', 'TTĐT - ​UBND tỉnh vừa ban hành Quyết định số 03&#x002F;2019&#x002F;QĐ-UBND về Quy chế quản lý, vận hành và sử dụng mạng truyền số liệu chuyên dùng cấp II của các cơ quan Đảng, Nhà nước trên địa bàn tỉnh Bình Dư​​ơng. Quyết định này có hiệu lực thi hành từ ngày 01&#x002F;03&#x002F;2019 và thay thế Quyết định số 03&#x002F;2012&#x002F;QĐ-UBND ngày 12&#x002F;01&#x002F;2012 của UBND tỉnh.', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_2c252756_52d1_402f_9e55_c5d20c741adb_ctl00_Label_BodyTinTucMoRong"><p style="text-align:justify;">Quyết định này quy định việc quản lý, vận hành và sử dụng mạng truyền số liệu chuyên dùng (TSLCD) cấp II (phân hệ của mạng truyền số liệu chuyên dùng kết nối tới các thiết bị đầu cuối tại cấp tỉnh, cấp huyện và cấp xã ) theo đúng quy định tại Thông tư số 27/2017/TT-BTTTT.</p><p style="text-align:justify;"></p><p style="text-align:justify;">Việc quản lý, vận hành mạng TSLCD cấp II thực hiện theo quy định tại Điều 4 Thông tư số 27/2017/TT-BTTTT ngày 20/10/2017 của Bộ Thông tin và Truyền thông quy định về việc quản lý, vận hành, kết nối, sử dụng và đảm bảo an toàn thông tin trên mạng TSLCD của các cơ quan Đảng, Nhà nước. Chi phí sử dụng mạng TSLCD cấp II và tài nguyên Internet (địa chỉ IP và tên miền) thực hiện theo quy định của Bộ Thông tin và Truyền thông, được đảm bảo từ nguồn ngân sách nhà nước cấp cho các đơn vị sử dụng mạng TSLCD cấp II thông qua Trung tâm Thông tin điện tử (trực thuộc Sở Thông tin và Truyền thông) theo nhu cầu và mức độ sử dụng thực tế của từng đơn vị trên cơ sở tiết kiệm và hiệu quả. Việc sử dụng, chia sẻ và lưu trữ thông tin trên Mạng TSLCD cấp II thực hiện theo quy định tại Điều 10 Thông tư số 27/2017/TT-BTTTT.​</p></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(48, 'Hội thảo phát triển kiến trúc cho Thành phố thông minh Bình Dương', 'TTĐT - Chiều 21-02, tại Trung tâm Hội nghị và Triển lãm tỉnh, UBND tỉnh Bình Dương tổ chức Hội thảo phát triển kiến trúc cho Thành phố thông minh  &#40;TPTM&#41; Bình Dương.', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_2c252756_52d1_402f_9e55_c5d20c741adb_ctl00_Label_BodyTinTucMoRong"><p style="text-align:justify;"><span lang="VI">Tham dự có ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh; lãnh đạo các sở, ban, ngành, đoàn thể tỉnh cùng các chuyên gia, nhà khoa học trong và ngoài nước.<br></span></p><p style="text-align:center;"><img src="/uploads/news/2019_03/img-1967ok-key-21022019181106.jpg" alt="Hội thảo phát triển kiến trúc cho Thành phố thông minh Bình Dương" style="margin:5px;" />  </p><p style="text-align:center;"><span style="color:#0000ff;">Ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh phát biểu tại hội thảo</span><br></p><p style="text-align:justify;"><span lang="VI"></span></p><p style="text-align:justify;"><span lang="VI">Phát biểu tại hội thảo, ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh </span>cho biết<span lang="VI">, hội thảo </span>là dịp để <span lang="VI">các chuyên gia, các nhà khoa học chia sẻ</span>,<span lang="VI"> giới thiệu các kinh nghiệm quý, các giải pháp hay trong việc phát triển các yếu tố nền tảng về </span>công nghệ thông tin (<span lang="VI">CNTT</span>)<span lang="VI"> phục vụ xây dựng đô thị thông minh, giúp Bình Dương có điều kiện tìm kiếm, phát triển các mô hình phù hợp để có thể triển khai áp dụng trên địa bàn tỉnh. </span>Phó Chủ tịch UBND tỉnh <span lang="VI">mong muốn các chuyên gia, nhà khoa học tiếp tục nghiên cứu hiện trạng cùng các điều kiện riêng của tỉnh để có những tư vấn cụ thể, thiết thực góp phần thực hiện thành công </span>Đ<span lang="VI">ề án </span>xây dựng <span lang="VI">TPTM Bình Dương.<br></span></p><p style="text-align:center;"><span lang="VI"><img src="/uploads/news/2019_03/img-1980ok-key-21022019181203.jpg" alt="Hội thảo phát triển kiến trúc cho Thành phố thông minh Bình Dương - Ảnh minh hoạ 2" style="margin:5px;" /><br></span></p><p style="text-align:center;"><span lang="VI"><img src="/uploads/news/2019_03/img-1984ok-key-21022019181246.jpg" alt="Hội thảo phát triển kiến trúc cho Thành phố thông minh Bình Dương - Ảnh minh hoạ 3" style="margin:5px;" /><br></span></p><p style="text-align:center;"><span lang="VI"><span style="color:#0000ff;">Chuyên gia chia sẻ các giải pháp xây dựng TPTM Bình Dương</span><br></span></p><p style="text-align:center;"><img src="/uploads/news/2019_03/img-1973ok-key-21022019181109.jpg" alt="Hội thảo phát triển kiến trúc cho Thành phố thông minh Bình Dương - Ảnh minh hoạ 4" style="margin:5px;" />  </p><p style="text-align:center;"><span style="color:#0000ff;">Toàn cảnh hội thảo</span><br></p><p style="text-align:justify;"><span lang="VI"></span></p><p style="text-align:justify;"><span lang="VI">Tại hội thảo, các chuyên gia đã </span>thảo luận, <span lang="VI">chia sẻ những giải pháp phát triển kiến trúc cho </span>TPTM<span lang="VI"> Bình Dương. Theo các chuyên gia, việc xây dựng đô thị thông minh là một xu thế đã được nhiều thành phố trên thế giới triển khai thành công gần đây. Sự phát triển mạnh mẽ của công nghệ thông tin với những năng lực mới do công nghệ đem lại như</span>: Đ<span lang="VI">iện toán đám mây</span>;<span lang="VI"> kết nối và đo lường trực tuyến</span>;<span lang="VI"> xử lý dữ liệu quy mô lớn</span>;<span lang="VI"> nhận dạng</span>;<span lang="VI"> công nghệ số, di động, Internet vạn vật...</span><span lang="VI"> </span><span lang="VI">đã và đang giúp các nhà quản lý đô thị xây dựng các chiến lược mới nhằm tối ưu hoá sử dụng tài nguyên và năng lượng, nâng cao khả năng ứng phó và chống chịu với thách thức, phối hợp giải quyết vấn đề ở quy mô lớn hơn, toàn diện và kịp thời hơn. Các chuyên gia đã chỉ ra mô hình thành công của một số </span>TPTM<span lang="VI"> trên thế giới như Hàn Quốc đã vận dụng thành công kiến trúc cho TPTM. Đối với Bình Dương, Đề án xây dựng TPTM Bình Dương là nền tảng rất quan trọng để triển khai các bước xây dựng TPTM.</span> X<span lang="VI">ây dựng TPTM thì việc tích hợp và chia sẻ dữ liệu rất quan trọng. Đồng thời phải giải quyết được các vấn đề đặt ra đối với các nước phát triển </span>về<span lang="VI"> giao thông, y </span>t<span lang="VI">ế, </span>bảo vệ <span lang="VI">môi trường, giáo dục</span>..<span lang="VI">. </span></p></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(49, 'Quy định về xây dựng, quản lý, sử dụng nghĩa trang và cơ sở hỏa táng trên địa bàn tỉnh Bình Dương', 'TTĐT- ​UBND tỉnh Bình Dương vừa ban hành Quyết định số 01&#x002F;2019&#x002F;QĐ-UBND quy định về xây dựng, quản lý, sử dụng nghĩa trang và cơ sở hỏa tán​g trên địa bàn tỉnh Bình Dương. Quyết định này có hiệu lực thi hành kể từ ngày 10&#x002F;02&#x002F;2019 và thay thế Quyết định số 46&#x002F;2011&#x002F;QĐ-UBND ngày 09&#x002F;11&#x002F;2011 của UBND tỉnh.​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_2c252756_52d1_402f_9e55_c5d20c741adb_ctl00_Label_BodyTinTucMoRong"><p style="text-align:justify;">​Nghĩa trang và cơ sở hỏa táng được phân cấp theo Thông tư số 03/2016/TT-BXD ngày 10/3/2016 của Bộ Xây dựng quy định về phân cấp công trình xây dựng và hướng dẫn áp dụng trong quản lý hoạt động đầu tư xây dựng.</p><p style="text-align:justify;">Về quy hoạch nghĩa trang vùng tỉnh, toàn bộ hệ thống nghĩa trang, cơ sở hỏa táng trên địa bàn tỉnh phải được quy hoạch tổng thể địa điểm, quy mô, phù hợp và thống nhất với Quy hoạch chung xây dựng đô thị Bình Dương được phê duyệt. Quy hoạch nghĩa trang vùng tỉnh phải xác định quy mô của từng cấp nghĩa trang, cơ sở hỏa táng và xác định được công suất sử dụng tối thiểu là 50 năm từ thời điểm lập quy hoạch. </p><p style="text-align:justify;">Việc lập quy hoạch chi tiết xây dựng nghĩa trang, cơ sở hỏa táng phải phù hợp với quy hoạch nghĩa trang vùng tỉnh được phê duyệt và thực hiện theo quy định tại Khoản 2, 3, 4, 5 Điều 8 Nghị định số 23/2016/NĐ-CP.</p><p style="text-align:justify;">Việc xây dựng mới hoặc mở rộng nghĩa trang, cơ sở hỏa táng phải thực hiện theo quy định của Luật xây dựng, QCVN 07-10:2016/BXD - Quy chuẩn kỹ thuật quốc gia các công trình hạ tầng kỹ thuật - Công trình nghĩa trang ban hành theo Thông tư số 01/2016/TT-BXD ngày 01/02/2016 của Bộ Xây dựng và theo Quy định này.</p><p style="text-align:justify;"><a href="https://www.binhduong.gov.vn/chinhquyen/Pages/van-ban-quy-pham-phap-luat-chi-tiet.aspx?ItemID=1694">Quyết định.​​</a></p></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(50, 'Công bố thủ tục hành chính được sửa đổi, bổ sung trong lĩnh vực môi trường, khí tượng thủy văn, địa chất và khoáng sản, tài nguyên nước thuộc thẩm quyền giải quyết của Sở Tài nguyên và Môi trường', 'TTĐT- ​UBND tỉnh vừa ban hành Quyết định về việc công bố thủ tục hành chính &#40;TTHC&#41; được sửa đổi, bổ sung trong lĩnh vực môi trường, khí tượng thủy văn, địa chất và khoáng sản, tài nguyên nước thuộc thẩm quyền giải quyết của Sở Tài nguyên và Môi trường. Quyết định này thay thế Quyết định số 1801&#x002F;QĐ-UBND ngày 02&#x002F;7&#x002F;2018 về việc công bố Bộ TTHC thuộc thẩm quyền giải quyết của Sở Tài nguyên và Môi trường, UBND cấp huyện và UBND cấp xã.', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_2c252756_52d1_402f_9e55_c5d20c741adb_ctl00_Label_BodyTinTucMoRong"><p style="text-align:justify;">​Theo đó, có 21 TTHC sửa đổi, bổ sung trong lĩnh vực môi trường, khí tượng thủy văn, địa chất và khoáng sản, tài nguyên nước thuộc thẩm quyền giải quyết của Sở Tài nguyên và Môi trường, gồm: 06 TTHC thuộc lĩnh vực môi trường, 03 TTHC thuộc lĩnh vực khí tượng thủy văn; 10 TTHC thuộc lĩnh vực địa chất và khoáng sản; 02 TTHC thuộc lĩnh vực tài nguyên nước.</p><p style="text-align:justify;"><a href="https://www.binhduong.gov.vn/chinhquyen/Pages/Van-ban-Chi-dao-Dieu-hanh-chi-tiet.aspx?ItemID=3072"><span style="color:#0000ff;">Quyết định ​</span></a></p></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(51, 'Chủ tịch UBND tỉnh Trần Thanh Liêm tiếp Thị trưởng thành phố Emmen &#40;Hà Lan&#41;', 'TTĐT - ​Chiều 08-3, tại Trung tâm hành chính tỉnh Bình Dương, ông Trần Thanh Liêm - Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh đã tiếp và làm việc với ng​ài Eric van Oosterhout - tân Thị trưởng thành phố Emmen &#40;Hà Lan&#41;. Tham dự có ông Nguyễn Văn Hùng - Ủy viên Ban Thường vụ Tỉnh ủy, Tổng Giám đốc Becamex IDC, cùng lãnh đạo các sở, ngành.​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClassE18C8015BAE347F89A2A5CC2839D520B"><p style="text-align:justify;">Thay mặt lãnh đạo tỉnh, Chủ tịch UBND tỉnh Trần Thanh Liêm cảm ơn sự quan tâm của ngài Thị trưởng và đoàn đã đến thăm Bình Dương. Giới thiệu về sự phát triển kinh tế-xã hội của tỉnh trong 20 năm qua, Chủ tịch UBND tỉnh cho biết, Bình Dương là tỉnh đầu tiên trong cả nước được công nhận là tỉnh không còn hộ nghèo theo tiêu chí của quốc gia và tỉnh đã ban hành chuẩn nghèo riêng của tỉnh. Mục tiêu của tỉnh là phát triển sản xuất công nghiệp - đô thị - dịch vụ , nâng cao mức sống của người dân, không để chênh lệch quá lớn giữa người dân đô thị và nông thôn. Trong quá trình phát triển của tỉnh, lãnh đạo tỉnh luôn quan tâm chú trọng đến phát triển bền vững. Trong thời gian tới, tỉnh sẽ tiếp tục thu hút đầu tư công nghệ cao, công nghệ hiện đại để giảm nguy cơ ảnh hưởng đến môi trường sống của người dân. </p><p style="text-align:justify;">Chủ tịch UBND tỉnh nhấn mạnh, Bình Dương và thành phố Emmen có sự hợp tác kết nghĩa nhiều năm và có sự hỗ trợ, giúp đỡ của thành phố Emmen đối với sự phát triển của tỉnh. Chủ tịch tỉnh mong muốn, trong thời gian tới, truyền thống và hợp tác hai bên sẽ ngày càng tốt hơn, tạo điều kiện hỗ trợ nhau cùng phát triển, đặc biệt là hợp tác trong việc xây dựng Thành phố thông minh.</p><p style="text-align:justify;">Ngài tân Thị trưởng Eric van Oosterhout cảm ơn Chủ tịch tỉnh đã chia sẻ chân thành, cũng như định hướng hợp tác trong tương lai. Đồng thời bày tỏ tin tưởng trong năm 2019, hai bên sẽ có nhiều khởi sắc trong việc hợp tác. </p><p style="text-align:center;"><img src="/uploads/news/2019_03/emmen2-key-09032019113323.jpg" alt="Chủ tịch UBND tỉnh Trần Thanh Liêm tiếp Thị trưởng thành phố Emmen (Hà Lan)" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Lãnh đạo tỉnh chụp hình kỷ niệm với Đoàn​</span><br></p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(52, 'Phó Chủ tịch UBND tỉnh Đặng Minh Hưng tiếp Tân Tổng Lãnh sự Cuba', 'TTĐT - ​Chiều 21-02, tại Trung tâm Hành chính tỉnh Bình Dương, ông Đặng Minh Hưng – Phó Chủ tịch UBND tỉnh đã tiếp bà Indira Lopez Arguelles – Tân Tổng Lãnh sự Cuba tại thành phố Hồ Chí Minh đến chào xã giao.', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass3D8CC27B89C3435BB46B660728B8454D"><p style="text-align:justify;">​<span style="background-color:transparent;">Tại buổi tiếp, bà Indira Lopez Arguelles khẳng định Việt Nam và Cuba có mối quan hệ khăng khít từ lâu đời và bày tỏ vui mừng trước những thành tựu về kinh tế - xã hội mà Việt Nam đạt được thời gian qua. Hiện nay, nhiều doanh nghiệp lớn của Cuba đã đến đầu tư tại Việt Nam trong nhiều lĩnh vực. Trong thời gian tới, Cuba sẽ đầu tư chuyển giao công nghệ và hợp tác trong lĩnh vực sản xuất thuốc, dược phẩm tại Việt Nam. Song song đó, sẽ hợp tác phát triển du lịch và hỗ trợ học bổng học tiếng Tây Ban Nha cho các học sinh. Bà tin tưởng rằng, Việt Nam nói chung và Bình Dương nói riêng sẽ có những bước tiến mới trong tương lai.</span></p><p style="text-align:center;"><span style="background-color:transparent;"><img src="/uploads/news/2019_03/cuba-1.jpg" alt="Cuba 1.jpg" style="margin:5px;" /><br></span></p><p style="text-align:center;"><span style="background-color:transparent;"><span style="color:#0000ff;">Phó Chủ tịch UBND tỉnh Đặng Minh Hưng tiếp bà Indira Lopez Arguelles – Tân Tổng Lãnh sự Cuba​</span><br></span></p><p style="text-align:justify;">Cảm ơn chuyến thăm Bình Dương của bà Indira Lopez Arguelles, Phó Chủ tịch UBND tỉnh Đặng Minh Hưng hy vọng sẽ nhận được nhiều sự quan tâm, giúp đỡ từ bà và mong muốn trong thời gian tới, sẽ có nhiều doanh nghiệp Cuba đến đầu tư tại Bình Dương.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/cuba-2.jpg" alt="Cuba 2.jpg" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="font-size:12px;"><span style="line-height:115%;color:#0000ff;font-family:arial;">Phó Chủ tịch UBND tỉnh Đặng Minh Hưng tặng quà lưu niệm cho bà Indira Lopez Arguelles – Tân Tổng Lãnh sự Cuba</span><span style="color:#0000ff;font-family:arial;">​</span><br></span></p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(53, 'Lãnh đạo tỉnh tiếp Đoàn đại biểu tỉnh Kratie &#40;Campuchia&#41; đến thăm và chúc Tết', '​TTĐT -  Chiều 28-01, tại Trung tâm Hành chính tỉnh Bình Dương, ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh đã chủ trì tiếp Đoàn đại biểu tỉnh Kratie, Vương quốc Campuchia do ông Hua Sy Dem - Phó Tỉnh trưởng tỉnh Kratie đến thăm và chúc Tết tỉnh Bình Dương.​​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass2875AB9849AF41D69110A01F359687C8"><p style="text-align:justify;">​Tại buổi tiếp, ông Hua Sy Dem đã chúc mừng sự phát triển toàn diện của tỉnh Bình Dương, đồng thời khẳng định mối quan hệ khắng khít giữa hai tỉnh Bình Dương và Kratie trong nhiều năm qua. Ông cảm ơn sự hỗ trợ trên nhiều lĩnh vực từ phía Bình Dương và hy vọng hai tỉnh sẽ tiếp tục hợp tác, trao đổi kinh nghiệm trong thời gian tới nhằm góp phần thắt chặt mối quan hệ giữa Việt Nam và Campuchia nói chung, tỉnh Bình Dương và tỉnh Kratie nói riêng. Nhân dịp Tết Nguyên đán Kỷ Hợi 2019, ông Hua Sy Dem thay mặt chính quyền tỉnh Kratie chúc Đảng bộ, chính quyền, nhân dân và lực lượng vũ trang tỉnh Bình Dương năm mới an khang thịnh vượng.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/tiepkratie1-key-28012019172713.jpg" alt="Lãnh đạo tỉnh tiếp Đoàn đại biểu tỉnh Kratie (Campuchia) đến thăm và chúc Tết" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh Bình Dương tiếp và làm việc với ông Hua Sy Dem - Phó Tỉnh trưởng tỉnh Kratie</span><br></p><p style="text-align:justify;">Cảm ơn tình cảm tốt đẹp mà chính quyền tỉnh Kratie dành cho Bình Dương, ông Đặng Minh Hưng cho biết, năm 2018, Bình Dương đã đạt được nhiều kết quả nổi bật trong phát triển kinh tế - xã hội. Thời gian qua, mối quan hệ giữa Bình Dương và Kratie ngày càng trở nên mật thiết hơn; đặc biệt trong năm 2018, một số huyện, thị xã, thành phố của Bình Dương đã ký kết hợp tác với một số địa phương của Kratie trong lĩnh vực quân sự. Phó Chủ tịch UBND tỉnh bày tỏ ấn tượng với sự phát triển của tỉnh Kratie sau 40 năm và chúc tỉnh tiếp tục đạt được những thành tựu mới trong phát triển kinh tế - xã hội. Ông tin tưởng mối quan hệ hữu nghị giữa Việt Nam và Campuchia, tỉnh Bình Dương và tỉnh Kratie sẽ ngày càng phát triển.</p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(54, 'Lãnh đạo tỉnh tiếp Đoàn đại biểu tỉnh Kandal &#40;Campuchia&#41; đến chúc Tết', 'TTĐT - ​Chiều 25-01, tại Trung tâm Hành chính tỉnh Bình Dương, ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh đã chủ trì tiếp Đoàn đại biểu tỉnh Kandal, Vương quốc Campuchia do ông Kung Sô Phan - Phó Tỉnh trưởng tỉnh Kandal làm Trưởng đoàn đến thăm, chúc Tết tỉnh Bình Dương.​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass128EA4682ADF4D1C895A3EBCD5E3121F"><p style="text-align:justify;">Tại buổi tiếp, ông Kung Sô Phan bày tỏ niềm vinh dự được sang thăm, chúc Tết cán bộ, chiến sĩ và nhân dân tỉnh Bình Dương. Ông cho biết, Bình Dương và Kandal đã có nhiều hoạt động hợp tác trên các lĩnh vực, trong đó nổi bật là sự giúp đỡ về kỹ thuật, phương tiện của Bộ Chỉ huy Quân sự tỉnh Bình Dương cho Tiểu khu tỉnh Kandal. Nhân dịp Tết Nguyên đán Kỷ Hợi 2019, ông chúc cán bộ, chiến sĩ và nhân dân tỉnh Bình Dương một năm mới mạnh khỏe, hạnh phúc, thắng lợi, chúc tình hữu nghị Việt Nam - Campuchia đời đời bền vững.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/kandal1-key-26012019092653.jpg" alt="Lãnh đạo tỉnh tiếp Đoàn đại biểu tỉnh Kandal (Campuchia) đến chúc Tết" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Đặng Minh Hưng (bìa phải) - Phó Chủ tịch UBND tỉnh tiếp và làm việc với ông Kung Sô Phan, Phó Tỉnh trưởng tỉnh Kandal ​</span><br></p><p style="text-align:justify;">Thay mặt lãnh đạo tỉnh, Phó Chủ tịch UBND tỉnh Đặng Minh Hưng cảm ơn Đoàn đại biểu tỉnh Kandal đã đến thăm, chúc Tết tỉnh Bình Dương và cảm ơn lãnh đạo tỉnh Kandal đã tạo điều kiện để một số doanh nghiệp của Bình Dương hoạt động thuận lợi tại Campuchia. Đồng thời bày tỏ mong muốn thời gian tới sẽ có nhiều hoạt động giao lưu hơn nữa nhằm thắt chặt tình hữu nghị giữa nhân dân hai tỉnh nói riêng và hai nước nói chung. Nhân dịp này, ông cũng chúc sức khỏe ngài Kung Sô Phan - Phó Tỉnh trưởng và các thành viên trong đoàn, chúc tỉnh Kandal ngày càng phát triển.</p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(55, 'Phó Chủ tịch UBND tỉnh Đặng Minh Hưng tiếp Tân Tổng Lãnh sự nước Cộng hoà nhân dân Trung Hoa', 'TTĐT - ​Sáng 24-01, tại Trung tâm Hành chính tỉnh Bình Dương, ông Đặng Minh Hưng – Phó Chủ tịch UBND tỉnh đã tiếp ngài Ngô Tuấn – Tân Tổng Lãnh sự nước Cộng hòa nhân dân Trung Hoa tại thành phố Hồ Chí Minh.', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClassD312E2E9F0474DF29C357590F9C53A92"><p style="text-align:justify;">​<span style="background-color:transparent;">Tại buổi tiếp, Phó Chủ tịch UBND tỉnh Đặng Minh Hưng cảm ơn ngài Ngô Tuấn đến thăm Bình Dương trong những ngày đầu năm mới 2019. Phó Chủ tịch đánh giá cao hoạt động của các doanh nghiệp Trung Quốc, đóng góp vào phát triển kinh tế - xã hội của Bình Dương, trong đó có nhiều doanh nghiệp đã mở rộng quy mô và tăng dần số vốn đầu tư. Bên cạnh việc sản xuất kinh doanh, các doanh nghiệp Trung Quốc cũng tích cực thực hiện công tác an sinh xã hội, hỗ trợ các trẻ em nghèo và gia đình khó khăn tại địa phương. Năm 2018, tỉnh Bình Dương đã ký Biên bản ghi nhớ hợp tác với tỉnh Quảng Châu (Trung Quốc) và cử nhiều đoàn công tác giao lưu văn hoá, học tập kinh nghiệm, giúp cho mối quan hệ giữa hai địa phương ngày càng gắn kết. Trong thời gian tới, Bình Dương sẽ tiếp tục quan tâm, hỗ trợ cho các doanh nghiệp nước ngoài nói chung và doanh nghiệp Trung Quốc nói riêng đầu tư hiệu quả.</span></p><p style="text-align:center;"><span style="background-color:transparent;"><img src="/uploads/news/2019_03/trungquoc-2.jpg" alt="TrungQuoc 2.jpg" style="margin:5px;" /></span> </p><p style="text-align:center;"><span style="background-color:transparent;font-size:12px;"><span style="color:#0000ff;"><span style="line-height:115%;font-family:arial;">Ông Đặng Minh Hưng – Phó Chủ tịch UBND tỉnh tiếp ngài Ngô Tuấn – Tân Tổng Lãnh sự nước Cộng hòa nhân dân Trung Hoa tại thành phố Hồ Chí Minh</span><span style="font-family:arial;">​</span><br></span></span></p><p style="text-align:justify;">Ngài Ngô Tuấn chúc mừng cho những thành tựu nổi bật của Bình Dương trong năm qua, đặc biệt là về kim ngạch xuất, nhập khẩu và thu hút vốn đầu tư nước ngoài. Ngài khẳng định, đến nay, tình hữu nghị và mối quan hệ hợp tác giữa hai nước Việt Nam - Trung Quốc đã vươn lên tầm cao mới và đạt nhiều thành quả trên nhiều lĩnh vực. Ngài cảm ơn sự quan tâm của chính quyền Bình Dương đã hỗ trợ các doanh nghiệp Trung Quốc hoạt động hiệu quả. Thay mặt Tổng Lãnh sự quán Trung Quốc tại thành phố Hồ Chí Minh, Ngài chúc sức khoẻ và thành công đến lãnh đạo tỉnh Bình Dương và chúc cho Bình Dương sẽ đạt nhiều thắng lợi mới trong năm 2019.</p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(56, 'Bí thư Tỉnh ủy Trần Văn Nam tiếp Tân Đại sứ Italia', 'TTĐT - ​Chiều 21-01, tại Trung tâm Hành chính tỉnh Bình Dương, ông Trần Văn Nam - Ủy viên Trung ương Đảng, Bí thư Tỉnh ủy, Trưởng Đoàn Đại biểu Quốc hội tỉnh đã tiếp Ngài Antonio Alssandro – Tân Đại sứ Italia đến chào xã giao nhân dịp nhận nhiệm vụ mới tại Việt Nam. ', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClassE2E0BE01AC4549BFB0C864B9E41DC1D0"><p style="text-align:justify;">​<span style="background-color:transparent;">​Tại buổi tiếp, Bí thư Tỉnh ủy Trần Văn Nam đã giới thiệu những nét nổi bật về kinh tế - xã hội của tỉnh Bình Dương, nhất là lĩnh vực thu hút đầu tư nước ngoài. Bí thư Tỉnh ủy đánh giá cao hoạt động của các doanh nghiệp nước ngoài đang đầu tư tại Bình Dương đã góp phần vào sự phát triển năng động của tỉnh, trong đó có các doanh nghiệp đến từ Italia. Tính đến nay, toàn tỉnh có 8 doanh nghiệp Italia đến đầu tư, với tổng số vốn khoảng 63 triệu đô la Mỹ. Chính quyền Bình Dương cam kết sẽ tạo điều kiện tốt nhất để các doanh nghiệp nước ngoài nói chung và doanh nghiệp Italia nói riêng mở rộng sản xuất kinh doanh và hoạt động có hiệu quả.</span></p><p style="text-align:center;"><span style="background-color:transparent;"><img src="/uploads/news/2019_03/daisuitalia-2.jpg" alt="DaisuItalia 2.jpg" style="margin:5px;" />​<br></span></p><p style="text-align:center;"><span style="background-color:transparent;"><span style="color:#0000ff;">Bí thư Tỉnh ủy Trần Văn Nam tặng quà lưu niệm cho các đại biểu​</span><br></span></p><p style="text-align:justify;">Bày tỏ vui mừng khi lần đầu tiên đến thăm Bình Dương, Ngài Antonio Alssandro cảm ơn lãnh đạo tỉnh Bình Dương đã tiếp đón ân cần. Ngài đánh giá cao tiềm năng phát triển của Bình Dương, đồng thời sẽ giới thiệu thêm nhiều doanh nghiệp Italia đến Bình Dương đầu tư, mở rộng sản xuất kinh doanh, nhất là trong lĩnh vực công nghệ cao.​​</p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(57, 'Bình Dương họp mặt Lãnh sự đoàn và các cơ quan nước ngoài', 'TTĐT - Tối 21- 01,  tại TP.Thủ Dầu Một, Tỉnh ủy, HĐND, UBND, Ủy ban MTTQ Việt Nam tỉnh tổ chức  Họp mặt Lãnh sự đoàn và các cơ quan nước ngoài.', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass0DC0488ADE1546A5AF50BDCB7EFFDFAD"><p style="text-align:justify;"><span lang="VI">Tham </span>dự<span lang="VI"> buổi họp mặt có ông Trần Văn Nam</span> -<span lang="VI"> Ủy viên Trung ương Đảng, Bí thư Tỉnh ủy, Trưởng Đoàn Đại biểu Quốc hội tỉnh; ông Trần Thanh Liêm</span> -<span lang="VI"> Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh; lãnh đạo các cơ quan ngoại giao Trung ương, đại diện Tổng </span>L<span lang="VI">ãnh sự quán, cơ quan Thương vụ và Hiệp hội doanh nghiệp các nước tại TP.</span>Hồ Chí Minh<span lang="VI">; các sở, ban, ngành, huyện, thị xã, thành phố cùng đại diện các doanh nghiệp trong và ngoài nước đang hoạt động tại tỉnh Bình Dương. <br></span></p><p style="text-align:center;"><img src="/uploads/news/2019_03/img-6902ok-key-22012019140713.jpg" alt="Bình Dương họp mặt Lãnh sự đoàn và các cơ quan nước ngoài" style="margin:5px;" /> </p><p style="text-align:center;"><img src="/uploads/news/2019_03/img-6935ok-key-22012019140736.jpg" alt="Bình Dương họp mặt Lãnh sự đoàn và các cơ quan nước ngoài - Ảnh minh hoạ 2" style="margin:5px;" /> </p>  <p style="text-align:center;"><span style="color:#0000ff;">Lãnh đạo tỉnh Bình Dương trao đổi với đại diện Lãnh sự đoàn các nước</span></p><p style="text-align:justify;"><span lang="VI"></span><span lang="VI"></span></p><p style="text-align:justify;"><span lang="VI">Tại buổi họp mặt, </span>các đại biểu đã được nghe <span lang="VI">thông báo về tình hình phát triển kinh tế-xã hội của tỉnh </span>Bình Dương <span lang="VI">năm 2018, định hướng phát triển và những </span>giải pháp<span lang="VI"> của tỉnh trong việc tăng cường các hoạt động đối ngoại</span>,<span lang="VI"> đẩy mạnh xúc tiến đầu tư. </span>Tỉnh Bình Dương<span lang="VI"> tiếp tục </span>xác định, <span lang="VI">tranh thủ sự hợp tác, hỗ trợ của các cơ quan đại diện ngoại giao, các tổ chức kinh tế và thương mại quốc tế, các hiệp hội doanh nghiệp nước ngoài </span>có vai trò quan trọng <span lang="VI">trong mời gọi</span>, <span lang="VI">thu hút đầu tư trực tiếp nước ngoài</span>.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/img-6982ok-key-22012019140927-key-22012019140927.jpg" alt="Bình Dương họp mặt Lãnh sự đoàn và các cơ quan nước ngoài - Ảnh minh hoạ 3" style="margin:5px;" /> </p>  <p style="text-align:center;"><span style="color:#0000ff;">Ông Trần Thanh Liêm – Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh phát biểu tại buổi họp mặt</span></p><p style="text-align:justify;"><span lang="VI"></span></p><p style="text-align:justify;"><span lang="VI">Phát biểu </span>của Chủ tịch UBND tỉnh Trần Thanh Liêm <span lang="VI">tại buổi họp mặt</span> cũng đã điểm lại những <span lang="VI">hoạt động đối ngoại trọng tâm</span> t<span lang="VI">rong năm 2018</span> của<span lang="VI"> tỉnh Bình Dương</span>. <span lang="VI">Hội nghị WTA – Bình Dương 2018 </span>v<span lang="VI">ới chủ đề “Thành phố thông minh – Động lực đổi mới sáng tạo để phát triển bền vững”</span><span lang="VI"> </span>diễn ra từ <span lang="VI">ngày 10</span> đến <span lang="VI">12</span>/<span lang="VI">10</span>/<span lang="VI">201</span>8 <span lang="VI">là hoạt động đối ngoại quan trọng nhất của tỉnh trong năm 2018. Diễn đàn Hợp tác kinh tế Châu Á </span>(<span lang="VI">Horasis</span><span lang="VI"> </span>Asia<span lang="VI"> 2018</span>)<span lang="VI"> là một hoạt động kinh tế đối ngoại có ý nghĩa thiết thực, là cơ hội thuận lợi cho tỉnh Bình Dương được trao đổi, chia sẻ và học tập kinh nghiệm cũng như giới thiệu về tiềm năng, cơ hội thu hút đầu tư trực tiếp nước ngoài</span>. <span lang="VI">Kết quả thu hút </span>đầu tư trực tiềp nước ngoài năm 2018 <span lang="VI">được 2,2 tỷ đô la Mỹ </span>với <span lang="VI">224 dự án đầu tư mới và 132 dự án bổ sung tăng vốn đầu tư. Lũy kế đến nay, có 3.523 dự án với tổng vốn 32,3 tỷ đô la Mỹ từ 64 quốc gia và vùng lãnh thổ trên thế giới</span> đã đầu tư vào tỉnh<span lang="VI">.</span><span lang="VI"> </span>Với kết quả đó, <span lang="VI">Bình Dương hiện đứng thứ </span>ba<span lang="VI"> cả nước (sau Hà Nội và TP.</span>Hồ Chí Minh<span lang="VI">)</span> về thu hút đầu tư trực tiềp nước ngoài<span lang="VI">.<br></span></p><p style="text-align:center;"><img src="/uploads/news/2019_03/img-7018ok-key-22012019141000.jpg" alt="Bình Dương họp mặt Lãnh sự đoàn và các cơ quan nước ngoài - Ảnh minh hoạ 4" style="margin:5px;" /> </p>  <p style="text-align:center;"><span style="color:#0000ff;">Lãnh đạo tỉnh Bình Dương chụp hình lưu niệm với các đại biểu</span></p><p style="text-align:justify;"><span lang="VI"></span></p><p style="text-align:justify;"><span lang="VI">Chủ tịch UBND tỉnh Bình Dương khẳng định: Một trong những yếu tố quan trọng giúp cho tỉnh Bình Dương đẩy mạnh các hoạt động đối ngoại và đạt được những thành quả nêu trên là nhờ vào sự hợp tác chặt chẽ, sự hỗ trợ nhiệt tình và đầy trách nhiệm của các lãnh sự quán, cơ quan thương vụ và Hiệp hội doanh nghiệp nước ngoài... trong việc giới thiệu, cung cấp thông tin cho các nhà đầu tư quốc tế đến đầu tư, sản xuất kinh doanh tại Bình Dương. Qua đó củng cố thêm mối quan hệ hữu nghị, tăng cường hợp tác đầu tư và phát triển giữa Bình Dương và các quốc gia, vùng lãnh thổ trên thế giới. “Thay mặt Tỉnh ủy, HĐND, UBND và Ủy ban MTTQ Việt Nam tỉnh Bình Dương, tôi xin gửi đến quý vị lời cám ơn chân thành nhất; đồng thời mong muốn sẽ tiếp tục đón nhận được sự quan tâm hỗ trợ và đồng hành quý báu của tất cả quý vị trong công cuộc xây dựng tỉnh Bình Dương ngày càng phát triển mạnh mẽ, tốt đẹp hơn trong thời gian tới”, Chủ tịch UBND tỉnh nói.</span></p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(58, 'Đại hội Hội Hữu nghị Việt - Nhật tỉnh Bình Dương lần thứ I, nhiệm kỳ 2018-2023', 'TTDDT - Sáng 06-01, tại TP.Thủ Dầu Một đã diễn ra Đại hội Hội Hữu nghị Việt - Nhật tỉnh Bình Dương lần thứ I, nhiệm kỳ 2018-2023.', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass4B3C2CCB95B34C74AFC69F4BE301927D"><p style="text-align:justify;"><span lang="VI">Đến dự có ông Nguyễn Phú Bình - Phó Chủ tịch Trung ương Hội Hữu nghị Việt - Nhật, ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh; đại diện các sở, ban, ngành tỉnh và hơn 100 hội viên.</span></p><p style="text-align:justify;"><span lang="VI">Đại hội đã công bố Quyết định thành lập Hội Hữu nghị Việt - Nhật tỉnh Bình Dương;</span> thông qua <span lang="VI">dự thảo Điều lệ</span>,<span lang="VI"> chương trình hoạt động của Hội; đồng thời thảo luận các nội dung Đại hội. <br></span></p><p style="text-align:center;"><img src="/uploads/news/2019_03/img-0199ok-key-06012019135246.jpg" alt="Đại hội Hội Hữu nghị Việt - Nhật tỉnh Bình Dương lần thứ I, nhiệm kỳ 2018-2023" style="margin:5px;" /> </p><p style="text-align:center;"><span style="color:#0000ff;">Đoàn chủ tịch chủ trì Đại hội</span><br></p><p style="text-align:justify;"><span lang="VI"></span></p><p style="text-align:justify;"><span lang="VI">Ngày 29/11/2018, UBND tỉnh đã ban hành Quyết định số 3369/QĐ-UBND cho phép thành lập Hội Hữu nghị Việt - Nhật tỉnh Bình Dương. Theo đó, Hội là tổ chức xã hội với mục đích góp phần tăng cường sự hiểu biết lẫn nhau giữa nhân dân Việt Nam nói chung và nhân dân tỉnh Bình Dương nói riêng với nhân dân Nhật Bản; góp phần củng cố và phát triển mối quan hệ hữu nghị, hợp tác, giao lưu văn hoá, giáo dục - đào tạo, khoa học công nghệ, kinh tế, thương mại, thể thao, du lịch, công tác xã hội, hoạt động nhân đạo, từ thiện... giữa tỉnh Bình Dương và các địa phương của Nhật Bản, vì lợi ích của nhân dân hai nước, vì hoà bình, hợp tác và phát triển.<br></span></p><p style="text-align:center;"><img src="/uploads/news/2019_03/img-0225ok-key-06012019135326.jpg" alt="Đại hội Hội Hữu nghị Việt - Nhật tỉnh Bình Dương lần thứ I, nhiệm kỳ 2018-2023 - Ảnh minh hoạ 2" style="margin:5px;" /> </p>  <p style="text-align:center;"><span lang="VI" style="color:#0000ff;">Ra mắt Ban Chấp hành Hội nhiệm kỳ 2018-2023</span></p><p style="text-align:justify;"><span lang="VI"></span></p><p style="text-align:justify;"><span lang="VI">Qua một thời gian tổ chức vận động thành lập Hội, đến nay, Hội đã có 100 hội viên chính thức và 10 hội viên danh dự. </span></p><p style="text-align:justify;"><span lang="VI">Đại hội đã nhất trí</span> cao<span lang="VI"> chương trình hoạt động nhiệm kỳ 2018-2023 của Hội. Cụ thể, tích cực vận động hội viên tham gia công tác Hội, phát triển hội viên; xây dựng mối quan hệ hoà bình, đoàn kết, hữu nghị giữa nhân dân Việt Nam và Nhật Bản; tuyên truyền, quảng bá hình ảnh Bình Dương với bạn bè và nhân dân các nước trên thế giới nói chung và nhân dân Nhật Bản nói riêng. Tổ chức các hoạt động giao lưu hữu nghị trên các lĩnh vực văn hoá, kinh tế, giáo dục...</span></p><p style="text-align:justify;"><span lang="VI">Đại hội đã bầu Ban Chấp hành Hội gồm 15 người, Ban Thường vụ gồm 05 người. Bà Huỳnh Thị Tuyết Hạnh được bầu giữ chức Chủ tịch Hội nhiệm kỳ 2018-2023, Phó Chủ tịch Hội gồm bà Nguyễn Trường Nhật Phượng, ông Nguyễn Tấn Đạt, ông Nguyễn Thanh Bình.<br></span></p><p style="text-align:center;"><img src="/uploads/news/2019_03/img-0226ok-key-06012019135417.jpg" alt="Đại hội Hội Hữu nghị Việt - Nhật tỉnh Bình Dương lần thứ I, nhiệm kỳ 2018-2023 - Ảnh minh hoạ 3" style="margin:5px;" /> </p>  <p style="text-align:center;"><span lang="VI" style="color:#0000ff;">Ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh phát biểu tại Đại hội</span></p><p style="text-align:justify;"><span lang="VI"></span></p><p style="text-align:justify;"><span lang="VI">Phát biểu tại Đại hội, ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh Bình Dương đã nhấn mạnh mối quan hệ hữu nghị hợp tác giữa hai nước Việt Nam và Nhật Bản nói chung, tỉnh Bình Dương và các địa phương của Nhật Bản nói riêng. Đồng thời đề nghị, sau Đại hội, Hội nhanh chóng triển khai đi vào hoạt động theo Quy chế, Điều lệ của Đại hội đã đề ra, góp phần thắt chặt hơn nữa tình hữu nghị giữa hai nước Việt Nam - Nhật Bản và các địa phương của hai nước, thu hút đầu tư nước ngoài tại Bình Dương. </span></p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(59, 'Phó Chủ tịch Thường trực UBND tỉnh Mai Hùng Dũng tiếp Tổng Lãnh sự Cộng hòa Dân chủ nhân dân Lào', 'TTĐT - ​Sáng 28-12, tại Trung tâm Hành chính tỉnh Bình Dương, ông Mai Hùng Dũng - Phó Chủ tịch Thường trực UBND tỉnh đã tiếp Ngài Somxay Sanam O​une - Tổng Lãnh sự Cộng hòa Dân chủ nhân dân Lào tại TP.Hồ Chí Minh đến chào từ biệt nhân kết thúc nhiệm kỳ công tác.​', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClassB9535E9E4A5E43CEB4B949A050077F29"><p style="text-align:justify;">Tại buổi tiếp, Ngài Somxay Sanam Oune cảm ơn lãnh đạo tỉnh Bình Dương đã hợp tác, hỗ trợ, giúp Tổng Lãnh sự Cộng hòa Dân chủ nhân dân Lào làm tốt vai trò cầu nối thắt chặt hơn nữa quan hệ hữu nghị truyền thống giữa hai Đảng, hai Nhà nước nói chung và giữa các địa phương của Lào với tỉnh Bình Dương nói riêng. Hai bên đã tổ chức các đoàn thăm, trao đổi, học tập kinh nghiệm phát triển kinh tế - xã hội. Đặc biệt Bình Dương đã tích cực hỗ trợ đào tạo sinh viên Lào tại các trường đại học của tỉnh. Nhân dịp năm mới 2019, Ngài Somxay Sanam Oune chúc lãnh đạo tỉnh Bình Dương, các sở, ban, ngành mạnh khỏe, hạnh phúc, thành công và chúc tình cảm thân thiết, sâu sắc giữa Bình Dương với các địa phương của Lào ngày càng phát triển.</p><p style="text-align:justify;">Phó Chủ tịch Thường trực UBND tỉnh Mai Hùng Dũng chúc mừng Ngài Tổng Lãnh sự hoàn thành nhiệm kỳ công tác tại Việt Nam. Đồng thời nhấn mạnh, trên cơ sở mối quan hệ hữu nghị tốt đẹp giữa hai nước Việt Nam - Lào, thời gian qua, tỉnh Bình Dương và một số địa phương của Lào đã triển khai nhiều hoạt động giao lưu về kinh tế, văn hóa - xã hội, đảm bảo an ninh - quốc phòng... Bên cạnh đó, Lào đã tạo điều kiện cho Công ty Cổ phần Cao su Dầu Tiếng Việt - Lào sản xuất kinh doanh thuận lợi tại tỉnh Champasak. Phó Chủ tịch Thường trực UBND tỉnh mong rằng trong năm 2019, hai bên sẽ có nhiều chương trình thiết thực hơn nữa để hỗ trợ lẫn nhau.</p><p style="text-align:center;"><img src="/uploads/news/2019_03/tieplao2-key-28122018160945.jpg" alt="Phó Chủ tịch Thường trực UBND tỉnh Mai Hùng Dũng tiếp Tổng Lãnh sự Cộng hòa Dân chủ nhân dân Lào" style="margin:5px;" /><br></p><p style="text-align:center;"><span style="color:#0000ff;">Ông Mai Hùng Dũng (thứ 3 từ phải qua) - Phó Chủ tịch Thường trực UBND tỉnh tặng quà lưu niệm cho Ngài Somxay Sanam Oune (thứ 3 từ trái qua) - Tổng Lãnh sự Cộng hòa Dân chủ nhân dân Lào tại TP.Hồ Chí Minh</span><br></p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1),
(60, 'Chủ tịch UBND tỉnh Trần Thanh Liêm tiếp Đại sứ đặc mệnh toàn quyền Nhật Bản', 'TTĐT - ​Chiều 13-12, tại Trung tâm Hành chính tỉnh Bình Dương, ông Trần Thanh Liêm – Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh tiếp Ngài Kunio Umeda – Đại sứ đặc mệnh toàn quyền Nhật Bản tại Việt Nam và Phu nhân đến chào xã giao.', '                      <div class="de-newscont">                          <span id="ctl00_ctl33_g_23ce25f7_72cf_4c4a_b013_922bcdc41ed2_ctl00_Label_BodyTinTucMoRong"><div class="ExternalClass0F9DC17972A14656851C92000532A4DF"><p>​<span style="text-align:justify;background-color:transparent;">Tại buổi tiếp, Chủ tịch UBND tỉnh Trần Thanh Liêm đã khái quát tình hình kinh tế -xã hội và thu hút đầu tư nước ngoài tại Bình Dương. Tính đến nay, Bình Dương có 294 dự án với tổng vốn đầu tư trên 5,1 tỷ đô la Mỹ từ các doanh nghiệp Nhật Bản, tập trung vào các lĩnh vực như: Cơ sở hạ tầng, xây dựng đô thị, thương mại dịch vụ, sản xuất linh kiện điện tử và các mặt hàng có giá trị gia tăng cao, đóng góp tích cực vào sự phát triển của tỉnh. Ông cho biết, năm 2018 là cột mốc đánh dấu 45 năm thiết lập quan hệ ngoại giao giữa Việt Nam và Nhật Bản. Bên cạnh việc tham gia tổ chức nhiều sự kiện, Bình Dương đã tăng cường giao lưu với các địa phương tại Nhật Bản và thực hiện xúc tiến đầu tư với các doanh nghiệp tại đây. Chủ tịch hy vọng mối quan hệ hợp tác giữa 2 quốc gia ngày càng bền chặt, đồng thời mong muốn Ngài Đại sứ sẽ tiếp tục giới thiệu các doanh nghiệp Nhật Bản đến tìm hiểu môi trường đầu tư tại Bình Dương.</span></p><p style="text-align:center;"><span style="background-color:transparent;"><img src="/uploads/news/2019_03/daisunhatban-1.jpg" alt="DaisuNhatBan 1.jpg" style="margin:5px;" /><br></span></p><div style="text-align:center;"></div><p style="text-align:center;"><span style="background-color:transparent;font-size:12px;"><span style="line-height:115%;font-family:arial;color:#0000ff;"><span>Chủ tịch UBND tỉnh Trần Thanh Liêm tiếp Ngài Kunio</span> </span><br></span></p><p style="text-align:justify;">Đáp lời Chủ tịch UBND tỉnh Trần Thanh Liêm, Ngài Kunio Umeda cảm ơn sự quan tâm từ chính quyền tỉnh Bình Dương dành cho các doanh nghiệp Nhật Bản. Bên cạnh việc xây dựng cơ sở hạ tầng đồng bộ, chính quyền tỉnh luôn lắng nghe ý kiến và đồng hành cùng doanh nghiệp. Ngài Đại sứ cho biết, khả năng nói thông thạo tiếng Nhật của lực lượng lao động là một trong những yếu tố quan trọng quyết định việc đầu tư sản xuất của các doanh nghiệp Nhật Bản, do đó đề nghị chính quyền tỉnh cần quan tâm đào tạo tiếng Nhật để thúc đẩy đầu tư. Song song đó, Ngài sẽ phối hợp cùng Chính phủ Nhật Bản và Cơ quan hợp tác quốc tế Nhật Bản (JICA) trong việc hỗ trợ tỉnh thực hiện dự án cải tạo hệ thống giao thông công cộng góp phần kết nối giao thông và tạo điều kiện phát triển thuận lợi cho các doanh nghiệp tại Bình Dương.</p></div></span>                      </div>                  ', '', '', '', 1, NULL, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_news_logs`
--

CREATE TABLE IF NOT EXISTS `tms_vi_news_logs` (
  `id` mediumint(8) unsigned NOT NULL,
  `sid` mediumint(8) NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_news_rows`
--

CREATE TABLE IF NOT EXISTS `tms_vi_news_rows` (
  `id` int(11) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  `edittime` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `weight` int(11) unsigned NOT NULL DEFAULT '0',
  `publtime` int(11) unsigned NOT NULL DEFAULT '0',
  `exptime` int(11) unsigned NOT NULL DEFAULT '0',
  `archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_link` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0',
  `instant_active` tinyint(1) NOT NULL DEFAULT '0',
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_news_rows`
--

INSERT INTO `tms_vi_news_rows` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(1, 1, '1', 0, 1, '', 0, 1552645084, 1615343704, 1, 0, 1552645080, 0, 2, 'Kế hoạch thực hiện Tháng hành động vì người cao tuổi Việt Nam trên địa bàn tỉnh Bình Dương năm 2019', 'ke-hoach-thuc-hien-thang-hanh-dong-vi-nguoi-cao-tuoi-viet-nam-tren-dia-ban-tinh-binh-duong-nam-2019', 'TTĐT - ​UBND tỉnh vừa ban hành Kế hoạch thực hiện Tháng hành động vì người cao tuổi Việt Nam trên địa bàn tỉnh Bình Dương năm 2019 (gọi tắt là Kế hoạch).', '2019_03/nhat-nhi-key-24092017152850-key-28062018225343-key-14032019173325.jpg', '', 1, 1, '6', 1, 0, 92, 2, 5, 1, 0, '', 0),
(2, 1, '1', 0, 1, '', 0, 1552645115, 1552645115, 1, 0, 1552645115, 0, 1, 'Đăng ký nghĩa vụ quân sự và phương tiện kỹ thuật thuộc diện huy động bổ sung cho lực lượng thường trực của Quân đội năm 2019', 'dang-ky-nghia-vu-quan-su-va-phuong-tien-ky-thuat-thuoc-dien-huy-dong-bo-sung-cho-luc-luong-thuong-truc-cua-quan-doi-nam-2019', 'TTĐT - ​UBND tỉnh vừa ban hành Quyết định về việc  đăng ký  n ghĩa vụ quân sự và  p hương tiện kỹ thuật   thuộc diện huy động bổ sung cho lực lượng thường trực  của Quân đội năm 2019 .', '2019_03/t4t-key-14032019173933.jpg', '', 2, 1, '4', 1, 0, 68, 0, 5, 1, 0, '', 0),
(3, 1, '1', 0, 1, '', 0, 1552645091, 1629628508, 1, 0, 1552645080, 0, 2, 'Trao Giải thưởng Môi trường tỉnh Bình Dương năm 2019', 'trao-giai-thuong-moi-truong-tinh-binh-duong-nam-2019', 'TTĐT - ​UBND tỉnh vừa ban hành Kế hoạch tổ chức trao Giải thưởng Môi trường tỉnh Bình Dương năm 2019.', '2019_03/chutich2-key-15072017074617-key-10082017085236.jpg', '', 1, 1, '4', 1, 0, 57, 0, 0, 0, 0, '', 0),
(4, 1, '1', 0, 1, '', 0, 1552645115, 1629628350, 1, 0, 1552645080, 0, 2, 'Phối hợp xây dựng Hệ thống thông tin phục vụ họp và xử lý công việc của Chính phủ', 'phoi-hop-xay-dung-he-thong-thong-tin-phuc-vu-hop-va-xu-ly-cong-viec-cua-chinh-phu', 'TTĐT - ​UBND tỉnh vừa ban hành văn bản về việc phối hợp xây dựng Hệ thống thông tin phục vụ họp và xử lý công việc của Chính phủ.', '2019_03/baochi2-key-22022019162838.jpg', '', 1, 1, '4', 1, 0, 47, 0, 0, 0, 0, '', 0),
(5, 1, '1', 0, 1, '', 0, 1552645113, 1629628487, 1, 0, 1552645080, 0, 2, 'Kế hoạch hoạt động và kinh phí năm 2019 của Dự án &quot;Quỹ toàn cầu Phòng, chống HIV&#x002F;AIDS giai đoạn 2018-2020&quot;', 'ke-hoach-hoat-dong-va-kinh-phi-nam-2019-cua-du-an-quy-toan-cau-phong-chong-hiv-aids-giai-doan-2018-2020', 'TTĐT - ​UBND tỉnh vừa ban hành Kế hoạch hoạt động và kinh phí năm 2019 của Dự án &quot;Quỹ toàn cầu Phòng, chống HIV/AIDS giai đoạn 2018 – 2020&quot; do Quỹ toàn cầu Phòng, chống AIDS, Lao và Sốt rét tài trợ (gọi tắt là Kế hoạch).', '2019_03/baochi2-key-22022019162838.jpg', '', 1, 1, '4', 1, 0, 56, 0, 0, 0, 0, '', 0),
(6, 1, '1', 0, 1, '', 0, 1552645099, 1629628527, 1, 0, 1552645080, 0, 2, 'Kế hoạch hoạt động kiểm soát thủ tục hành chính năm 2019 trên địa bàn tỉnh Bình Dương', 'ke-hoach-hoat-dong-kiem-soat-thu-tuc-hanh-chinh-nam-2019-tren-dia-ban-tinh-binh-duong', 'TTĐT - ​UBND tỉnh vừa ban hành Kế hoạch hoạt động kiểm soát thủ tục hành chính (TTHC) năm 2019 trên địa bàn tỉnh Bình Dương (gọi tắt là Kế hoạch).', '2019_03/bcd138va389-2.jpg', '', 1, 1, '4', 1, 0, 48, 0, 0, 0, 0, '', 0),
(7, 1, '1', 0, 1, '', 0, 1552645135, 1629628325, 1, 0, 1552645080, 0, 2, 'Hướng dẫn trình tự thực hiện xã hội hóa theo Nghị định 69&#x002F;2008&#x002F;NĐ-CP, 59&#x002F;2014&#x002F;NĐ-CP trên địa bàn tỉnh Bình Dương', 'huong-dan-trinh-tu-thuc-hien-xa-hoi-hoa-theo-nghi-dinh-69-2008-nd-cp-59-2014-nd-cp-tren-dia-ban-tinh-binh-duong', 'TTĐT - ​UBND tỉnh vừa ban hành văn bản về việc hướng dẫn trình tự thực hiện xã hội hóa theo Nghị định 69/2008/NĐ-CP, 59/2014/NĐ-CP trên địa bàn tỉnh Bình Dương.', '2021_08/mhd.jpg', '', 1, 1, '4', 1, 0, 40, 0, 0, 0, 0, '', 0),
(8, 1, '1', 0, 1, '', 0, 1552645113, 1629628369, 1, 0, 1552645080, 0, 2, 'Chăm sóc vì sự phát triển toàn diện trẻ em trong những năm đầu đời tại gia đình và cộng đồng tỉnh Bình Dương giai đoạn 2019 - 2025', 'cham-soc-vi-su-phat-trien-toan-dien-tre-em-trong-nhung-nam-dau-doi-tai-gia-dinh-va-cong-dong-tinh-binh-duong-giai-doan-2019-2025', 'TTĐT - ​UBND tỉnh vừa ban hành Kế hoạch thực hiện Đề án chăm sóc vì sự phát triển toàn diện trẻ em trong những năm đầu đời tại gia đình và cộng đồng tỉnh Bình Dương giai đoạn 2019 – 2025 (gọi tắt Kế hoạch).', '2019_03/49140256_348682122629755_6867617487572172800_n.jpg', '', 1, 1, '4', 1, 0, 53, 0, 0, 0, 0, '', 0),
(9, 1, '1', 0, 1, '', 0, 1552645088, 1552645088, 1, 0, 1552645088, 0, 1, 'Chương trình làm việc tháng 3&#x002F;2019 của UBND tỉnh Bình Dương', 'chuong-trinh-lam-viec-thang-3-2019-cua-ubnd-tinh-binh-duong', 'TTĐT - ​UBND tỉnh vừa ban hành Thông báo về chương trình làm việc tháng 3&#x002F;2019 của UBND tỉnh.', '2019_03/tai-xuong-key-02072018092314-key-04122018172356-key-05032019164044.jpg', '', 2, 1, '4', 1, 0, 57, 0, 0, 0, 0, '', 0),
(10, 1, '1', 0, 1, '', 0, 1552645140, 1629628260, 1, 0, 1552645140, 0, 2, 'Thu thập dữ liệu tài nguyên và môi trường năm 2019 trên địa bàn tỉnh Bình Dương', 'thu-thap-du-lieu-tai-nguyen-va-moi-truong-nam-2019-tren-dia-ban-tinh-binh-duong', 'TTĐT - ​UBND tỉnh vừa ban hành Kế hoạch thu thập dữ liệu tài nguyên và môi trường năm 2019 trên địa bàn tỉnh Bình Dương.', '2021_08/mhd.jpg', '', 1, 1, '4', 1, 0, 62, 0, 0, 0, 0, '', 0),
(11, 2, '2', 0, 1, '', 0, 1552645388, 1629628544, 1, 0, 1552645380, 0, 2, 'Lấy ý kiến đề nghị tặng Huân chương Lao động hạng Ba', 'lay-y-kien-de-nghi-tang-huan-chuong-lao-dong-hang-ba', 'TTĐT - ​Để đảm bảo việc xét tặng Huân chương Lao động đúng quy trình, Ban Thi đua - Khen thưởng tỉnh Bình Dương (cơ quan Thường trực Hội đồng thi đua - Kh​en thưởng tỉnh) thông báo lấy ý kiến rộng rãi trong nhân dân về việc đề nghị tặng Huân chương Lao động hạng Ba. ​', '2019_03/baochi1-key-22022019162746.jpg', '', 1, 1, '4', 1, 0, 50, 0, 0, 0, 0, '', 0),
(12, 2, '2', 0, 1, '', 0, 1552645406, 1552645406, 1, 0, 1552645406, 0, 1, 'Bình Dương ra quân tuyên truyền phòng, chống ma túy và thực hiện phong trào “Toàn dân đoàn kết xây dựng đời sống văn hóa”', 'binh-duong-ra-quan-tuyen-truyen-phong-chong-ma-tuy-va-thuc-hien-phong-trao-toan-dan-doan-ket-xay-dung-doi-song-van-hoa', 'TTĐT - ​Sáng 09-3, tại Công viên phường Phú Cường, TP.Thủ Dầu Một, Cục Cảnh sát điều tra tội phạm về ma túy-Bộ Công an, Văn phòng Thường t​rực Ban chỉ đạo Trung ương phong trào &quot;Toàn dân đoàn kết xây dựng đời sống văn hóa&quot; và UBND tỉnh Bình Dương đã phối hợp tổ chức Lễ ra quân tuyên truyền phòng, chống ma túy và thực hiện phong trào &quot;Toàn dân đoàn kết xây dựng đời sống văn hóa&quot; năm 2019. ​', '2019_03/pcmatuy2-key-09032019113700.jpg', '', 2, 1, '4', 1, 0, 55, 0, 0, 0, 0, '', 0),
(13, 2, '2', 0, 1, '', 0, 1552645377, 1552645377, 1, 0, 1552645377, 0, 1, 'Ủy ban Đối ngoại của Quốc hội làm việc với tỉnh Bình Dương', 'uy-ban-doi-ngoai-cua-quoc-hoi-lam-viec-voi-tinh-binh-duong', 'TTĐT - ​Chiều 25-02, tại Trung tâm Hành chính tỉnh Bình Dương, ông Trần Thanh Liêm – Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh chủ trì tiếp và làm việc với Đoàn công tác Ủy ban Đối ngoại của Quốc hội do ông Nguyễn Mạnh Tiến – Phó Chủ nhiệm Ủy ban Đối ngoại của Quốc hội làm Trưởng đoàn giám sát việc thực hiện chính sách, pháp luật trong công tác quản lý người nước ngoài &#40;NNN&#41; tại Bình Dương.', '2019_03/giamsatnuocngoai-1-key-26022019094458.jpg', '', 2, 1, '4', 1, 0, 54, 0, 0, 0, 0, '', 0),
(14, 2, '2', 0, 1, '', 0, 1552645380, 1552645380, 1, 0, 1552645380, 0, 1, 'Ủy ban Pháp luật của Quốc hội làm việc với tỉnh Bình Dương', 'uy-ban-phap-luat-cua-quoc-hoi-lam-viec-voi-tinh-binh-duong', 'TTĐT - ​Sáng 25-02, tại Trung tâm Hành chính tỉnh Bình Dương, Đoàn công tác Ủy ban Pháp luật của Quốc hội do ông Nguyễn Khắc Định - Ủy viên Trung ương Đảng, Ủy viên Ủy ban Thường vụ Quốc hội, Chủ nhiệm Ủy ban Pháp luật của Quốc hội làm Trưởng đoàn đã khảo sát việc th​ực hiện một số quy định của Luật Tổ chức chính quyền địa phương, Luật Cán bộ, công chức và Luật Viên chức tại tỉnh Bình Dương.​', '2019_03/ubpl1-key-25022019163750.jpg', '', 2, 1, '4', 1, 0, 58, 0, 0, 0, 0, '', 0),
(15, 2, '2', 0, 1, '', 0, 1552645387, 1552645387, 1, 0, 1552645387, 0, 1, 'Ông Nguyễn Văn Lộc giữ chức Chủ tịch Ủy ban MTTQ Việt Nam tỉnh Bình Dương', 'ong-nguyen-van-loc-giu-chuc-chu-tich-uy-ban-mttq-viet-nam-tinh-binh-duong', 'TTĐT - ​Sáng 21-02, tại TP.Th​ủ Dầu Một, Ủy ban MTTQ Việt Nam tỉnh Bình Dương đã tổ chức Hội nghị lần thứ XIII, nhiệm kỳ 2014-2019. ​', '2019_03/mt3-key-21022019163150.jpg', '', 2, 1, '4', 1, 0, 50, 0, 0, 0, 0, '', 0),
(16, 2, '2', 0, 1, '', 0, 1552645365, 1552645365, 1, 0, 1552645365, 0, 1, 'Số điện thoại đường dây nóng bảo đảm trật tự an toàn giao thông dịp nghỉ Tết Nguyên đán Kỷ Hợi và mùa Lễ hội Xuân 2019', 'so-dien-thoai-duong-day-nong-bao-dam-trat-tu-an-toan-giao-thong-dip-nghi-tet-nguyen-dan-ky-hoi-va-mua-le-hoi-xuan-2019', 'TTĐT - ​Ủy ban An toàn giao thông Quốc gia thông báo số điện thoại đường dây nóng để tiếp nhận các ý kiến phản ánh của người dân về hoạt động vận tải, tình hình trật tự an toàn giao thông &#40;TTATGT&#41; xảy ra trong dịp nghỉ Tết Nguyên đán Kỷ Hợi và mùa Lễ hội Xuân 2019.', 'https://www.binhduong.gov.vn/Style Library/LacViet/CMS2013/Images/newsdefault.jpg', '', 3, 1, '4', 1, 0, 43, 0, 0, 0, 0, '', 0),
(17, 2, '2', 0, 1, '', 0, 1552645422, 1552645422, 1, 0, 1552645422, 0, 1, 'Tổng kết công tác kiểm tra, giám sát và thi hành kỷ luật Đảng năm 2018', 'tong-ket-cong-tac-kiem-tra-giam-sat-va-thi-hanh-ky-luat-dang-nam-2018', 'TTĐT - ​Sáng 29-01, tại Trung tâm Hành chính tỉnh Bình Dương, Ủy ban Kiểm tra Tỉnh ủy đã tổ chức Hội nghị tổng kết công tác kiểm tra, giám sát và thi hành kỷ l​uật Đảng năm 2018; triển khai phương hướng, nhiệm vụ năm 2019. Ông Trần Văn Nam - Ủy viên Trung ương Đảng, Bí thư Tỉnh ủy, Trưởng Đoàn Đại biểu Quốc hội tỉnh dự và chỉ đạo hội nghị.​', '2019_03/ktdang1-key-29012019154951.jpg', '', 2, 1, '4', 1, 0, 47, 0, 0, 0, 0, '', 0),
(18, 2, '2', 0, 1, '', 0, 1552645377, 1552645377, 1, 0, 1552645377, 0, 1, 'Bình Dương&#x3A; Hội nghị quân chính năm 2018', 'binh-duong-hoi-nghi-quan-chinh-nam-2018', 'TTĐT - ​Sáng 21-01, tại TP.Thủ Dầu​ Một, Bộ Chỉ huy Quân sự &#40;CHQS&#41; tỉnh đã tổ chức Hội nghị quân chính năm 2018, triển khai nhiệm vụ năm 2019. Ông Trần Thanh Liêm - Phó Bí thư Tỉnh uỷ, Chủ tịch UBND tỉnh đã đến dự. ​', '2019_03/quanchinh1-key-22012019113544.jpg', '', 2, 1, '4', 1, 0, 52, 0, 0, 0, 0, '', 0),
(19, 2, '2', 0, 1, '', 0, 1552645370, 1552645370, 1, 0, 1552645370, 0, 1, 'Tổng kết công tác nội chính, cải cách tư pháp và phòng, chống tham nhũng năm 2018', 'tong-ket-cong-tac-noi-chinh-cai-cach-tu-phap-va-phong-chong-tham-nhung-nam-2018', 'TTĐT - ​Sáng 21-01, tại Trung tâm Hành chính tỉnh Bình Dương, Ban Nội chính Tỉnh ủy đã tổ chức Hội nghị tổng kết công tác nội chính, cải cách tư pháp và phòng, chống tham nhũng năm 2018; triển khai phương hướng, nhiệm vụ năm 2019. ​', '2019_03/nc3-key-22012019101855.jpg', '', 2, 1, '4', 1, 0, 58, 0, 0, 0, 0, '', 0),
(20, 2, '2', 0, 1, '', 0, 1552645386, 1552645386, 1, 0, 1552645386, 0, 1, 'Hội nghị trực tuyến toàn quốc tổng kết công tác phòng, chống tội phạm và tệ nạn xã hội năm 2018', 'hoi-nghi-truc-tuyen-toan-quoc-tong-ket-cong-tac-phong-chong-toi-pham-va-te-nan-xa-hoi-nam-2018', 'TTĐT - ​Chiều 21-01, tại Hà Nội, Ban Chỉ đạo Chương trình Quốc gia phòng, chống tội phạm của Chính phủ &#40;Ban Chỉ đạo 138&#x002F;CP&#41; và Ban Chỉ đạo Quốc gia chống buôn lậu, gian lận thương mại và hàng giả &#40;Ban Chỉ đạo 389 Quốc gia&#41; tổ chức Hội nghị trực tuyến toàn quốc tổng kết công tác năm 2018 và triển khai nhiệm vụ năm 2019. Ông Trương Hòa Bình - Ủy viên Bộ Chính trị, Phó Thủ t​​​ướng Thường trực C​​hính phủ, Trưởng Ban Chỉ đạo 138&#x002F;CP, Trưởng Ban Chỉ đạo 389 Quốc gia chủ trì hội nghị. ', '2019_03/bcd138va389-3-key-22012019100154.jpg', '', 2, 1, '4', 1, 0, 44, 0, 0, 0, 0, '', 0),
(21, 4, '4', 0, 1, '', 0, 1552645778, 1552645778, 1, 0, 1552645778, 0, 1, 'Ngày 01&#x002F;4&#x002F;2019 sẽ thực hiện Tổng điều tra dân số và nhà ở năm 2019 trên toàn quốc', 'ngay-01-4-2019-se-thuc-hien-tong-dieu-tra-dan-so-va-nha-o-nam-2019-tren-toan-quoc', 'TTĐT -  Chiều 13-3, tại Hà Nội, ông Vương Đình Huệ - Phó Thủ tướng Chính Phủ, Trưởng Ban Chỉ đạo Tổng điều tra dân số và nhà ở Trung ương &#40;viết tắt là BCĐ Trung ương&#41; đã chủ trì  cuộc họp   báo cáo công tác chuẩn bị thu nhập thông tin Tổng điều tra dân số và nhà ở bắt đầu từ ngày 01&#x002F;4&#x002F;2019 và kéo dài trong 25 ngày.', '2019_03/tongdieutrads-2-key-14032019113003.jpg', '', 2, 1, '4', 1, 0, 52, 0, 0, 0, 0, '', 0),
(22, 4, '4', 0, 1, '', 0, 1552645746, 1552645746, 1, 0, 1552645746, 0, 1, 'Lãnh đạo tỉnh Nghệ An thăm và làm việc với Bình Dương về hoạt động thu hút đầu tư, chế biến, xuất khẩu gỗ, và các sản từ gỗ lâm sản', 'lanh-dao-tinh-nghe-an-tham-va-lam-viec-voi-binh-duong-ve-hoat-dong-thu-hut-dau-tu-che-bien-xuat-khau-go-va-cac-san-tu-go-lam-san', 'TTĐT - Chiều 08-3, tại Trung tâm Hành chính tỉnh, ông Mai Hùng Dũng – Phó Chủ tịch Thường trực UBND tỉnh Bình Dương đã tiếp Đoàn công tác của UBND tỉnh Nghệ An do ông Đinh Viết Hồng - Phó Chủ tịch UBND tỉnh đến thăm và làm việc với Bình Dương về hoạt động thu hút đầu tư, chế biến, xuất khẩu gỗ và các sản phẩm từ gỗ lâm sản. ​', '2019_03/go1-key-09032019095433.jpg', '', 2, 1, '4', 1, 0, 59, 0, 0, 0, 0, '', 0),
(23, 4, '4', 0, 1, '', 0, 1552645804, 1552645804, 1, 0, 1552645804, 0, 1, 'Nghiêm túc triển khai đồng bộ các giải pháp cấp bách khống chế bệnh Dịch tả lợn Châu Phi', 'nghiem-tuc-trien-khai-dong-bo-cac-giai-phap-cap-bach-khong-che-benh-dich-ta-lon-chau-phi', 'TTĐT - Đó là chỉ đạo của Thủ tướng Nguyễn Xuân Phúc tại Hội nghị trực tuyến toàn quốc triển khai cấp bách khống chế bệnh Dịch tả lợn Châu Phi &#40;DTLCP&#41; vào ngày 04&#x002F;3&#x002F;2019.', '2019_03/dichtaloncp-2-key-04032019165801-key-04032019214610.jpg', '', 2, 1, '4', 1, 0, 50, 0, 0, 0, 0, '', 0),
(24, 4, '4', 0, 1, '', 0, 1552645759, 1552645759, 1, 0, 1552645759, 0, 1, 'Bình Dương tổng kết công tác đầu tư công năm 2018', 'binh-duong-tong-ket-cong-tac-dau-tu-cong-nam-2018', 'TTĐT - ​Sáng 01-3, tại Trung tâm Hành chính tỉnh Bình Dương, ông Trần Thanh Liêm – Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh chủ trì Hội nghị trực tuyến tổng kết tình hình đầu tư công và công tác đền bù, giải phóng mặt bằng năm 2018 trên địa bàn tỉnh.​', '2019_03/dtc-1-key-03032019085035.jpg', '', 2, 1, '4', 1, 0, 59, 0, 0, 0, 0, '', 0),
(25, 4, '4', 0, 1, '', 0, 1552645793, 1552645793, 1, 0, 1552645793, 0, 1, 'Hội nghị chính sách phát triển ngành nước&#x3A; Cơ hội, khó khăn, thách thức và kiến nghị', 'hoi-nghi-chinh-sach-phat-trien-nganh-nuoc-co-hoi-kho-khan-thach-thuc-va-kien-nghi', '​TTĐT - Sáng 01-3, tại Trung t​âm Hội nghị và Triển lãm tỉnh Bình Dương, Hội Cấp thoát nước Việt Nam đã tổ chức Hội nghị thường niên với chủ đề &quot;Chính sách phát triển ngành nước&#x3A; Cơ hội, khó khăn, thách thức và kiến nghị&quot;.​', '2019_03/nganhnuoc1-key-01032019141315.jpg', '', 2, 1, '4', 1, 0, 56, 0, 0, 0, 0, '', 0),
(26, 4, '4', 0, 1, '', 0, 1552645752, 1552645752, 1, 0, 1552645752, 0, 1, 'Nâng cao hiệu quả hoạt động Hội đồng giám sát xổ số kiến thiết tỉnh', 'nang-cao-hieu-qua-hoat-dong-hoi-dong-giam-sat-xo-so-kien-thiet-tinh', 'TTĐT - ​Chiều 28-02, tại TP.Thủ Dầu Một, ông Mai Hùng Dũng - Phó Chủ tịch Thường trực UBND tỉnh, Chủ tịch Hội đồng giám sát xổ số kiến thiết tỉnh đã chủ trì Hội nghị tổng kết hoạt động giám sát xổ số kiến thiết năm 2018; triển khai phương hướng, nhiệm vụ năm 2019. ​', '2019_03/xskt1-key-01032019140819.jpg', '', 2, 1, '4', 1, 0, 52, 0, 0, 0, 0, '', 0),
(27, 4, '4', 0, 1, '', 0, 1552645783, 1552645783, 1, 0, 1552645783, 0, 1, 'Hội nghị tham vấn định hướng hoàn thiện thể chế chính sách về đầu tư nước ngoài trong bối cảnh mới', 'hoi-nghi-tham-van-dinh-huong-hoan-thien-the-che-chinh-sach-ve-dau-tu-nuoc-ngoai-trong-boi-canh-moi', 'TTĐT- ​Chiều 14-02, tại Trung tâm Hội nghị và Triển lãm tỉnh Bình Dương, Bộ Kế hoạch và Đầu tư phối hợp với UBND tỉnh Bình Dương tổ chức Hội nghị tham vấn định hướng hoàn thiện thể chế chính sách về đầu tư nước ngoài trong bối cảnh mới. Ông Vương Đình Huệ - Uỷ viê​​n Bộ Chính trị, Phó Thủ tướng Chính phủ chủ trì hội nghị.​', '2019_03/fdi1-key-14022019171530.jpg', '', 2, 1, '4', 1, 0, 51, 0, 0, 0, 0, '', 0),
(28, 4, '4', 0, 1, '', 0, 1552645775, 1552645775, 1, 0, 1552645775, 0, 1, 'Hội nghị trực tuyến toàn quốc triển khai công tác Kế hoạch và Đầu tư năm 2019', 'hoi-nghi-truc-tuyen-toan-quoc-trien-khai-cong-tac-ke-hoach-va-dau-tu-nam-2019', 'TTĐT - ​Sáng 16-01, tại Hà Nội, Bộ Kế hoạch và Đầu tư tổ chức Hội nghị trực tuyến toàn quốc tổng kết công tác năm 2018 và triển khai nhiệm vụ năm 2019. Ôn​g Vương Đình Huệ - Ủy viên Bộ Chính trị, Phó Thủ tướng Chính phủ dự và chỉ đạo hội nghị.​', '2019_03/khdt1-key-16012019164937.jpg', '', 2, 1, '4', 1, 0, 48, 0, 0, 0, 0, '', 0),
(29, 4, '4', 0, 1, '', 0, 1552645804, 1552645804, 1, 0, 1552645804, 0, 1, 'Bình Dương xây dựng nền nông nghiệp phát triển bền vững', 'binh-duong-xay-dung-nen-nong-nghiep-phat-trien-ben-vung', 'TTĐT - Thời gian qua, ngành Nông nghiệp tỉnh Bình Dương đã đạt nhiều thành tựu đáng khích lệ, đặc biệt là quy mô phát triển và sản lượng của vườn cây ăn quả, nông sản theo quy trình công nghệ cao. Thông qua thực hiện hàng loạt các giải pháp đồng bộ, Bình Dương mong muốn tìm được thị trường tiêu thụ ổn định làm cơ sở để thúc đẩy sản xuất và tiêu thụ sản phẩm nông nghiệp theo hướng bền vững, hướng đến một nền nông nghiệp sạch, cung cấp nông sản an toàn cho tiêu dùng trong nước và xuất khẩu.​', '2019_03/nongnghiepbd-1-key-10012019161209.jpg', '', 2, 1, '4', 1, 0, 59, 0, 0, 0, 0, '', 0),
(30, 4, '4', 0, 1, '', 0, 1552645788, 1552645788, 1, 0, 1552645788, 0, 1, 'Tổng kết tình hình thực hiện nhiệm vụ tài chính, ngân sách nhà nước năm 2018 và triển khai nhiệm vụ năm 2019', 'tong-ket-tinh-hinh-thuc-hien-nhiem-vu-tai-chinh-ngan-sach-nha-nuoc-nam-2018-va-trien-khai-nhiem-vu-nam-2019', 'TTĐT  - ​Chiều 09-01, tại Hà Nội, Bộ Tài chính tổ chức Hội nghị trực tuyến toàn quốc đánh giá tình hình thực hiện nhiệm vụ tài chính, ngân sách nhà nư​ớc &#40;NSNN&#41; năm 2018; quán triệt nhiệm vụ và các giải pháp thực hiện nhiệm vụ năm 2019. Ông Nguyễn Xuân Phúc - Ủy viên Bộ Chính trị, Thủ tướng Chính phủ dự và chỉ đạo hội nghị. ​', '2019_03/taichinh-key-09012019201049.jpg', '', 2, 1, '4', 1, 0, 42, 0, 0, 0, 0, '', 0),
(31, 3, '3', 0, 1, '', 0, 1552645945, 1552645945, 1, 0, 1552645945, 0, 1, 'Hội Liên hiệp Phụ nữ tỉnh Bình Dương họp mặt kỷ niệm 109 năm Ngày Quốc tế Phụ nữ', 'hoi-lien-hiep-phu-nu-tinh-binh-duong-hop-mat-ky-niem-109-nam-ngay-quoc-te-phu-nu', 'TTĐT - ​Sáng 08-3, tại TP.Thủ Dầu Một, Hội Liên hiệp Phụ nữ &#40;LHPN&#41; tỉnh Bình Dương đã tổ chức Họp mặt kỷ niệm 109 năm Ngày Quốc tế Phụ nữ​ 08&#x002F;3 &#40;08&#x002F;3&#x002F;1910 - 08&#x002F;3&#x002F;2019&#41; và 1979 năm Cuộc khởi nghĩa Hai Bà Trưng. ​', '2019_03/pn1-key-09032019094543.jpg', '', 2, 1, '4', 1, 0, 65, 0, 0, 0, 0, '', 0),
(32, 3, '3', 0, 1, '', 0, 1552645985, 1552645985, 1, 0, 1552645985, 0, 1, 'Khai mạc Giải đua xe đạp nữ quốc tế Bình Dương - Cúp Biwase lần thứ IX', 'khai-mac-giai-dua-xe-dap-nu-quoc-te-binh-duong-cup-biwase-lan-thu-ix', 'TTĐT -  ​Sáng 08-3, tại Trung tâm ​Hội nghị và Triển lãm tỉnh, Sở Văn hóa, Thể thao và Du lịch phối hợp với Đài Phát thanh và Truyền hình Bình Dương, Công ty cổ phần Nước - Môi trường Bình Dương &#40;Biwase&#41; tổ chức Lễ khai mạc Giải đua xe đạp nữ quốc tế Bình Dương - Cúp Biwase lần thứ IX - năm 2019.​', '2019_03/xedapnu4-key-08032019105219.jpg', '', 2, 1, '4', 1, 0, 69, 0, 0, 0, 0, '', 0),
(33, 3, '3', 0, 1, '', 0, 1552645963, 1552645963, 1, 0, 1552645963, 0, 1, 'Phát động Chương trình Sức khỏe Việt Nam', 'phat-dong-chuong-trinh-suc-khoe-viet-nam', 'TTĐT - ​Nhân kỷ niệm 64 năm Ngày Thầy thuốc Việt Nam, ngày 27-02, dưới sự chủ trì của Thủ tướng Chính phủ Nguyễn Xuân Phúc, Bộ Y tế phối hợp với Bộ Giáo dục ​và Đào tạo, Bộ Văn hóa, Thể thao và Du lịch và các Bộ, ngành liên quan tổ chức phát động Chương trình Sức khỏe Việt Nam. Đây là một sự kiện quan trọng nhằm công bố, khởi động thực hiện Chươn​g trình Sức khỏe Việt Nam trên phạm vi cả nước. ​', '2019_03/suckhoevn-key-28022019154919.jpg', '', 2, 1, '4', 1, 0, 52, 0, 0, 0, 0, '', 0),
(34, 3, '3', 0, 1, '', 0, 1552645943, 1552645943, 1, 0, 1552645943, 0, 1, 'Đại hội Hội in tỉnh Bình Dương lần thứ I, nhiệm kỳ 2019-2024', 'dai-hoi-hoi-in-tinh-binh-duong-lan-thu-i-nhiem-ky-2019-2024', 'TTĐT - ​Sáng 26-02, tại thành phố Thủ Dầu Một, Hội in tỉnh Bình Dương đã tổ chức Đại hội lần thứ I, nhiệm kỳ 2019-2024. ​', '2019_03/hoiin1-key-26022019160943.jpg', '', 2, 1, '4', 1, 0, 49, 0, 0, 0, 0, '', 0),
(35, 3, '3', 0, 1, '', 0, 1552645933, 1552645933, 1, 0, 1552645933, 0, 1, 'Bình Dương họp mặt văn nghệ sĩ đầu xuân Kỷ Hợi 2019', 'binh-duong-hop-mat-van-nghe-si-dau-xuan-ky-hoi-2019', 'TTĐT - ​Sáng 26-02, tại TP.Thủ Dầu ​​​Một, UBND tỉnh Bình Dương đã tổ chức Họp mặt văn nghệ sĩ đầu Xuân Kỷ Hợi 2019. ​', '2019_03/vannghesi1-key-26022019161849.jpg', '', 2, 1, '4', 1, 0, 52, 0, 0, 0, 0, '', 0),
(36, 3, '3', 0, 1, '', 0, 1552645968, 1552645968, 1, 0, 1552645968, 0, 1, 'Truyền hình trực tiếp tất cả các trận đấu của Becamex Bình Dương tại AFC Cup 2019', 'truyen-hinh-truc-tiep-tat-ca-cac-tran-dau-cua-becamex-binh-duong-tai-afc-cup-2019', 'TTĐT - ​Theo thông tin từ Câu lạc bộ &#40;CLB&#41; Becamex Bình Dương, tất cả các trận đấu của đội này tại đấu trường AFC Cup 2019 đều được phát trực tiếp trên kênh BT​​V nhằm đáp ứng nhu cầu của người hâm mộ.​', '2019_03/clbbecamex-key-26022019162315.jpg', '', 2, 1, '4', 1, 0, 47, 0, 0, 0, 0, '', 0),
(37, 3, '3', 0, 1, '', 0, 1552645980, 1552645980, 1, 0, 1552645980, 0, 1, 'Bình Dương&#x3A; Sôi nổi khởi động Tháng Thanh niên năm 2019', 'binh-duong-soi-noi-khoi-dong-thang-thanh-nien-nam-2019', 'TTĐT - ​Sáng 26-02, tại huyện Phú Giáo, Ban chỉ đạo &#40;BCĐ&#41; các hoạt động Thanh thiếu nhi tỉnh Bình Dương đã tổ chức Lễ khởi động Tháng Thanh niên tỉnh Bình​ Dương năm 2019.​', '2019_03/ttn6-key-26022019163028.jpg', '', 2, 1, '4', 1, 0, 60, 0, 0, 0, 0, '', 0),
(38, 3, '3', 0, 1, '', 0, 1552645967, 1552645967, 1, 0, 1552645967, 0, 1, 'Bình Dương họp mặt báo chí đầu năm - Xuân Kỷ Hợi 2019', 'binh-duong-hop-mat-bao-chi-dau-nam-xuan-ky-hoi-2019', 'TTĐT - ​Sáng 22-02, tại Trung tâm Hội nghị và Triển lãm tỉnh, Tỉnh ủy, HĐND, UBND, Ủy ban MTTQ Việt Nam tỉnh Bình Dương tổ chức Họp mặt báo chí đầu nă​m - Xuân Kỷ Hợi 2019.​', '2019_03/baochi5-key-22022019162717.jpg', '', 2, 1, '4', 1, 0, 52, 0, 0, 0, 0, '', 0),
(39, 3, '3', 0, 1, '', 0, 1552645963, 1552645963, 1, 0, 1552645963, 0, 1, 'Bình Dương sẵn sàng cho Lễ hội Rằm tháng Giêng năm 2019', 'binh-duong-san-sang-cho-le-hoi-ram-thang-gieng-nam-2019', '​TTĐT - Sáng 18-02, Phó Chủ tịch UBND tỉnh Đặng Minh Hưng cùng lãnh đạo các sở, ngành đã đi kiểm tra công tác chuẩn bị Lễ hội Rằm tháng Giêng năm 2019​ tại thành phố Thủ Dầu Một. Qua kiểm tra, mọi công tác chuẩn bị cho mùa Lễ hội Rằm tháng Giêng đã sẵn sàng.​', '2019_03/ramthanggieng3-key-18022019162222.jpg', '', 2, 1, '4', 1, 0, 48, 0, 0, 0, 0, '', 0),
(40, 3, '3', 0, 1, '', 0, 1552645978, 1552645978, 1, 0, 1552645978, 0, 1, 'Bình Dương họp mặt giao thừa Tết Nguyên đán Kỷ Hợi 2019 và tuyên dương người tốt, việc tốt', 'binh-duong-hop-mat-giao-thua-tet-nguyen-dan-ky-hoi-2019-va-tuyen-duong-nguoi-tot-viec-tot', 'TTĐT - ​Tối 04-02 &#40;30 Tết&#41;, tại Trung tâm Hội nghị và Triển lãm tỉnh Bình Dương, Tỉnh ủy, HĐND, UBND, Ủy ban MTTQ Việt Nam tỉnh đã tổ chức Họp mặt giao thừa Tết Nguyên đán Kỷ Hợi 2019 và tuyên dương gương người tốt, việc tốt.', '2019_03/img-0438ok-key-04022019224621.jpg', '', 2, 1, '4', 1, 0, 50, 0, 0, 0, 0, '', 0),
(41, 5, '5', 0, 1, '', 0, 1552646094, 1552646094, 1, 0, 1552646094, 0, 1, 'Quy định quản lý tài nguyên nước trên địa bàn tỉnh Bình Dương', 'quy-dinh-quan-ly-tai-nguyen-nuoc-tren-dia-ban-tinh-binh-duong', 'TTĐT - ​UBND tỉnh Bình Dương vừa ban hành Quyết định số 04&#x002F;2019&#x002F;QĐ-UBND quy định quản lý tài nguyên nước trên địa bàn tỉnh Bình Dương. Quyết định này có hiệu lực thi hành kể từ ngày 01&#x002F;4&#x002F;2019 và thay thế Quyết định số 44&#x002F;2014&#x002F;QĐ-UBND ngày 04&#x002F;12&#x002F;2014 của UBND tỉnh.​', '2019_03/tnnuoc-key-14032019195219.jpg', '', 2, 1, '4', 1, 0, 45, 0, 0, 0, 0, '', 0),
(42, 5, '5', 0, 1, '', 0, 1552646105, 1552646105, 1, 0, 1552646105, 0, 1, 'Năm 2019, triển khai 11 dự án xây dựng Thành phố thông minh Bình Dương', 'nam-2019-trien-khai-11-du-an-xay-dung-thanh-pho-thong-minh-binh-duong', 'TTĐT - Chiều 14 - 3, tại Trung tâm Hội nghị và Triển lãm tỉnh, ông Mai Hùng Dũng – Phó Chủ tịch Thường trực UBND tỉnh, Trưởng Ban Điều hành Thành phố thông minh &#40;TPTM&#41; Bình Dương chủ trì họp Ban Điều hành thông qua Kế hoạch thực hiện Đề án TPTM Bình Dương trong năm 2019.', '2019_03/img-2077ok-key-14032019164619.jpg', '', 2, 1, '4', 1, 0, 54, 0, 0, 0, 0, '', 0),
(43, 5, '5', 0, 1, '', 0, 1552646144, 1552646144, 1, 0, 1552646144, 0, 1, 'Bình Dương&#x3A; 46&#x002F;46 xã đạt chuẩn nông thôn mới', 'binh-duong-46-46-xa-dat-chuan-nong-thon-moi', 'TTĐT - ​Sáng 14-3, tại Trung tâm Hành chính tỉnh Bình Dương, ông Mai Hùng Dũng - Ủy viên Ban Thường vụ Tỉnh ủy, Phó Chủ tịch Thường trực UBND tỉnh​ đã chủ trì họp Hội đồng thẩm định xét công nhận xã đạt chuẩn nông thôn mới năm 2018.​', '2019_03/nongthonmoi-key-14032019140002.jpg', '', 2, 1, '4', 1, 0, 51, 0, 0, 0, 0, '', 0),
(44, 5, '5', 0, 1, '', 0, 1552646134, 1552646134, 1, 0, 1552646134, 0, 1, 'Chính thức khai trương Trục liên thông văn bản quốc gia', 'chinh-thuc-khai-truong-truc-lien-thong-van-ban-quoc-gia', '​​ TTĐT - Chiều 12-3, tại Hà Nội, Văn phòng Chính phủ &#40;VPCP&#41; đã chính thức khai trương Trục liên thông văn bản quốc gia. Lễ khai trương có kết nối truyền hình trực tuyến với 63 điểm cầu tại các tỉnh, thành phố. ', '2019_03/trucvb-1-key-13032019101829.jpg', '', 2, 1, '4', 1, 0, 46, 0, 0, 0, 0, '', 0),
(45, 5, '5', 0, 1, '', 0, 1552646148, 1552646148, 1, 0, 1552646148, 0, 1, 'Năm 2019&#x3A; Bình Dương đẩy mạnh phát triển công nghiệp và dịch vụ thông minh', 'nam-2019-binh-duong-day-manh-phat-trien-cong-nghiep-va-dich-vu-thong-minh', 'TTĐT - Chiều 04-3, tại Trung tâm Hành chính tỉnh Bình Dương, ông Mai Hùng Dũng - Phó Chủ tịch Thường trực UBND tỉnh chủ trì họp nghe các đơn vị báo cáo kế hoạch thực hiện Đề án Thành phố thông minh Bình Dương năm 2019 và chuẩn bị Diễn đàn Hợp tác kinh tế châu Á - Horasis 2019; kiến trúc điều hành cho Thành phố thông minh Bình Dương.', '2019_03/mohinhtptm-key-04032019155046.jpg', '', 2, 1, '4', 1, 0, 42, 0, 0, 0, 0, '', 0),
(46, 5, '5', 0, 1, '', 0, 1552646149, 1552646149, 1, 0, 1552646149, 0, 1, 'Bình Dương&#x3A; Đại lý Internet không cung cấp dịch vụ trò chơi điện tử chỉ được hoạt động từ 8 giờ đến 22 giờ hàng ngày', 'binh-duong-dai-ly-internet-khong-cung-cap-dich-vu-tro-choi-dien-tu-chi-duoc-hoat-dong-tu-8-gio-den-22-gio-hang-ngay', 'TTĐT - ​UBND tỉnh vừa ban hành Quyết định số 02&#x002F;2019&#x002F;QĐ-UBND quy định thời gian hoạt động của điểm truy nhập Internet công cộng không cung cấp dịch vụ trò chơi điện tử; qu​​y mô diện tích và thẩm quyền cấp, sửa đổi, bổ sung, gia hạn, cấp lại, thu hồi giấy chứng nhận đủ điều kiện hoạt động đối với điểm cung cấp dịch vụ trò chơi điện tử công cộng trên địa bàn tỉnh Bình Dương. Quyết định này có hiệu lực kể từ ngày 01&#x002F;03&#x002F;2019 và thay thế Quyết định số 31&#x002F;2014&#x002F;QĐ-UBND ngày 12&#x002F;8&#x002F;2014, Quyết định số 3003&#x002F;QĐ-UBND ngày 26&#x002F;11&#x002F;2014.​', 'https://www.binhduong.gov.vn/Style Library/LacViet/CMS2013/Images/newsdefault.jpg', '', 3, 1, '4', 1, 0, 56, 0, 0, 0, 0, '', 0),
(47, 5, '5', 0, 1, '', 0, 1552646115, 1552646115, 1, 0, 1552646115, 0, 1, 'Quy chế quản lý, vận hành và sử dụng mạng truyền số liệu chuyên dùng cấp II của các cơ quan Đảng, Nhà nước trên địa bàn tỉnh Bình Dương', 'quy-che-quan-ly-van-hanh-va-su-dung-mang-truyen-so-lieu-chuyen-dung-cap-ii-cua-cac-co-quan-dang-nha-nuoc-tren-dia-ban-tinh-binh-duong', 'TTĐT - ​UBND tỉnh vừa ban hành Quyết định số 03&#x002F;2019&#x002F;QĐ-UBND về Quy chế quản lý, vận hành và sử dụng mạng truyền số liệu chuyên dùng cấp II của các cơ quan Đảng, Nhà nước trên địa bàn tỉnh Bình Dư​​ơng. Quyết định này có hiệu lực thi hành từ ngày 01&#x002F;03&#x002F;2019 và thay thế Quyết định số 03&#x002F;2012&#x002F;QĐ-UBND ngày 12&#x002F;01&#x002F;2012 của UBND tỉnh.', 'https://www.binhduong.gov.vn/Style Library/LacViet/CMS2013/Images/newsdefault.jpg', '', 3, 1, '4', 1, 0, 42, 0, 0, 0, 0, '', 0),
(48, 5, '5', 0, 1, '', 0, 1552646117, 1552646117, 1, 0, 1552646117, 0, 1, 'Hội thảo phát triển kiến trúc cho Thành phố thông minh Bình Dương', 'hoi-thao-phat-trien-kien-truc-cho-thanh-pho-thong-minh-binh-duong', 'TTĐT - Chiều 21-02, tại Trung tâm Hội nghị và Triển lãm tỉnh, UBND tỉnh Bình Dương tổ chức Hội thảo phát triển kiến trúc cho Thành phố thông minh  &#40;TPTM&#41; Bình Dương.', '2019_03/img-1995ok-key-21022019181020.jpg', '', 2, 1, '4', 1, 0, 61, 0, 0, 0, 0, '', 0),
(49, 5, '5', 0, 1, '', 0, 1552646145, 1552646145, 1, 0, 1552646145, 0, 1, 'Quy định về xây dựng, quản lý, sử dụng nghĩa trang và cơ sở hỏa táng trên địa bàn tỉnh Bình Dương', 'quy-dinh-ve-xay-dung-quan-ly-su-dung-nghia-trang-va-co-so-hoa-tang-tren-dia-ban-tinh-binh-duong', 'TTĐT- ​UBND tỉnh Bình Dương vừa ban hành Quyết định số 01&#x002F;2019&#x002F;QĐ-UBND quy định về xây dựng, quản lý, sử dụng nghĩa trang và cơ sở hỏa tán​g trên địa bàn tỉnh Bình Dương. Quyết định này có hiệu lực thi hành kể từ ngày 10&#x002F;02&#x002F;2019 và thay thế Quyết định số 46&#x002F;2011&#x002F;QĐ-UBND ngày 09&#x002F;11&#x002F;2011 của UBND tỉnh.​', 'https://www.binhduong.gov.vn/Style Library/LacViet/CMS2013/Images/newsdefault.jpg', '', 3, 1, '4', 1, 0, 48, 0, 0, 0, 0, '', 0),
(50, 5, '5', 0, 1, '', 0, 1552646145, 1552646145, 1, 0, 1552646145, 0, 1, 'Công bố thủ tục hành chính được sửa đổi, bổ sung trong lĩnh vực môi trường, khí tượng thủy văn, địa chất và khoáng sản, tài nguyên nước thuộc thẩm quyền giải quyết của Sở Tài nguyên và Môi trường', 'cong-bo-thu-tuc-hanh-chinh-duoc-sua-doi-bo-sung-trong-linh-vuc-moi-truong-khi-tuong-thuy-van-dia-chat-va-khoang-san-tai-nguyen-nuoc-thuoc-tham-quyen-giai-quyet-cua-so-tai-nguyen-va-moi-truong', 'TTĐT- ​UBND tỉnh vừa ban hành Quyết định về việc công bố thủ tục hành chính &#40;TTHC&#41; được sửa đổi, bổ sung trong lĩnh vực môi trường, khí tượng thủy văn, địa chất và khoáng sản, tài nguyên nước thuộc thẩm quyền giải quyết của Sở Tài nguyên và Môi trường. Quyết định này thay thế Quyết định số 1801&#x002F;QĐ-UBND ngày 02&#x002F;7&#x002F;2018 về việc công bố Bộ TTHC thuộc thẩm quyền giải quyết của Sở Tài nguyên và Môi trường, UBND cấp huyện và UBND cấp xã.', 'https://www.binhduong.gov.vn/Style Library/LacViet/CMS2013/Images/newsdefault.jpg', '', 3, 1, '4', 1, 0, 53, 0, 0, 0, 0, '', 0),
(51, 6, '6', 0, 1, '', 0, 1552646934, 1552646934, 1, 0, 1552646934, 0, 1, 'Chủ tịch UBND tỉnh Trần Thanh Liêm tiếp Thị trưởng thành phố Emmen &#40;Hà Lan&#41;', 'chu-tich-ubnd-tinh-tran-thanh-liem-tiep-thi-truong-thanh-pho-emmen-ha-lan', 'TTĐT - ​Chiều 08-3, tại Trung tâm hành chính tỉnh Bình Dương, ông Trần Thanh Liêm - Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh đã tiếp và làm việc với ng​ài Eric van Oosterhout - tân Thị trưởng thành phố Emmen &#40;Hà Lan&#41;. Tham dự có ông Nguyễn Văn Hùng - Ủy viên Ban Thường vụ Tỉnh ủy, Tổng Giám đốc Becamex IDC, cùng lãnh đạo các sở, ngành.​', '2019_03/emmen1-key-09032019113255.jpg', '', 2, 1, '4', 1, 0, 41, 0, 0, 0, 0, '', 0),
(52, 6, '6', 0, 1, '', 0, 1552646943, 1552646943, 1, 0, 1552646943, 0, 1, 'Phó Chủ tịch UBND tỉnh Đặng Minh Hưng tiếp Tân Tổng Lãnh sự Cuba', 'pho-chu-tich-ubnd-tinh-dang-minh-hung-tiep-tan-tong-lanh-su-cuba', 'TTĐT - ​Chiều 21-02, tại Trung tâm Hành chính tỉnh Bình Dương, ông Đặng Minh Hưng – Phó Chủ tịch UBND tỉnh đã tiếp bà Indira Lopez Arguelles – Tân Tổng Lãnh sự Cuba tại thành phố Hồ Chí Minh đến chào xã giao.', '2019_03/cuba-2-key-22022019090814.jpg', '', 2, 1, '4', 1, 0, 50, 0, 0, 0, 0, '', 0),
(53, 6, '6', 0, 1, '', 0, 1552646960, 1552646960, 1, 0, 1552646960, 0, 1, 'Lãnh đạo tỉnh tiếp Đoàn đại biểu tỉnh Kratie &#40;Campuchia&#41; đến thăm và chúc Tết', 'lanh-dao-tinh-tiep-doan-dai-bieu-tinh-kratie-campuchia-den-tham-va-chuc-tet', '​TTĐT -  Chiều 28-01, tại Trung tâm Hành chính tỉnh Bình Dương, ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh đã chủ trì tiếp Đoàn đại biểu tỉnh Kratie, Vương quốc Campuchia do ông Hua Sy Dem - Phó Tỉnh trưởng tỉnh Kratie đến thăm và chúc Tết tỉnh Bình Dương.​​', '2019_03/tiepkratie2-key-28012019172631.jpg', '', 2, 1, '4', 1, 0, 53, 0, 0, 0, 0, '', 0),
(54, 6, '6', 0, 1, '', 0, 1552646929, 1552646929, 1, 0, 1552646929, 0, 1, 'Lãnh đạo tỉnh tiếp Đoàn đại biểu tỉnh Kandal &#40;Campuchia&#41; đến chúc Tết', 'lanh-dao-tinh-tiep-doan-dai-bieu-tinh-kandal-campuchia-den-chuc-tet', 'TTĐT - ​Chiều 25-01, tại Trung tâm Hành chính tỉnh Bình Dương, ông Đặng Minh Hưng - Phó Chủ tịch UBND tỉnh đã chủ trì tiếp Đoàn đại biểu tỉnh Kandal, Vương quốc Campuchia do ông Kung Sô Phan - Phó Tỉnh trưởng tỉnh Kandal làm Trưởng đoàn đến thăm, chúc Tết tỉnh Bình Dương.​', '2019_03/kandal2-key-26012019092622.jpg', '', 2, 1, '4', 1, 0, 55, 0, 0, 0, 0, '', 0),
(55, 6, '6', 0, 1, '', 0, 1552646943, 1552646943, 1, 0, 1552646943, 0, 1, 'Phó Chủ tịch UBND tỉnh Đặng Minh Hưng tiếp Tân Tổng Lãnh sự nước Cộng hoà nhân dân Trung Hoa', 'pho-chu-tich-ubnd-tinh-dang-minh-hung-tiep-tan-tong-lanh-su-nuoc-cong-hoa-nhan-dan-trung-hoa', 'TTĐT - ​Sáng 24-01, tại Trung tâm Hành chính tỉnh Bình Dương, ông Đặng Minh Hưng – Phó Chủ tịch UBND tỉnh đã tiếp ngài Ngô Tuấn – Tân Tổng Lãnh sự nước Cộng hòa nhân dân Trung Hoa tại thành phố Hồ Chí Minh.', '2019_03/trungquoc-1-key-25012019105320.jpg', '', 2, 1, '4', 1, 0, 58, 0, 0, 0, 0, '', 0),
(56, 6, '6', 0, 1, '', 0, 1552646939, 1552646939, 1, 0, 1552646939, 0, 1, 'Bí thư Tỉnh ủy Trần Văn Nam tiếp Tân Đại sứ Italia', 'bi-thu-tinh-uy-tran-van-nam-tiep-tan-dai-su-italia', 'TTĐT - ​Chiều 21-01, tại Trung tâm Hành chính tỉnh Bình Dương, ông Trần Văn Nam - Ủy viên Trung ương Đảng, Bí thư Tỉnh ủy, Trưởng Đoàn Đại biểu Quốc hội tỉnh đã tiếp Ngài Antonio Alssandro – Tân Đại sứ Italia đến chào xã giao nhân dịp nhận nhiệm vụ mới tại Việt Nam. ', '2019_03/daisuitalia-1-key-22012019104215.jpg', '', 2, 1, '4', 1, 0, 49, 0, 0, 0, 0, '', 0),
(57, 6, '6', 0, 1, '', 0, 1552646959, 1552646959, 1, 0, 1552646959, 0, 1, 'Bình Dương họp mặt Lãnh sự đoàn và các cơ quan nước ngoài', 'binh-duong-hop-mat-lanh-su-doan-va-cac-co-quan-nuoc-ngoai', 'TTĐT - Tối 21- 01,  tại TP.Thủ Dầu Một, Tỉnh ủy, HĐND, UBND, Ủy ban MTTQ Việt Nam tỉnh tổ chức  Họp mặt Lãnh sự đoàn và các cơ quan nước ngoài.', '2019_03/img-6938ok-key-22012019140604.jpg', '', 2, 1, '4', 1, 0, 59, 0, 0, 0, 0, '', 0),
(58, 6, '6', 0, 1, '', 0, 1552646955, 1552646955, 1, 0, 1552646955, 0, 1, 'Đại hội Hội Hữu nghị Việt - Nhật tỉnh Bình Dương lần thứ I, nhiệm kỳ 2018-2023', 'dai-hoi-hoi-huu-nghi-viet-nhat-tinh-binh-duong-lan-thu-i-nhiem-ky-2018-2023', 'TTDDT - Sáng 06-01, tại TP.Thủ Dầu Một đã diễn ra Đại hội Hội Hữu nghị Việt - Nhật tỉnh Bình Dương lần thứ I, nhiệm kỳ 2018-2023.', '2019_03/img-0218ok-key-06012019135206.jpg', '', 2, 1, '4', 1, 0, 42, 0, 0, 0, 0, '', 0),
(59, 6, '6', 0, 1, '', 0, 1552646960, 1552646960, 1, 0, 1552646960, 0, 1, 'Phó Chủ tịch Thường trực UBND tỉnh Mai Hùng Dũng tiếp Tổng Lãnh sự Cộng hòa Dân chủ nhân dân Lào', 'pho-chu-tich-thuong-truc-ubnd-tinh-mai-hung-dung-tiep-tong-lanh-su-cong-hoa-dan-chu-nhan-dan-lao', 'TTĐT - ​Sáng 28-12, tại Trung tâm Hành chính tỉnh Bình Dương, ông Mai Hùng Dũng - Phó Chủ tịch Thường trực UBND tỉnh đã tiếp Ngài Somxay Sanam O​une - Tổng Lãnh sự Cộng hòa Dân chủ nhân dân Lào tại TP.Hồ Chí Minh đến chào từ biệt nhân kết thúc nhiệm kỳ công tác.​', '2019_03/tieplao1-key-28122018160843.jpg', '', 2, 1, '4', 1, 0, 48, 0, 0, 0, 0, '', 0),
(60, 6, '6', 0, 1, '', 0, 1552646949, 1552646949, 1, 0, 1552646949, 0, 1, 'Chủ tịch UBND tỉnh Trần Thanh Liêm tiếp Đại sứ đặc mệnh toàn quyền Nhật Bản', 'chu-tich-ubnd-tinh-tran-thanh-liem-tiep-dai-su-dac-menh-toan-quyen-nhat-ban', 'TTĐT - ​Chiều 13-12, tại Trung tâm Hành chính tỉnh Bình Dương, ông Trần Thanh Liêm – Phó Bí thư Tỉnh ủy, Chủ tịch UBND tỉnh tiếp Ngài Kunio Umeda – Đại sứ đặc mệnh toàn quyền Nhật Bản tại Việt Nam và Phu nhân đến chào xã giao.', '2019_03/daisunhatban-2-key-14122018103814.jpg', '', 2, 1, '4', 1, 0, 47, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_news_sources`
--

CREATE TABLE IF NOT EXISTS `tms_vi_news_sources` (
  `sourceid` mediumint(8) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL,
  `edit_time` int(11) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_news_tags`
--

CREATE TABLE IF NOT EXISTS `tms_vi_news_tags` (
  `tid` mediumint(8) unsigned NOT NULL,
  `numnews` mediumint(8) NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_news_tags_id`
--

CREATE TABLE IF NOT EXISTS `tms_vi_news_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_news_tmp`
--

CREATE TABLE IF NOT EXISTS `tms_vi_news_tmp` (
  `id` mediumint(8) unsigned NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0',
  `time_edit` int(11) NOT NULL,
  `time_late` int(11) NOT NULL,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_news_topics`
--

CREATE TABLE IF NOT EXISTS `tms_vi_news_topics` (
  `topicid` smallint(5) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_news_topics`
--

INSERT INTO `tms_vi_news_topics` (`topicid`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 'NukeViet 4', 'NukeViet-4', '', 'NukeViet 4', 1, 'NukeViet 4', 1445396011, 1445396011);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_organs_admins`
--

CREATE TABLE IF NOT EXISTS `tms_vi_organs_admins` (
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `organid` int(11) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `status_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_organs_config`
--

CREATE TABLE IF NOT EXISTS `tms_vi_organs_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_organs_config`
--

INSERT INTO `tms_vi_organs_config` (`config_name`, `config_value`) VALUES
('per_page', '10'),
('per_page_parent', '5'),
('organ_view_type', '0'),
('organ_view_type_main', '0'),
('thumb_width', '80'),
('thumb_height', '100'),
('email_require', '0'),
('phone_require', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_organs_person`
--

CREATE TABLE IF NOT EXISTS `tms_vi_organs_person` (
  `personid` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_ext` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_other` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` int(11) NOT NULL,
  `place_birth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL,
  `edittime` int(11) NOT NULL,
  `organid` int(11) NOT NULL,
  `weight` int(8) NOT NULL DEFAULT '0',
  `active` tinyint(2) NOT NULL DEFAULT '0',
  `dayinto` int(11) NOT NULL DEFAULT '0',
  `dayparty` int(11) NOT NULL DEFAULT '0',
  `marital_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `professional` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `political` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_organs_person`
--

INSERT INTO `tms_vi_organs_person` (`personid`, `name`, `photo`, `phone_ext`, `mobile`, `email`, `position`, `position_other`, `address`, `phone`, `birthday`, `place_birth`, `description`, `addtime`, `edittime`, `organid`, `weight`, `active`, `dayinto`, `dayparty`, `marital_status`, `professional`, `political`) VALUES
(1, 'Nguyễn Văn A', '', '', '', 'nguyenvana@gmail.com', 'Trưởng phòng', '', '', '', -448407120, 'Quảng Bình', '', 1445394264, 1445394534, 1, 1, 1, 0, 0, 'Đã kết hôn', 'Đại học', 'Cao cấp');

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_organs_rows`
--

CREATE TABLE IF NOT EXISTS `tms_vi_organs_rows` (
  `organid` int(11) unsigned NOT NULL,
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(4) unsigned NOT NULL DEFAULT '0',
  `orders` int(8) NOT NULL DEFAULT '0',
  `numsub` int(8) NOT NULL DEFAULT '0',
  `suborgan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lev` int(8) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_ext` char(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `numperson` int(8) NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_organs_rows`
--

INSERT INTO `tms_vi_organs_rows` (`organid`, `parentid`, `title`, `alias`, `image`, `thumbnail`, `weight`, `orders`, `numsub`, `suborgan`, `lev`, `active`, `add_time`, `edit_time`, `address`, `email`, `phone`, `phone_ext`, `fax`, `website`, `numperson`, `description`, `view`) VALUES
(1, 0, 'Ban giám hiệu', 'Ban-giam-hieu', '', '', 1, 1, 0, '', 0, 1, 1442804405, 1442822308, '', '', '', '', '', '', 1, '', 1),
(7, 0, 'Tổ chuyên môn', 'To-chuyen-mon', '', '', 2, 2, 0, '', 0, 1, 1442822363, 1442822363, '', '', '', '', '', '', 0, '', 1),
(8, 0, 'Ban chỉ huy liên đội', 'Ban-chi-huy-lien-doi', '', '', 3, 3, 0, '', 0, 1, 1442829290, 1442829290, '', '', '', '', '', '', 0, '', 1),
(3, 0, 'Chi bộ Đảng', 'Chi-bo-Dang', '', '', 5, 5, 0, '', 0, 1, 1442822317, 1442822317, '', '', '', '', '', '', 0, '', 1),
(4, 0, 'BCH Công Đoàn', 'BCH-Cong-Doan', '', '', 4, 4, 0, '', 0, 1, 1442822325, 1442822325, '', '', '', '', '', '', 0, '', 1),
(5, 0, 'Đoàn thanh niên', 'Doan-thanh-nien', '', '', 6, 6, 0, '', 0, 1, 1442822334, 1442822334, '', '', '', '', '', '', 0, '', 1),
(6, 0, 'Thường trực hội cha mẹ học sinh', 'Thuong-truc-hoi-cha-me-hoc-sinh', '', '', 7, 7, 0, '', 0, 1, 1442822345, 1442829333, '', '', '', '', '', '', 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_page`
--

CREATE TABLE IF NOT EXISTS `tms_vi_page` (
  `id` mediumint(8) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_page_config`
--

CREATE TABLE IF NOT EXISTS `tms_vi_page_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_page_config`
--

INSERT INTO `tms_vi_page_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1'),
('socialbutton', 'facebook,twitter');

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_referer_stats`
--

CREATE TABLE IF NOT EXISTS `tms_vi_referer_stats` (
  `host` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `month01` int(11) NOT NULL DEFAULT '0',
  `month02` int(11) NOT NULL DEFAULT '0',
  `month03` int(11) NOT NULL DEFAULT '0',
  `month04` int(11) NOT NULL DEFAULT '0',
  `month05` int(11) NOT NULL DEFAULT '0',
  `month06` int(11) NOT NULL DEFAULT '0',
  `month07` int(11) NOT NULL DEFAULT '0',
  `month08` int(11) NOT NULL DEFAULT '0',
  `month09` int(11) NOT NULL DEFAULT '0',
  `month10` int(11) NOT NULL DEFAULT '0',
  `month11` int(11) NOT NULL DEFAULT '0',
  `month12` int(11) NOT NULL DEFAULT '0',
  `last_update` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_searchkeys`
--

CREATE TABLE IF NOT EXISTS `tms_vi_searchkeys` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skey` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `search_engine` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_siteterms`
--

CREATE TABLE IF NOT EXISTS `tms_vi_siteterms` (
  `id` mediumint(8) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hot_post` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_siteterms`
--

INSERT INTO `tms_vi_siteterms` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(1, 'Chính sách bảo mật (Quyền riêng tư)', 'privacy', '', '', 0, 'Tài liệu này cung cấp cho bạn (người truy cập và sử dụng website) chính sách liên quan đến bảo mật và quyền riêng tư của bạn', '<strong><a id="index" name="index"></a>Danh mục</strong><br /> <a href="#1">Điều 1: Thu thập thông tin</a><br /> <a href="#2">Điều 2: Lưu trữ &amp; Bảo vệ thông tin</a><br /> <a href="#3">Điều 3: Sử dụng thông tin </a><br /> <a href="#4">Điều 4: Tiếp nhận thông tin từ các đối tác </a><br /> <a href="#5">Điều 5: Chia sẻ thông tin với bên thứ ba</a><br /> <a href="#6">Điều 6: Thay đổi chính sách bảo mật</a>  <hr  /> <h2><a id="1" name="1"></a>Điều 1: Thu thập thông tin</h2>  <h3>1.1. Thu thập tự động:</h3>  <div>Hệ thống này được xây dựng bằng mã nguồn NukeViet. Như mọi website hiện đại khác, chúng tôi sẽ thu thập địa chỉ IP và các thông tin web tiêu chuẩn khác của bạn như: loại trình duyệt, các trang bạn truy cập trong quá trình sử dụng dịch vụ, thông tin về máy tính &amp; thiết bị mạng v.v… cho mục đích phân tích thông tin phục vụ việc bảo mật và giữ an toàn cho hệ thống.</div>  <h3>1.2. Thu thập từ các khai báo của chính bạn:</h3>  <div>Các thông tin do bạn khai báo cho chúng tôi trong quá trình làm việc như: đăng ký tài khoản, liên hệ với chúng tôi... cũng sẽ được chúng tôi lưu trữ phục vụ công việc chăm sóc khách hàng sau này.</div>  <h3>1.3. Thu thập thông tin thông qua việc đặt cookies:</h3>  <p>Như mọi website hiện đại khác, khi bạn truy cập website, chúng tôi (hoặc các công cụ theo dõi hoặc thống kê hoạt động của website do các đối tác cung cấp) sẽ đặt một số File dữ liệu gọi là Cookies lên đĩa cứng hoặc bộ nhớ máy tính của bạn.</p>  <p>Một trong số những Cookies này có thể tồn tại lâu để thuận tiện cho bạn trong quá trình sử dụng, ví dụ như: lưu Email của bạn trong trang đăng nhập để bạn không phải nhập lại v.v…</p>  <h3>1.4. Thu thập và lưu trữ thông tin trong quá khứ:</h3>  <p>Bạn có thể thay đổi thông tin cá nhân của mình bất kỳ lúc nào bằng cách sử dụng chức năng tương ứng. Tuy nhiên chúng tôi sẽ lưu lại những thông tin bị thay đổi để chống các hành vi xóa dấu vết gian lận.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2><a id="2" name="2"></a>Điều 2: Lưu trữ &amp; Bảo vệ thông tin</h2>  <div>Hầu hết các thông tin được thu thập sẽ được lưu trữ tại cơ sở dữ liệu của chúng tôi.<br /> <br /> Chúng tôi bảo vệ dữ liệu cá nhân của các bạn bằng các hình thức như: mật khẩu, tường lửa, mã hóa cùng các hình thức thích hợp khác và chỉ cấp phép việc truy cập và xử lý dữ liệu cho các đối tượng phù hợp, ví dụ chính bạn hoặc các nhân viên có trách nhiệm xử lý thông tin với bạn thông qua các bước xác định danh tính phù hợp.<br /> <br /> Mật khẩu của bạn được lưu trữ và bảo vệ bằng phương pháp mã hoá trong cơ sở dữ liệu của hệ thống, vì thế nó rất an toàn. Tuy nhiên, chúng tôi khuyên bạn không nên dùng lại mật khẩu này trên các website khác. Mật khẩu của bạn là cách duy nhất để bạn đăng nhập vào tài khoản thành viên của mình trong website này, vì thế hãy cất giữ nó cẩn thận. Trong mọi trường hợp bạn không nên cung cấp thông tin mật khẩu cho bất kỳ người nào dù là người của chúng tôi, người của NukeViet hay bất kỳ người thứ ba nào khác trừ khi bạn hiểu rõ các rủi ro khi để lộ mật khẩu. Nếu quên mật khẩu, bạn có thể sử dụng chức năng “<a href="/users/lostpass/">Quên mật khẩu</a>” trên website. Để thực hiện việc này, bạn cần phải cung cấp cho hệ thống biết tên thành viên hoặc địa chỉ Email đang sử dụng của mình trong tài khoản, sau đó hệ thống sẽ tạo ra cho bạn mật khẩu mới và gửi đến cho bạn để bạn vẫn có thể đăng nhập vào tài khoản thành viên của mình.  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p> </div>  <h2><a id="3" name="3"></a>Điều 3: Sử dụng thông tin</h2>  <p>Thông tin thu thập được sẽ được chúng tôi sử dụng để:</p>  <div>- Cung cấp các dịch vụ hỗ trợ &amp; chăm sóc khách hàng.</div>  <div>- Thực hiện giao dịch thanh toán &amp; gửi các thông báo trong quá trình giao dịch.</div>  <div>- Xử lý khiếu nại, thu phí &amp; giải quyết sự cố.</div>  <div>- Ngăn chặn các hành vi có nguy cơ rủi ro, bị cấm hoặc bất hợp pháp và đảm bảo tuân thủ đúng chính sách “Thỏa thuận người dùng”.</div>  <div>- Đo đạc, tùy biến &amp; cải tiến dịch vụ, nội dung và hình thức của website.</div>  <div>- Gửi bạn các thông tin về chương trình Marketing, các thông báo &amp; chương trình khuyến mại.</div>  <div>- So sánh độ chính xác của thông tin cá nhân của bạn trong quá trình kiểm tra với bên thứ ba.</div>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2><a id="4" name="4"></a>Điều 4: Tiếp nhận thông tin từ các đối tác</h2>  <div>Khi sử dụng các công cụ giao dịch và thanh toán thông qua internet, chúng tôi có thể tiếp nhận thêm các thông tin về bạn như địa chỉ username, Email, số tài khoản ngân hàng... Chúng tôi kiểm tra những thông tin này với cơ sở dữ liệu người dùng của mình nhằm xác nhận rằng bạn có phải là khách hàng của chúng tôi hay không nhằm giúp việc thực hiện các dịch vụ cho bạn được thuận lợi.<br /> <br /> Các thông tin tiếp nhận được sẽ được chúng tôi bảo mật như những thông tin mà chúng tôi thu thập được trực tiếp từ bạn.</div>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2><a id="5" name="5"></a>Điều 5: Chia sẻ thông tin với bên thứ ba</h2>  <p>Chúng tôi sẽ không chia sẻ thông tin cá nhân, thông tin tài chính... của bạn cho các bên thứ 3 trừ khi được sự đồng ý của chính bạn hoặc khi chúng tôi buộc phải tuân thủ theo các quy định pháp luật hoặc khi có yêu cầu từ cơ quan công quyền có thẩm quyền.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2><a id="6" name="6"></a>Điều 6: Thay đổi chính sách bảo mật</h2>  <p>Chính sách Bảo mật này có thể thay đổi theo thời gian. Chúng tôi sẽ không giảm quyền của bạn theo Chính sách Bảo mật này mà không có sự đồng ý rõ ràng của bạn. Chúng tôi sẽ đăng bất kỳ thay đổi Chính sách Bảo mật nào trên trang này và, nếu những thay đổi này quan trọng, chúng tôi sẽ cung cấp thông báo nổi bật hơn (bao gồm, đối với một số dịch vụ nhất định, thông báo bằng email về các thay đổi của Chính sách Bảo mật).</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <p style="text-align: right;">Chính sách bảo mật mặc định này được xây dựng cho <a href="http://nukeviet.vn" target="_blank">NukeViet CMS</a>, được tham khảo từ website <a href="http://webnhanh.vn/vi/thiet-ke-web/detail/Chinh-sach-bao-mat-Quyen-rieng-tu-Privacy-Policy-2147/">webnhanh.vn</a></p>', '', 0, '4', '', 1, 1, 1629627264, 1629627264, 1, 0, 0),
(2, 'Điều khoản và điều kiện sử dụng', 'terms-and-conditions', '', '', 0, 'Đây là các điều khoản và điều kiện áp dụng cho website này. Truy cập và sử dụng website tức là bạn đã đồng ý với các quy định này.', '<div>Cảm ơn bạn đã sử dụng. Xin vui lòng đọc các Điều khoản một cách cẩn thận, và <a href="/contact/">liên hệ</a> với chúng tôi nếu bạn có bất kỳ câu hỏi. Bằng việc truy cập hoặc sử dụng website của chúng tôi, bạn đồng ý bị ràng buộc bởi các <a href="/siteterms/terms-and-conditions.html">Điều khoản và điều kiện</a> sử dụng cũng như <a href="/siteterms/privacy.html">Chính sách bảo mật</a> của chúng tôi. Nếu không đồng ý với các quy định này, bạn vui lòng ngưng sử dụng website.<br /> <br /> <strong><a id="index" name="index"></a>Danh mục</strong><br /> <a href="#1">Điều 1: Điều khoản liên quan đến phần mềm vận hành website</a><br /> <a href="#2">Điều 2: Giới hạn cho việc sử dụng Website và các tài liệu trên website</a><br /> <a href="#3">Điều 3: Sử dụng thương hiệu</a><br /> <a href="#4">Điều 4: Các hành vi bị nghiêm cấm</a><br /> <a href="#5">Điều 5: Các đường liên kết đến các website khác</a><br /> <a href="#6">Điều 6: Từ chối bảo đảm</a><br /> <a href="#7">Điều 7: Luật áp dụng và cơ quan giải quyết tranh chấp</a><br /> <a href="#8">Điều 8: Thay đổi điều khoản và điều kiện sử dụng</a></div>  <hr  /> <h2><a id="1" name="1"></a>Điều khoản liên quan đến phần mềm vận hành website</h2>  <p>- Website của chúng tôi sử dụng hệ thống NukeViet, là giải pháp về website/ cổng thông tin nguồn mở được phát hành theo giấy phép bản quyền phần mềm tự do nguồn mở “<a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html" target="_blank">GNU General Public License</a>” (viết tắt là GNU/GPL hay GPL) và có thể tải về miễn phí tại trang web <a href="http://www.nukeviet.vn" target="_blank">www.nukeviet.vn</a>.<br /> - Website này do chúng tôi sở hữu, điều hành và duy trì. NukeViet (hiểu ở đây là “hệ thống NukeViet” (bao gồm nhân hệ thống NukeViet và các sản phẩm phái sinh như NukeViet CMS, NukeViet Portal, <a href="http://edu.nukeviet.vn" target="_blank">NukeViet Edu Gate</a>...), “www.nukeviet.vn”, “tổ chức NukeViet”, “ban điều hành NukeViet”, &quot;Ban Quản Trị NukeViet&quot; và nói chung là những gì liên quan đến NukeViet...) không liên quan gì đến việc chúng tôi điều hành website cũng như quy định bạn được phép làm và không được phép làm gì trên website này.<br /> - Hệ thống NukeViet là bộ mã nguồn được phát triển để xây dựng các website/ cổng thông tin trên mạng. Chúng tôi (chủ sở hữu, điều hành và duy trì website này) không hỗ trợ và khẳng định hay ngụ ý về việc có liên quan đến NukeViet. Để biết thêm nhiều thông tin về NukeViet, hãy ghé thăm website của NukeViet tại địa chỉ: <a href="http://nukeviet.vn" target="_blank">http://nukeviet.vn</a>.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2><a id="2" name="2"></a>Giới hạn cho việc sử dụng Website và các tài liệu trên website</h2>  <p>- Tất cả các quyền liên quan đến tất cả tài liệu và thông tin được hiển thị và/ hoặc được tạo ra sẵn cho Website này (ví dụ như những tài liệu được cung cấp để tải về) được quản lý, sở hữu hoặc được cho phép sử dụng bởi chúng tôi hoặc chủ sở hữu tương ứng với giấy phép tương ứng. Việc sử dụng các tài liệu và thông tin phải được tuân thủ theo giấy phép tương ứng được áp dụng cho chúng.<br /> - Ngoại trừ các tài liệu được cấp phép rõ ràng dưới dạng giấy phép tư liệu mở&nbsp;Creative Commons (gọi là giấy phép CC) cho phép bạn khai thác và chia sẻ theo quy định của giấy phép tư liệu mở, đối với các loại tài liệu không ghi giấy phép rõ ràng thì bạn không được phép sử dụng (bao gồm nhưng không giới hạn việc sao chép, chỉnh sửa toàn bộ hay một phần, đăng tải, phân phối, cấp phép, bán và xuất bản) bất cứ tài liệu nào mà không có sự cho phép trước bằng văn bản của chúng tôi ngoại trừ việc sử dụng cho mục đích cá nhân, nội bộ, phi thương mại.<br /> - Một số tài liệu hoặc thông tin có những điều khoản và điều kiện áp dụng riêng cho chúng không phải là giấy phép tư liệu mở, trong trường hợp như vậy, bạn được yêu cầu phải chấp nhận các điều khoản và điều kiện đó khi truy cập vào các tài liệu và thông tin này.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2><a id="3" name="3"></a>Sử dụng thương hiệu</h2>  <p>- VINADES.,JSC, NukeViet và thương hiệu gắn với NukeViet (ví dụ NukeViet CMS, NukeViet Portal, NukeViet Edu Gate...), logo công ty VINADES thuộc sở hữu của Công ty cổ phần phát triển nguồn mở Việt Nam.<br /> - Những tên sản phẩm, tên dịch vụ khác, logo và/ hoặc những tên công ty được sử dụng trong Website này là những tài sản đã được đăng ký độc quyền và được giữ bản quyền bởi những người sở hữu và/ hoặc người cấp phép tương ứng.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2><a id="4" name="4"></a>Các hành vi bị nghiêm cấm</h2>  <p>Người truy cập website này không được thực hiện những hành vi dưới đây khi sử dụng website:<br /> - Xâm phạm các quyền hợp pháp (bao gồm nhưng không giới hạn đối với các quyền riêng tư và chung) của người khác.<br /> - Gây ra sự thiệt hại hoặc bất lợi cho người khác.<br /> - Làm xáo trộn trật tự công cộng.<br /> - Hành vi liên quan đến tội phạm.<br /> - Tải lên hoặc phát tán thông tin riêng tư của tổ chức, cá nhân khác mà không được sự chấp thuận của họ.<br /> - Sử dụng Website này vào mục đích thương mại mà chưa được sự cho phép của chúng tôi.<br /> - Nói xấu, làm nhục, phỉ báng người khác.<br /> - Tải lên các tập tin chứa virus hoặc các tập tin bị hư mà có thể gây thiệt hại đến sự vận hành của máy tính khác.<br /> - Những hoạt động có khả năng ảnh hưởng đến hoạt động bình thường của website.<br /> - Những hoạt động mà chúng tôi cho là không thích hợp.<br /> - Những hoạt động bất hợp pháp hoặc bị cấm bởi pháp luật hiện hành.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2><a id="5" name="5"></a>Các đường liên kết đến các website khác</h2>  <p>- Các website của các bên thứ ba (không phải các trang do chúng tôi quản lý) được liên kết đến hoặc từ website này (&quot;Các website khác&quot;) được điều hành và duy trì hoàn toàn độc lập bởi các bên thứ ba đó và không nằm trong quyền điều khiển và/hoặc giám sát của chúng tôi. Việc truy cập các website khác phải được tuân thủ theo các điều khoản và điều kiện quy định bởi ban điều hành của website đó.<br /> - Chúng tôi không chịu trách nhiệm cho sự mất mát hoặc thiệt hại do việc truy cập và sử dụng các website bên ngoài, và bạn phải chịu mọi rủi ro khi truy cập các website đó.<br /> - Không có nội dung nào trong Website này thể hiện như một sự đảm bảo của chúng tôi về nội dung của các website khác và các sản phẩm và/ hoặc các dịch vụ xuất hiện và/ hoặc được cung cấp tại các website khác.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2><a id="6" name="6"></a>Từ chối bảo đảm</h2>  <p>NGOẠI TRỪ PHẠM VI BỊ CẤM THEO LUẬT PHÁP HIỆN HÀNH, CHÚNG TÔI SẼ:<br /> - KHÔNG CHỊU TRÁCH NHIỆM HAY BẢO ĐẢM, MỘT CÁCH RÕ RÀNG HAY NGỤ Ý, BAO GỒM SỰ BẢO ĐẢM VỀ TÍNH CHÍNH XÁC, MỨC ĐỘ TIN CẬY, HOÀN THIỆN, PHÙ HỢP CHO MỤC ĐÍCH CỤ THỂ, SỰ KHÔNG XÂM PHẠM QUYỀN CỦA BÊN THỨ 3 VÀ/HOẶC TÍNH AN TOÀN CỦA NỘI DỤNG WEBSITE NÀY, VÀ NHỮNG TUYÊN BỐ, ĐẢM BẢO CÓ LIÊN QUAN.<br /> - KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT KỲ SỰ THIỆT HẠI HAY MẤT MÁT PHÁT SINH TỪ VIỆC TRUY CẬP VÀ SỬ DỤNG WEBSITE HAY VIỆC KHÔNG THỂ SỬ DỤNG WEBSITE.<br /> - CHÚNG TÔI CÓ THỂ THAY ĐỔI VÀ/HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE NÀY, HOẶC TẠM HOÃN HOẶC NGƯNG CUNG CẤP CÁC DỊCH VỤ QUA WEBSITE NÀY VÀO BẤT KỲ THỜI ĐIỂM NÀO MÀ KHÔNG CẦN THÔNG BÁO TRƯỚC. CHÚNG TÔI SẼ KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT CỨ THIỆT HẠI NÀO PHÁT SINH DO SỰ THAY ĐỔI HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2><a id="7" name="7"></a>Luật áp dụng và cơ quan giải quyết tranh chấp</h2>  <p>- Các Điều Khoản và Điều Kiện này được điều chỉnh và giải thích theo luật của Việt Nam trừ khi có điều khoản khác được cung cấp thêm. Tất cả tranh chấp phát sinh liên quan đến website này và các Điều Khoản và Điều Kiện sử dụng này sẽ được giải quyết tại các tòa án ở Việt Nam.<br /> - Nếu một phần nào đó của các Điều Khoản và Điều Kiện bị xem là không có giá trị, vô hiệu, hoặc không áp dụng được vì lý do nào đó, phần đó được xem như là phần riêng biệt và không ảnh hưởng đến tính hiệu lực của phần còn lại.<br /> - Trong trường hợp có sự mâu thuẫn giữa bản Tiếng Anh và bản Tiếng Việt của bản Điều Khoản và Điều Kiện này, bản Tiếng Việt sẽ được ưu tiên áp dụng.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2><a id="8" name="8"></a>Thay đổi điều khoản và điều kiện sử dụng</h2>  <div>Điều khoản và điều kiện sử dụng có thể thay đổi theo thời gian. Chúng tôi bảo lưu quyền thay đổi hoặc sửa đổi bất kỳ điều khoản và điều kiện cũng như các quy định khác, bất cứ lúc nào và theo ý mình. Chúng tôi sẽ có thông báo trên website khi có sự thay đổi. Tiếp tục sử dụng trang web này sau khi đăng các thay đổi tức là bạn đã chấp nhận các thay đổi đó. <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p> </div>', '', 0, '4', '', 2, 1, 1629627264, 1629627264, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_siteterms_config`
--

CREATE TABLE IF NOT EXISTS `tms_vi_siteterms_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_siteterms_config`
--

INSERT INTO `tms_vi_siteterms_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1'),
('socialbutton', 'facebook,twitter');

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_voting`
--

CREATE TABLE IF NOT EXISTS `tms_vi_voting` (
  `vid` smallint(5) unsigned NOT NULL,
  `question` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `acceptcm` int(2) NOT NULL DEFAULT '1',
  `active_captcha` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `publ_time` int(11) unsigned NOT NULL DEFAULT '0',
  `exp_time` int(11) unsigned NOT NULL DEFAULT '0',
  `act` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vote_one` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 cho phép vote nhiều lần 1 cho phép vote 1 lần'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_voting`
--

INSERT INTO `tms_vi_voting` (`vid`, `question`, `link`, `acceptcm`, `active_captcha`, `admin_id`, `groups_view`, `publ_time`, `exp_time`, `act`, `vote_one`) VALUES
(2, 'Bạn biết gì về NukeViet 4?', '', 1, 0, 1, '6', 1629627264, 0, 1, 0),
(3, 'Lợi ích của phần mềm nguồn mở là gì?', '', 1, 0, 1, '6', 1629627264, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_voting_rows`
--

CREATE TABLE IF NOT EXISTS `tms_vi_voting_rows` (
  `id` mediumint(8) unsigned NOT NULL,
  `vid` smallint(5) unsigned NOT NULL,
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hitstotal` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_voting_rows`
--

INSERT INTO `tms_vi_voting_rows` (`id`, `vid`, `title`, `url`, `hitstotal`) VALUES
(5, 2, 'Một bộ sourcecode cho web hoàn toàn mới.', '', 1),
(6, 2, 'Mã nguồn mở, sử dụng miễn phí.', '', 0),
(7, 2, 'Sử dụng HTML5, CSS3 và hỗ trợ Ajax', '', 0),
(8, 2, 'Tất cả các ý kiến trên', '', 0),
(9, 3, 'Liên tục được cải tiến, sửa đổi bởi cả thế giới.', '', 0),
(10, 3, 'Được sử dụng miễn phí không mất tiền.', '', 0),
(11, 3, 'Được tự do khám phá, sửa đổi theo ý thích.', '', 0),
(12, 3, 'Phù hợp để học tập, nghiên cứu vì được tự do sửa đổi theo ý thích.', '', 0),
(13, 3, 'Tất cả các ý kiến trên', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_voting_voted`
--

CREATE TABLE IF NOT EXISTS `tms_vi_voting_voted` (
  `vid` smallint(5) unsigned NOT NULL,
  `voted` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_weblinks_cat`
--

CREATE TABLE IF NOT EXISTS `tms_vi_weblinks_cat` (
  `catid` mediumint(8) unsigned NOT NULL,
  `parentid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catimage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_weblinks_config`
--

CREATE TABLE IF NOT EXISTS `tms_vi_weblinks_config` (
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tms_vi_weblinks_config`
--

INSERT INTO `tms_vi_weblinks_config` (`name`, `value`) VALUES
('homepage', '1'),
('imgheight', '74'),
('imgwidth', '100'),
('new_icon', '3'),
('per_page', '20'),
('report_timeout', '60'),
('showlinkimage', '1'),
('sort', 'des'),
('sortoption', 'bytime'),
('timeout', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_weblinks_report`
--

CREATE TABLE IF NOT EXISTS `tms_vi_weblinks_report` (
  `id` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `report_time` int(11) NOT NULL,
  `report_ip` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `report_browse_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `report_browse_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `report_os_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `report_os_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `report_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tms_vi_weblinks_rows`
--

CREATE TABLE IF NOT EXISTS `tms_vi_weblinks_rows` (
  `id` mediumint(8) unsigned NOT NULL,
  `catid` mediumint(8) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlimg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `hits_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tms_authors`
--
ALTER TABLE `tms_authors`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tms_authors_api_credential`
--
ALTER TABLE `tms_authors_api_credential`
  ADD UNIQUE KEY `credential_ident` (`credential_ident`),
  ADD UNIQUE KEY `credential_secret` (`credential_secret`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `tms_authors_api_role`
--
ALTER TABLE `tms_authors_api_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tms_authors_config`
--
ALTER TABLE `tms_authors_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keyname` (`keyname`);

--
-- Indexes for table `tms_authors_module`
--
ALTER TABLE `tms_authors_module`
  ADD PRIMARY KEY (`mid`),
  ADD UNIQUE KEY `module` (`module`);

--
-- Indexes for table `tms_authors_oauth`
--
ALTER TABLE `tms_authors_oauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`,`oauth_server`,`oauth_uid`),
  ADD KEY `oauth_email` (`oauth_email`);

--
-- Indexes for table `tms_banners_click`
--
ALTER TABLE `tms_banners_click`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bid` (`bid`),
  ADD KEY `click_day` (`click_day`),
  ADD KEY `click_ip` (`click_ip`),
  ADD KEY `click_country` (`click_country`),
  ADD KEY `click_browse_key` (`click_browse_key`),
  ADD KEY `click_os_key` (`click_os_key`);

--
-- Indexes for table `tms_banners_plans`
--
ALTER TABLE `tms_banners_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `tms_banners_rows`
--
ALTER TABLE `tms_banners_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `clid` (`clid`);

--
-- Indexes for table `tms_config`
--
ALTER TABLE `tms_config`
  ADD UNIQUE KEY `lang` (`lang`,`module`,`config_name`);

--
-- Indexes for table `tms_cookies`
--
ALTER TABLE `tms_cookies`
  ADD UNIQUE KEY `cookiename` (`name`,`domain`,`path`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tms_counter`
--
ALTER TABLE `tms_counter`
  ADD UNIQUE KEY `c_type` (`c_type`,`c_val`);

--
-- Indexes for table `tms_cronjobs`
--
ALTER TABLE `tms_cronjobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_sys` (`is_sys`);

--
-- Indexes for table `tms_extension_files`
--
ALTER TABLE `tms_extension_files`
  ADD PRIMARY KEY (`idfile`);

--
-- Indexes for table `tms_ips`
--
ALTER TABLE `tms_ips`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`,`type`);

--
-- Indexes for table `tms_language`
--
ALTER TABLE `tms_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filelang` (`idfile`,`lang_key`,`langtype`);

--
-- Indexes for table `tms_language_file`
--
ALTER TABLE `tms_language_file`
  ADD PRIMARY KEY (`idfile`),
  ADD UNIQUE KEY `module` (`module`,`admin_file`);

--
-- Indexes for table `tms_logs`
--
ALTER TABLE `tms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tms_notification`
--
ALTER TABLE `tms_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `send_to` (`send_to`),
  ADD KEY `admin_view_allowed` (`admin_view_allowed`),
  ADD KEY `logic_mode` (`logic_mode`);

--
-- Indexes for table `tms_plugin`
--
ALTER TABLE `tms_plugin`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `plugin_file` (`plugin_file`);

--
-- Indexes for table `tms_sessions`
--
ALTER TABLE `tms_sessions`
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `onl_time` (`onl_time`);

--
-- Indexes for table `tms_setup_extensions`
--
ALTER TABLE `tms_setup_extensions`
  ADD UNIQUE KEY `title` (`type`,`title`),
  ADD KEY `id` (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `tms_setup_language`
--
ALTER TABLE `tms_setup_language`
  ADD PRIMARY KEY (`lang`);

--
-- Indexes for table `tms_upload_dir`
--
ALTER TABLE `tms_upload_dir`
  ADD PRIMARY KEY (`did`),
  ADD UNIQUE KEY `name` (`dirname`);

--
-- Indexes for table `tms_upload_file`
--
ALTER TABLE `tms_upload_file`
  ADD UNIQUE KEY `did` (`did`,`title`),
  ADD KEY `userid` (`userid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `tms_users`
--
ALTER TABLE `tms_users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idsite` (`idsite`);

--
-- Indexes for table `tms_users_backupcodes`
--
ALTER TABLE `tms_users_backupcodes`
  ADD UNIQUE KEY `userid` (`userid`,`code`);

--
-- Indexes for table `tms_users_config`
--
ALTER TABLE `tms_users_config`
  ADD PRIMARY KEY (`config`);

--
-- Indexes for table `tms_users_edit`
--
ALTER TABLE `tms_users_edit`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `tms_users_field`
--
ALTER TABLE `tms_users_field`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `field` (`field`);

--
-- Indexes for table `tms_users_groups`
--
ALTER TABLE `tms_users_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `kalias` (`alias`,`idsite`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `tms_users_groups_detail`
--
ALTER TABLE `tms_users_groups_detail`
  ADD UNIQUE KEY `group_id_lang` (`lang`,`group_id`);

--
-- Indexes for table `tms_users_groups_users`
--
ALTER TABLE `tms_users_groups_users`
  ADD PRIMARY KEY (`group_id`,`userid`);

--
-- Indexes for table `tms_users_info`
--
ALTER TABLE `tms_users_info`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `tms_users_openid`
--
ALTER TABLE `tms_users_openid`
  ADD PRIMARY KEY (`opid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `tms_users_question`
--
ALTER TABLE `tms_users_question`
  ADD PRIMARY KEY (`qid`),
  ADD UNIQUE KEY `title` (`title`,`lang`);

--
-- Indexes for table `tms_users_reg`
--
ALTER TABLE `tms_users_reg`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `login` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tms_vi_about`
--
ALTER TABLE `tms_vi_about`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `tms_vi_about_config`
--
ALTER TABLE `tms_vi_about_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `tms_vi_audio_blocks`
--
ALTER TABLE `tms_vi_audio_blocks`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `tms_vi_audio_rows`
--
ALTER TABLE `tms_vi_audio_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tms_vi_blocks_groups`
--
ALTER TABLE `tms_vi_blocks_groups`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `theme` (`theme`),
  ADD KEY `module` (`module`),
  ADD KEY `position` (`position`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `tms_vi_blocks_weight`
--
ALTER TABLE `tms_vi_blocks_weight`
  ADD UNIQUE KEY `bid` (`bid`,`func_id`);

--
-- Indexes for table `tms_vi_comment`
--
ALTER TABLE `tms_vi_comment`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `mod_id` (`module`,`area`,`id`),
  ADD KEY `post_time` (`post_time`);

--
-- Indexes for table `tms_vi_contact_department`
--
ALTER TABLE `tms_vi_contact_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `full_name` (`full_name`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `tms_vi_contact_reply`
--
ALTER TABLE `tms_vi_contact_reply`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tms_vi_contact_send`
--
ALTER TABLE `tms_vi_contact_send`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_name` (`sender_name`);

--
-- Indexes for table `tms_vi_contact_supporter`
--
ALTER TABLE `tms_vi_contact_supporter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tms_vi_download`
--
ALTER TABLE `tms_vi_download`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `catid` (`catid`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tms_vi_download_categories`
--
ALTER TABLE `tms_vi_download_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `tms_vi_download_config`
--
ALTER TABLE `tms_vi_download_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `tms_vi_download_detail`
--
ALTER TABLE `tms_vi_download_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tms_vi_download_files`
--
ALTER TABLE `tms_vi_download_files`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `download_id` (`download_id`),
  ADD KEY `server_id` (`server_id`);

--
-- Indexes for table `tms_vi_download_report`
--
ALTER TABLE `tms_vi_download_report`
  ADD UNIQUE KEY `fid` (`fid`),
  ADD KEY `post_time` (`post_time`);

--
-- Indexes for table `tms_vi_download_server`
--
ALTER TABLE `tms_vi_download_server`
  ADD PRIMARY KEY (`server_id`),
  ADD UNIQUE KEY `server_name` (`server_name`);

--
-- Indexes for table `tms_vi_download_tags`
--
ALTER TABLE `tms_vi_download_tags`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `tms_vi_download_tags_id`
--
ALTER TABLE `tms_vi_download_tags_id`
  ADD UNIQUE KEY `id_tid` (`id`,`did`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `tms_vi_download_tmp`
--
ALTER TABLE `tms_vi_download_tmp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `tms_vi_freecontent_blocks`
--
ALTER TABLE `tms_vi_freecontent_blocks`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `tms_vi_freecontent_rows`
--
ALTER TABLE `tms_vi_freecontent_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tms_vi_laws_admins`
--
ALTER TABLE `tms_vi_laws_admins`
  ADD UNIQUE KEY `userid` (`userid`,`subjectid`);

--
-- Indexes for table `tms_vi_laws_area`
--
ALTER TABLE `tms_vi_laws_area`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`,`parentid`),
  ADD KEY `weight` (`weight`);

--
-- Indexes for table `tms_vi_laws_cat`
--
ALTER TABLE `tms_vi_laws_cat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`,`parentid`),
  ADD KEY `weight` (`weight`);

--
-- Indexes for table `tms_vi_laws_config`
--
ALTER TABLE `tms_vi_laws_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `tms_vi_laws_examine`
--
ALTER TABLE `tms_vi_laws_examine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tms_vi_laws_row`
--
ALTER TABLE `tms_vi_laws_row`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tms_vi_laws_row_area`
--
ALTER TABLE `tms_vi_laws_row_area`
  ADD UNIQUE KEY `alias` (`row_id`,`area_id`);

--
-- Indexes for table `tms_vi_laws_set_replace`
--
ALTER TABLE `tms_vi_laws_set_replace`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tms_vi_laws_signer`
--
ALTER TABLE `tms_vi_laws_signer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tms_vi_laws_subject`
--
ALTER TABLE `tms_vi_laws_subject`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `weight` (`weight`);

--
-- Indexes for table `tms_vi_menu`
--
ALTER TABLE `tms_vi_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `tms_vi_menu_rows`
--
ALTER TABLE `tms_vi_menu_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid` (`parentid`,`mid`);

--
-- Indexes for table `tms_vi_modfuncs`
--
ALTER TABLE `tms_vi_modfuncs`
  ADD PRIMARY KEY (`func_id`),
  ADD UNIQUE KEY `func_name` (`func_name`,`in_module`),
  ADD UNIQUE KEY `alias` (`alias`,`in_module`);

--
-- Indexes for table `tms_vi_modthemes`
--
ALTER TABLE `tms_vi_modthemes`
  ADD UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`);

--
-- Indexes for table `tms_vi_modules`
--
ALTER TABLE `tms_vi_modules`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `tms_vi_news_1`
--
ALTER TABLE `tms_vi_news_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `tms_vi_news_2`
--
ALTER TABLE `tms_vi_news_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `tms_vi_news_3`
--
ALTER TABLE `tms_vi_news_3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `tms_vi_news_4`
--
ALTER TABLE `tms_vi_news_4`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `tms_vi_news_5`
--
ALTER TABLE `tms_vi_news_5`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `tms_vi_news_6`
--
ALTER TABLE `tms_vi_news_6`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `tms_vi_news_admins`
--
ALTER TABLE `tms_vi_news_admins`
  ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Indexes for table `tms_vi_news_author`
--
ALTER TABLE `tms_vi_news_author`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`uid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `tms_vi_news_authorlist`
--
ALTER TABLE `tms_vi_news_authorlist`
  ADD UNIQUE KEY `id_aid` (`id`,`aid`),
  ADD KEY `aid` (`aid`),
  ADD KEY `alias` (`alias`);

--
-- Indexes for table `tms_vi_news_block`
--
ALTER TABLE `tms_vi_news_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `tms_vi_news_block_cat`
--
ALTER TABLE `tms_vi_news_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `tms_vi_news_cat`
--
ALTER TABLE `tms_vi_news_cat`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tms_vi_news_config_post`
--
ALTER TABLE `tms_vi_news_config_post`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `tms_vi_news_detail`
--
ALTER TABLE `tms_vi_news_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tms_vi_news_logs`
--
ALTER TABLE `tms_vi_news_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `tms_vi_news_rows`
--
ALTER TABLE `tms_vi_news_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `tms_vi_news_sources`
--
ALTER TABLE `tms_vi_news_sources`
  ADD PRIMARY KEY (`sourceid`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `tms_vi_news_tags`
--
ALTER TABLE `tms_vi_news_tags`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `tms_vi_news_tags_id`
--
ALTER TABLE `tms_vi_news_tags_id`
  ADD UNIQUE KEY `id_tid` (`id`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `tms_vi_news_tmp`
--
ALTER TABLE `tms_vi_news_tmp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tms_vi_news_topics`
--
ALTER TABLE `tms_vi_news_topics`
  ADD PRIMARY KEY (`topicid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `tms_vi_organs_admins`
--
ALTER TABLE `tms_vi_organs_admins`
  ADD UNIQUE KEY `userid` (`userid`,`organid`);

--
-- Indexes for table `tms_vi_organs_config`
--
ALTER TABLE `tms_vi_organs_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `tms_vi_organs_person`
--
ALTER TABLE `tms_vi_organs_person`
  ADD PRIMARY KEY (`personid`);

--
-- Indexes for table `tms_vi_organs_rows`
--
ALTER TABLE `tms_vi_organs_rows`
  ADD PRIMARY KEY (`organid`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `tms_vi_page`
--
ALTER TABLE `tms_vi_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `tms_vi_page_config`
--
ALTER TABLE `tms_vi_page_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `tms_vi_referer_stats`
--
ALTER TABLE `tms_vi_referer_stats`
  ADD UNIQUE KEY `host` (`host`),
  ADD KEY `total` (`total`);

--
-- Indexes for table `tms_vi_searchkeys`
--
ALTER TABLE `tms_vi_searchkeys`
  ADD KEY `id` (`id`),
  ADD KEY `skey` (`skey`),
  ADD KEY `search_engine` (`search_engine`);

--
-- Indexes for table `tms_vi_siteterms`
--
ALTER TABLE `tms_vi_siteterms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `tms_vi_siteterms_config`
--
ALTER TABLE `tms_vi_siteterms_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `tms_vi_voting`
--
ALTER TABLE `tms_vi_voting`
  ADD PRIMARY KEY (`vid`),
  ADD UNIQUE KEY `question` (`question`);

--
-- Indexes for table `tms_vi_voting_rows`
--
ALTER TABLE `tms_vi_voting_rows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vid` (`vid`,`title`);

--
-- Indexes for table `tms_vi_voting_voted`
--
ALTER TABLE `tms_vi_voting_voted`
  ADD UNIQUE KEY `vid` (`vid`);

--
-- Indexes for table `tms_vi_weblinks_cat`
--
ALTER TABLE `tms_vi_weblinks_cat`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `tms_vi_weblinks_config`
--
ALTER TABLE `tms_vi_weblinks_config`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `tms_vi_weblinks_report`
--
ALTER TABLE `tms_vi_weblinks_report`
  ADD KEY `id` (`id`);

--
-- Indexes for table `tms_vi_weblinks_rows`
--
ALTER TABLE `tms_vi_weblinks_rows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`(191)),
  ADD KEY `catid` (`catid`),
  ADD KEY `status` (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tms_authors_api_role`
--
ALTER TABLE `tms_authors_api_role`
  MODIFY `role_id` smallint(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_authors_config`
--
ALTER TABLE `tms_authors_config`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_authors_module`
--
ALTER TABLE `tms_authors_module`
  MODIFY `mid` mediumint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tms_authors_oauth`
--
ALTER TABLE `tms_authors_oauth`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_banners_click`
--
ALTER TABLE `tms_banners_click`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_banners_plans`
--
ALTER TABLE `tms_banners_plans`
  MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tms_banners_rows`
--
ALTER TABLE `tms_banners_rows`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tms_cronjobs`
--
ALTER TABLE `tms_cronjobs`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tms_extension_files`
--
ALTER TABLE `tms_extension_files`
  MODIFY `idfile` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_ips`
--
ALTER TABLE `tms_ips`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tms_language`
--
ALTER TABLE `tms_language`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_language_file`
--
ALTER TABLE `tms_language_file`
  MODIFY `idfile` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_logs`
--
ALTER TABLE `tms_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `tms_notification`
--
ALTER TABLE `tms_notification`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_plugin`
--
ALTER TABLE `tms_plugin`
  MODIFY `pid` tinyint(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tms_upload_dir`
--
ALTER TABLE `tms_upload_dir`
  MODIFY `did` mediumint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `tms_users`
--
ALTER TABLE `tms_users`
  MODIFY `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tms_users_backupcodes`
--
ALTER TABLE `tms_users_backupcodes`
  MODIFY `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_users_field`
--
ALTER TABLE `tms_users_field`
  MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tms_users_groups`
--
ALTER TABLE `tms_users_groups`
  MODIFY `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tms_users_question`
--
ALTER TABLE `tms_users_question`
  MODIFY `qid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tms_users_reg`
--
ALTER TABLE `tms_users_reg`
  MODIFY `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_vi_about`
--
ALTER TABLE `tms_vi_about`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tms_vi_audio_blocks`
--
ALTER TABLE `tms_vi_audio_blocks`
  MODIFY `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tms_vi_audio_rows`
--
ALTER TABLE `tms_vi_audio_rows`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tms_vi_blocks_groups`
--
ALTER TABLE `tms_vi_blocks_groups`
  MODIFY `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `tms_vi_comment`
--
ALTER TABLE `tms_vi_comment`
  MODIFY `cid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_vi_contact_department`
--
ALTER TABLE `tms_vi_contact_department`
  MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tms_vi_contact_reply`
--
ALTER TABLE `tms_vi_contact_reply`
  MODIFY `rid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_vi_contact_send`
--
ALTER TABLE `tms_vi_contact_send`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_vi_contact_supporter`
--
ALTER TABLE `tms_vi_contact_supporter`
  MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_vi_download`
--
ALTER TABLE `tms_vi_download`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_vi_download_categories`
--
ALTER TABLE `tms_vi_download_categories`
  MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_vi_download_files`
--
ALTER TABLE `tms_vi_download_files`
  MODIFY `file_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_vi_download_server`
--
ALTER TABLE `tms_vi_download_server`
  MODIFY `server_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_vi_download_tags`
--
ALTER TABLE `tms_vi_download_tags`
  MODIFY `did` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_vi_download_tmp`
--
ALTER TABLE `tms_vi_download_tmp`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_vi_freecontent_blocks`
--
ALTER TABLE `tms_vi_freecontent_blocks`
  MODIFY `bid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tms_vi_freecontent_rows`
--
ALTER TABLE `tms_vi_freecontent_rows`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tms_vi_laws_area`
--
ALTER TABLE `tms_vi_laws_area`
  MODIFY `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tms_vi_laws_cat`
--
ALTER TABLE `tms_vi_laws_cat`
  MODIFY `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tms_vi_laws_examine`
--
ALTER TABLE `tms_vi_laws_examine`
  MODIFY `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tms_vi_laws_row`
--
ALTER TABLE `tms_vi_laws_row`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_vi_laws_set_replace`
--
ALTER TABLE `tms_vi_laws_set_replace`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_vi_laws_signer`
--
ALTER TABLE `tms_vi_laws_signer`
  MODIFY `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tms_vi_laws_subject`
--
ALTER TABLE `tms_vi_laws_subject`
  MODIFY `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tms_vi_menu`
--
ALTER TABLE `tms_vi_menu`
  MODIFY `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tms_vi_menu_rows`
--
ALTER TABLE `tms_vi_menu_rows`
  MODIFY `id` mediumint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `tms_vi_modfuncs`
--
ALTER TABLE `tms_vi_modfuncs`
  MODIFY `func_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `tms_vi_news_1`
--
ALTER TABLE `tms_vi_news_1`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tms_vi_news_2`
--
ALTER TABLE `tms_vi_news_2`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tms_vi_news_3`
--
ALTER TABLE `tms_vi_news_3`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `tms_vi_news_4`
--
ALTER TABLE `tms_vi_news_4`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `tms_vi_news_5`
--
ALTER TABLE `tms_vi_news_5`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `tms_vi_news_6`
--
ALTER TABLE `tms_vi_news_6`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `tms_vi_news_author`
--
ALTER TABLE `tms_vi_news_author`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_vi_news_block_cat`
--
ALTER TABLE `tms_vi_news_block_cat`
  MODIFY `bid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tms_vi_news_cat`
--
ALTER TABLE `tms_vi_news_cat`
  MODIFY `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tms_vi_news_logs`
--
ALTER TABLE `tms_vi_news_logs`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_vi_news_rows`
--
ALTER TABLE `tms_vi_news_rows`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `tms_vi_news_sources`
--
ALTER TABLE `tms_vi_news_sources`
  MODIFY `sourceid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_vi_news_tags`
--
ALTER TABLE `tms_vi_news_tags`
  MODIFY `tid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_vi_news_topics`
--
ALTER TABLE `tms_vi_news_topics`
  MODIFY `topicid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tms_vi_organs_person`
--
ALTER TABLE `tms_vi_organs_person`
  MODIFY `personid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tms_vi_organs_rows`
--
ALTER TABLE `tms_vi_organs_rows`
  MODIFY `organid` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tms_vi_page`
--
ALTER TABLE `tms_vi_page`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_vi_siteterms`
--
ALTER TABLE `tms_vi_siteterms`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tms_vi_voting`
--
ALTER TABLE `tms_vi_voting`
  MODIFY `vid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tms_vi_voting_rows`
--
ALTER TABLE `tms_vi_voting_rows`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tms_vi_weblinks_cat`
--
ALTER TABLE `tms_vi_weblinks_cat`
  MODIFY `catid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tms_vi_weblinks_rows`
--
ALTER TABLE `tms_vi_weblinks_rows`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
