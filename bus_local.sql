-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 09 2017 г., 17:53
-- Версия сервера: 5.5.50
-- Версия PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bus.local`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-08-01 17:14:08', '2017-08-01 14:14:08', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href="https://ru.gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM AUTO_INCREMENT=209 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://bus.local', 'yes'),
(2, 'home', 'http://bus.local', 'yes'),
(3, 'blogname', 'busminsk', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'timotheus@list.ru', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'bus', 'yes'),
(41, 'stylesheet', 'bus', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'ru_RU', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'cron', 'a:4:{i:1502331254;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1502375656;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1502375971;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1501598146;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(113, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.8.1.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.8.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.8.1";s:7:"version";s:5:"4.8.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.8.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.8.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.8.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.8.1-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.8.1-partial-0.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.8.1";s:7:"version";s:5:"4.8.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:3:"4.8";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.8.1.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.8.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.8.1";s:7:"version";s:5:"4.8.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1502288078;s:15:"version_checked";s:3:"4.8";s:12:"translations";a:0:{}}', 'no'),
(205, '_site_transient_timeout_theme_roots', '1502289880', 'no'),
(206, '_site_transient_theme_roots', 'a:4:{s:3:"bus";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(118, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1502288086;s:7:"checked";a:4:{s:3:"bus";s:0:"";s:13:"twentyfifteen";s:3:"1.8";s:15:"twentyseventeen";s:3:"1.3";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(155, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1502288083;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:0:{}}', 'no'),
(192, 'dismissed_update_core', 'a:1:{s:11:"4.8.1|ru_RU";b:1;}', 'no'),
(122, 'can_compress_scripts', '1', 'no'),
(123, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1501640083', 'no'),
(124, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1501640083', 'no'),
(125, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1501596883', 'no'),
(126, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1501640085', 'no'),
(127, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1501640086', 'no'),
(128, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1501596885', 'no'),
(188, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1502221620', 'no'),
(189, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:9:"127.0.0.0";}s:6:"events";a:0:{}}', 'no'),
(158, '_transient_timeout_plugin_slugs', '1501856571', 'no'),
(159, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(160, 'recently_activated', 'a:0:{}', 'yes'),
(132, 'current_theme', 'Bus', 'yes'),
(133, 'theme_mods_bus', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:11:"header-menu";i:2;s:11:"second-menu";i:3;}}', 'yes'),
(134, 'theme_switched', '', 'yes'),
(162, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_wp_trash_meta_status', 'publish'),
(3, 2, '_wp_trash_meta_time', '1501771165'),
(4, 2, '_wp_desired_post_slug', 'sample-page'),
(5, 5, '_edit_last', '1'),
(6, 5, '_edit_lock', '1501771064:1'),
(7, 7, '_edit_last', '1'),
(8, 7, '_edit_lock', '1501771123:1'),
(9, 9, '_edit_last', '1'),
(10, 9, '_edit_lock', '1501771280:1'),
(11, 11, '_edit_last', '1'),
(12, 11, '_edit_lock', '1501771445:1'),
(13, 14, '_edit_last', '1'),
(14, 14, '_edit_lock', '1501829945:1'),
(15, 17, '_edit_last', '1'),
(16, 17, '_edit_lock', '1501830024:1'),
(17, 19, '_edit_last', '1'),
(18, 19, '_edit_lock', '1501830078:1'),
(19, 22, '_menu_item_type', 'post_type'),
(20, 22, '_menu_item_menu_item_parent', '0'),
(21, 22, '_menu_item_object_id', '11'),
(22, 22, '_menu_item_object', 'page'),
(23, 22, '_menu_item_target', ''),
(24, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(25, 22, '_menu_item_xfn', ''),
(26, 22, '_menu_item_url', ''),
(94, 30, '_menu_item_object', 'custom'),
(28, 23, '_menu_item_type', 'post_type'),
(29, 23, '_menu_item_menu_item_parent', '0'),
(30, 23, '_menu_item_object_id', '9'),
(31, 23, '_menu_item_object', 'page'),
(32, 23, '_menu_item_target', ''),
(33, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(34, 23, '_menu_item_xfn', ''),
(35, 23, '_menu_item_url', ''),
(93, 30, '_menu_item_object_id', '30'),
(37, 24, '_menu_item_type', 'post_type'),
(38, 24, '_menu_item_menu_item_parent', '0'),
(39, 24, '_menu_item_object_id', '7'),
(40, 24, '_menu_item_object', 'page'),
(41, 24, '_menu_item_target', ''),
(42, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(43, 24, '_menu_item_xfn', ''),
(44, 24, '_menu_item_url', ''),
(92, 30, '_menu_item_menu_item_parent', '0'),
(46, 25, '_menu_item_type', 'post_type'),
(47, 25, '_menu_item_menu_item_parent', '0'),
(48, 25, '_menu_item_object_id', '5'),
(49, 25, '_menu_item_object', 'page'),
(50, 25, '_menu_item_target', ''),
(51, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(52, 25, '_menu_item_xfn', ''),
(53, 25, '_menu_item_url', ''),
(91, 30, '_menu_item_type', 'custom'),
(55, 26, '_menu_item_type', 'custom'),
(56, 26, '_menu_item_menu_item_parent', '0'),
(57, 26, '_menu_item_object_id', '26'),
(58, 26, '_menu_item_object', 'custom'),
(59, 26, '_menu_item_target', ''),
(60, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(61, 26, '_menu_item_xfn', ''),
(62, 26, '_menu_item_url', '#'),
(95, 30, '_menu_item_target', ''),
(64, 27, '_menu_item_type', 'post_type'),
(65, 27, '_menu_item_menu_item_parent', '0'),
(66, 27, '_menu_item_object_id', '19'),
(67, 27, '_menu_item_object', 'page'),
(68, 27, '_menu_item_target', ''),
(69, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(70, 27, '_menu_item_xfn', ''),
(71, 27, '_menu_item_url', ''),
(97, 30, '_menu_item_xfn', ''),
(73, 28, '_menu_item_type', 'post_type'),
(74, 28, '_menu_item_menu_item_parent', '0'),
(75, 28, '_menu_item_object_id', '17'),
(76, 28, '_menu_item_object', 'page'),
(77, 28, '_menu_item_target', ''),
(78, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(79, 28, '_menu_item_xfn', ''),
(80, 28, '_menu_item_url', ''),
(82, 29, '_menu_item_type', 'post_type'),
(83, 29, '_menu_item_menu_item_parent', '0'),
(84, 29, '_menu_item_object_id', '14'),
(85, 29, '_menu_item_object', 'page'),
(86, 29, '_menu_item_target', ''),
(87, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(88, 29, '_menu_item_xfn', ''),
(89, 29, '_menu_item_url', ''),
(96, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(98, 30, '_menu_item_url', '#'),
(100, 31, '_edit_last', '1'),
(101, 31, '_edit_lock', '1502178721:1'),
(102, 33, '_edit_last', '1'),
(103, 33, '_edit_lock', '1502178643:1'),
(104, 35, '_edit_last', '1'),
(105, 35, '_edit_lock', '1502178622:1'),
(106, 37, '_edit_last', '1'),
(107, 37, '_edit_lock', '1502179965:1'),
(108, 39, '_edit_last', '1'),
(109, 39, '_edit_lock', '1502179555:1'),
(110, 41, '_edit_last', '1'),
(111, 41, '_edit_lock', '1502178698:1'),
(112, 43, '_menu_item_type', 'post_type'),
(113, 43, '_menu_item_menu_item_parent', '0'),
(114, 43, '_menu_item_object_id', '41'),
(115, 43, '_menu_item_object', 'page'),
(116, 43, '_menu_item_target', ''),
(117, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(118, 43, '_menu_item_xfn', ''),
(119, 43, '_menu_item_url', ''),
(121, 44, '_menu_item_type', 'post_type'),
(122, 44, '_menu_item_menu_item_parent', '0'),
(123, 44, '_menu_item_object_id', '39'),
(124, 44, '_menu_item_object', 'page'),
(125, 44, '_menu_item_target', ''),
(126, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(127, 44, '_menu_item_xfn', ''),
(128, 44, '_menu_item_url', ''),
(130, 45, '_menu_item_type', 'post_type'),
(131, 45, '_menu_item_menu_item_parent', '0'),
(132, 45, '_menu_item_object_id', '37'),
(133, 45, '_menu_item_object', 'page'),
(134, 45, '_menu_item_target', ''),
(135, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(136, 45, '_menu_item_xfn', ''),
(137, 45, '_menu_item_url', ''),
(139, 46, '_menu_item_type', 'post_type'),
(140, 46, '_menu_item_menu_item_parent', '0'),
(141, 46, '_menu_item_object_id', '35'),
(142, 46, '_menu_item_object', 'page'),
(143, 46, '_menu_item_target', ''),
(144, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(145, 46, '_menu_item_xfn', ''),
(146, 46, '_menu_item_url', ''),
(167, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:173;s:4:"file";s:24:"2017/08/bus3-250x173.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"bus3-250x173-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(148, 47, '_menu_item_type', 'post_type'),
(149, 47, '_menu_item_menu_item_parent', '0'),
(150, 47, '_menu_item_object_id', '33'),
(151, 47, '_menu_item_object', 'page'),
(152, 47, '_menu_item_target', ''),
(153, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(154, 47, '_menu_item_xfn', ''),
(155, 47, '_menu_item_url', ''),
(157, 48, '_menu_item_type', 'post_type'),
(158, 48, '_menu_item_menu_item_parent', '0'),
(159, 48, '_menu_item_object_id', '31'),
(160, 48, '_menu_item_object', 'page'),
(161, 48, '_menu_item_target', ''),
(162, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(163, 48, '_menu_item_xfn', ''),
(164, 48, '_menu_item_url', ''),
(166, 49, '_wp_attached_file', '2017/08/bus3-250x173.png'),
(168, 50, '_wp_attached_file', '2017/08/bus-big-250x173.png'),
(169, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:173;s:4:"file";s:27:"2017/08/bus-big-250x173.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"bus-big-250x173-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(170, 51, '_wp_attached_file', '2017/08/limo2-250x173.png'),
(171, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:173;s:4:"file";s:25:"2017/08/limo2-250x173.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"limo2-250x173-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(172, 52, '_wp_attached_file', '2017/08/predst2-250x173.png'),
(173, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:173;s:4:"file";s:27:"2017/08/predst2-250x173.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"predst2-250x173-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(174, 53, '_wp_attached_file', '2017/08/svadebnie2-250x173.png'),
(175, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:173;s:4:"file";s:30:"2017/08/svadebnie2-250x173.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"svadebnie2-250x173-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(176, 54, '_wp_attached_file', '2017/08/vned2-250x173.png'),
(177, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:173;s:4:"file";s:25:"2017/08/vned2-250x173.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"vned2-250x173-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(178, 35, '_thumbnail_id', '53'),
(179, 33, '_thumbnail_id', '50'),
(180, 41, '_thumbnail_id', '51'),
(181, 31, '_thumbnail_id', '49'),
(182, 39, '_thumbnail_id', '52'),
(183, 54, '_wp_attachment_image_alt', '4'),
(184, 37, '_thumbnail_id', '54');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-08-01 17:14:08', '2017-08-01 14:14:08', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2017-08-01 17:14:08', '2017-08-01 14:14:08', '', 0, 'http://bus.local/?p=1', 0, 'post', '', 1),
(2, 1, '2017-08-01 17:14:08', '2017-08-01 14:14:08', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://bus.local/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2017-08-03 17:39:26', '2017-08-03 14:39:26', '', 0, 'http://bus.local/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-08-03 17:39:26', '2017-08-03 14:39:26', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://bus.local/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-08-03 17:39:26', '2017-08-03 14:39:26', '', 2, 'http://bus.local/2017/08/03/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2017-08-03 17:39:43', '2017-08-03 14:39:43', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'main', '', '', '2017-08-03 17:39:59', '2017-08-03 14:39:59', '', 0, 'http://bus.local/?page_id=5', 0, 'page', '', 0),
(6, 1, '2017-08-03 17:39:43', '2017-08-03 14:39:43', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-08-03 17:39:43', '2017-08-03 14:39:43', '', 5, 'http://bus.local/2017/08/03/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2017-08-03 17:40:35', '2017-08-03 14:40:35', '', 'О нас', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2017-08-03 17:40:35', '2017-08-03 14:40:35', '', 0, 'http://bus.local/?page_id=7', 0, 'page', '', 0),
(8, 1, '2017-08-03 17:40:21', '2017-08-03 14:40:21', '', 'О нас', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-08-03 17:40:21', '2017-08-03 14:40:21', '', 7, 'http://bus.local/2017/08/03/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-08-03 17:42:17', '2017-08-03 14:42:17', '', 'Акции', '', 'publish', 'closed', 'closed', '', 'sell-off', '', '', '2017-08-03 17:42:17', '2017-08-03 14:42:17', '', 0, 'http://bus.local/?page_id=9', 0, 'page', '', 0),
(10, 1, '2017-08-03 17:42:00', '2017-08-03 14:42:00', '', 'Акции', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-08-03 17:42:00', '2017-08-03 14:42:00', '', 9, 'http://bus.local/2017/08/03/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2017-08-03 17:46:08', '2017-08-03 14:46:08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel sem eleifend leo rhoncus varius. Proin dictum sem sem, in sagittis sem pulvinar non. Suspendisse rutrum ornare neque at commodo. Proin aliquet ac dui eu gravida. Curabitur imperdiet porttitor lacus, nec convallis sapien posuere a. Quisque arcu nisi, lobortis id vulputate nec, aliquam sit amet orci. Praesent consequat tristique lacus at vehicula. Donec a luctus odio.', 'Трансфер', '', 'publish', 'closed', 'closed', '', 'lift', '', '', '2017-08-03 17:46:08', '2017-08-03 14:46:08', '', 0, 'http://bus.local/?page_id=11', 0, 'page', '', 0),
(12, 1, '2017-08-03 17:44:26', '2017-08-03 14:44:26', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel sem eleifend leo rhoncus varius. Proin dictum sem sem, in sagittis sem pulvinar non. Suspendisse rutrum ornare neque at commodo. Proin aliquet ac dui eu gravida. Curabitur imperdiet porttitor lacus, nec convallis sapien posuere a. Quisque arcu nisi, lobortis id vulputate nec, aliquam sit amet orci. Praesent consequat tristique lacus at vehicula. Donec a luctus odio.', 'Трансфер', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-08-03 17:44:26', '2017-08-03 14:44:26', '', 11, 'http://bus.local/2017/08/03/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2017-08-03 17:46:28', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-08-03 17:46:28', '0000-00-00 00:00:00', '', 0, 'http://bus.local/?page_id=13', 0, 'page', '', 0),
(14, 1, '2017-08-04 09:59:57', '2017-08-04 06:59:57', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur maximus nulla vel felis auctor aliquet. In eget maximus ipsum. Proin lacinia erat efficitur dui tempor rhoncus. Nam ac pulvinar sapien. In id risus viverra, efficitur risus et, accumsan ex. Sed nec odio sed dui tincidunt euismod sit amet at justo. Phasellus consequat, dui nec lacinia suscipit, sem enim interdum quam, non dictum sem orci ut neque.\r\n\r\nFusce dignissim ac ante non convallis. Etiam in est vel velit porta ornare non et dolor. Morbi fringilla sit amet neque a mollis. In hac habitasse platea dictumst. Donec ac accumsan enim. Maecenas ut condimentum ex, id porta turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis sed dui lacinia, posuere libero porttitor, ullamcorper elit. Donec eu nisi non orci ultrices bibendum. Suspendisse potenti. Aliquam ultrices ultrices augue in dignissim. Suspendisse id nulla aliquet, lobortis magna non, sollicitudin est. Aenean ut interdum massa, eu mollis ipsum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent non tellus sed turpis luctus lacinia. Pellentesque purus augue, finibus sit amet nisl ac, suscipit bibendum enim.', 'Статьи', '', 'publish', 'closed', 'closed', '', 'articles', '', '', '2017-08-04 10:01:08', '2017-08-04 07:01:08', '', 0, 'http://bus.local/?page_id=14', 0, 'page', '', 0),
(15, 1, '2017-08-04 09:59:57', '2017-08-04 06:59:57', '', 'Статьи', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2017-08-04 09:59:57', '2017-08-04 06:59:57', '', 14, 'http://bus.local/2017/08/04/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2017-08-04 10:01:08', '2017-08-04 07:01:08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur maximus nulla vel felis auctor aliquet. In eget maximus ipsum. Proin lacinia erat efficitur dui tempor rhoncus. Nam ac pulvinar sapien. In id risus viverra, efficitur risus et, accumsan ex. Sed nec odio sed dui tincidunt euismod sit amet at justo. Phasellus consequat, dui nec lacinia suscipit, sem enim interdum quam, non dictum sem orci ut neque.\r\n\r\nFusce dignissim ac ante non convallis. Etiam in est vel velit porta ornare non et dolor. Morbi fringilla sit amet neque a mollis. In hac habitasse platea dictumst. Donec ac accumsan enim. Maecenas ut condimentum ex, id porta turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis sed dui lacinia, posuere libero porttitor, ullamcorper elit. Donec eu nisi non orci ultrices bibendum. Suspendisse potenti. Aliquam ultrices ultrices augue in dignissim. Suspendisse id nulla aliquet, lobortis magna non, sollicitudin est. Aenean ut interdum massa, eu mollis ipsum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent non tellus sed turpis luctus lacinia. Pellentesque purus augue, finibus sit amet nisl ac, suscipit bibendum enim.', 'Статьи', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2017-08-04 10:01:08', '2017-08-04 07:01:08', '', 14, 'http://bus.local/2017/08/04/14-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2017-08-04 10:02:34', '2017-08-04 07:02:34', '', 'Отзывы', '', 'publish', 'closed', 'closed', '', 'testimonials', '', '', '2017-08-04 10:02:34', '2017-08-04 07:02:34', '', 0, 'http://bus.local/?page_id=17', 0, 'page', '', 0),
(18, 1, '2017-08-04 10:02:34', '2017-08-04 07:02:34', '', 'Отзывы', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2017-08-04 10:02:34', '2017-08-04 07:02:34', '', 17, 'http://bus.local/2017/08/04/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2017-08-04 10:03:01', '2017-08-04 07:03:01', 'Aenean dignissim quis ante eu tristique. Suspendisse ornare ante at diam euismod sollicitudin. Aliquam tristique ligula sed tellus suscipit, feugiat ullamcorper elit euismod. Curabitur rutrum lobortis dolor, a tincidunt purus luctus vitae. Nulla in dolor eu tellus tincidunt posuere eget nec eros. Aliquam ex purus, pretium eu fringilla ac, scelerisque sed odio. Morbi consequat, mauris eget iaculis porttitor, tortor massa commodo orci, ut pulvinar ante dui vitae mauris. Duis eu pellentesque nisl. Vestibulum odio elit, condimentum sit amet dignissim quis, efficitur ac ligula. Nam euismod, massa sit amet pellentesque malesuada, risus augue sollicitudin erat, rhoncus fringilla ligula tellus et metus. In nulla felis, convallis ac ante sit amet, pretium pulvinar tellus. Pellentesque interdum lobortis mi, non faucibus turpis tincidunt ac. Fusce non mauris vehicula, blandit arcu vel, tempor arcu.', 'Контакты', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2017-08-04 10:03:24', '2017-08-04 07:03:24', '', 0, 'http://bus.local/?page_id=19', 0, 'page', '', 0),
(20, 1, '2017-08-04 10:03:01', '2017-08-04 07:03:01', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2017-08-04 10:03:01', '2017-08-04 07:03:01', '', 19, 'http://bus.local/2017/08/04/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2017-08-04 10:03:24', '2017-08-04 07:03:24', 'Aenean dignissim quis ante eu tristique. Suspendisse ornare ante at diam euismod sollicitudin. Aliquam tristique ligula sed tellus suscipit, feugiat ullamcorper elit euismod. Curabitur rutrum lobortis dolor, a tincidunt purus luctus vitae. Nulla in dolor eu tellus tincidunt posuere eget nec eros. Aliquam ex purus, pretium eu fringilla ac, scelerisque sed odio. Morbi consequat, mauris eget iaculis porttitor, tortor massa commodo orci, ut pulvinar ante dui vitae mauris. Duis eu pellentesque nisl. Vestibulum odio elit, condimentum sit amet dignissim quis, efficitur ac ligula. Nam euismod, massa sit amet pellentesque malesuada, risus augue sollicitudin erat, rhoncus fringilla ligula tellus et metus. In nulla felis, convallis ac ante sit amet, pretium pulvinar tellus. Pellentesque interdum lobortis mi, non faucibus turpis tincidunt ac. Fusce non mauris vehicula, blandit arcu vel, tempor arcu.', 'Контакты', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2017-08-04 10:03:24', '2017-08-04 07:03:24', '', 19, 'http://bus.local/2017/08/04/19-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2017-08-04 10:05:50', '2017-08-04 07:05:50', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2017-08-07 17:44:38', '2017-08-07 14:44:38', '', 0, 'http://bus.local/?p=22', 4, 'nav_menu_item', '', 0),
(23, 1, '2017-08-04 10:05:52', '2017-08-04 07:05:52', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2017-08-07 17:44:38', '2017-08-07 14:44:38', '', 0, 'http://bus.local/?p=23', 3, 'nav_menu_item', '', 0),
(24, 1, '2017-08-04 10:05:53', '2017-08-04 07:05:53', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2017-08-07 17:44:38', '2017-08-07 14:44:38', '', 0, 'http://bus.local/?p=24', 2, 'nav_menu_item', '', 0),
(25, 1, '2017-08-04 10:05:54', '2017-08-04 07:05:54', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2017-08-07 17:44:37', '2017-08-07 14:44:37', '', 0, 'http://bus.local/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2017-08-04 10:05:49', '2017-08-04 07:05:49', '', 'Аренда авто', '', 'publish', 'closed', 'closed', '', '%d0%b0%d1%80%d0%b5%d0%bd%d0%b4%d0%b0-%d0%b0%d0%b2%d1%82%d0%be', '', '', '2017-08-07 17:44:39', '2017-08-07 14:44:39', '', 0, 'http://bus.local/?p=26', 5, 'nav_menu_item', '', 0),
(27, 1, '2017-08-04 10:05:45', '2017-08-04 07:05:45', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2017-08-07 17:44:40', '2017-08-07 14:44:40', '', 0, 'http://bus.local/?p=27', 8, 'nav_menu_item', '', 0),
(28, 1, '2017-08-04 10:05:47', '2017-08-04 07:05:47', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2017-08-07 17:44:39', '2017-08-07 14:44:39', '', 0, 'http://bus.local/?p=28', 7, 'nav_menu_item', '', 0),
(29, 1, '2017-08-04 10:05:48', '2017-08-04 07:05:48', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2017-08-07 17:44:39', '2017-08-07 14:44:39', '', 0, 'http://bus.local/?p=29', 6, 'nav_menu_item', '', 0),
(30, 1, '2017-08-07 15:15:43', '2017-08-07 12:15:43', '', 'Сделать заказ', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%b4%d0%b5%d0%bb%d0%b0%d1%82%d1%8c-%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7', '', '', '2017-08-07 17:44:40', '2017-08-07 14:44:40', '', 0, 'http://bus.local/?p=30', 9, 'nav_menu_item', '', 0),
(31, 1, '2017-08-07 17:46:30', '2017-08-07 14:46:30', 'Nulla lacinia imperdiet nisi, quis consectetur urna euismod nec. Aenean et augue diam. Vivamus id ex laoreet, placerat eros at, placerat nisi. Integer quam leo, scelerisque sed libero a, facilisis volutpat dui. Suspendisse potenti. Proin et euismod massa. Praesent eget eros vehicula orci iaculis tincidunt eget in libero.', 'Микроавтобусы', '', 'publish', 'closed', 'closed', '', 'van', '', '', '2017-08-08 10:54:17', '2017-08-08 07:54:17', '', 0, 'http://bus.local/?page_id=31', 0, 'page', '', 0),
(33, 1, '2017-08-07 17:47:02', '2017-08-07 14:47:02', 'Phasellus tellus arcu, tempor eu mattis et, lacinia nec nisi. Vestibulum sodales molestie felis, eget maximus justo euismod id. Duis gravida quis ligula nec egestas. Morbi ligula risus, tempor sit amet tincidunt eget, condimentum in nulla. Fusce at mi ullamcorper, pellentesque libero in, aliquet nunc. Vestibulum ornare purus vitae quam posuere fermentum. Nulla ac velit condimentum, bibendum mi ac, tincidunt purus. Etiam sit amet est blandit, luctus purus ac, imperdiet odio. In eu blandit libero.', 'Автобусы', '', 'publish', 'closed', 'closed', '', 'bus', '', '', '2017-08-08 10:53:00', '2017-08-08 07:53:00', '', 0, 'http://bus.local/?page_id=33', 0, 'page', '', 0),
(32, 1, '2017-08-07 17:46:30', '2017-08-07 14:46:30', 'Nulla lacinia imperdiet nisi, quis consectetur urna euismod nec. Aenean et augue diam. Vivamus id ex laoreet, placerat eros at, placerat nisi. Integer quam leo, scelerisque sed libero a, facilisis volutpat dui. Suspendisse potenti. Proin et euismod massa. Praesent eget eros vehicula orci iaculis tincidunt eget in libero.', 'Микроавтобусы', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2017-08-07 17:46:30', '2017-08-07 14:46:30', '', 31, 'http://bus.local/2017/08/07/31-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2017-08-07 17:47:40', '2017-08-07 14:47:40', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tincidunt faucibus felis, at gravida mi commodo et. Pellentesque faucibus augue eget erat fermentum maximus. Interdum et malesuada fames ac ante ipsum primis in faucibus. In hac habitasse platea dictumst. Sed malesuada vehicula facilisis. Mauris id tortor at ipsum faucibus dictum. Nunc nec risus id tellus vehicula vestibulum. Nam vitae lacus non magna varius viverra sed in lorem. Mauris eget ex nec diam bibendum mollis. Vivamus ultricies sapien tincidunt, lobortis magna vel, lacinia lectus. Quisque eget ipsum hendrerit, tempus nisi ac, rutrum leo. Pellentesque vel varius orci.', 'Авто на свадьбу', '', 'publish', 'closed', 'closed', '', 'wedding', '', '', '2017-08-08 10:52:40', '2017-08-08 07:52:40', '', 0, 'http://bus.local/?page_id=35', 0, 'page', '', 0),
(34, 1, '2017-08-07 17:47:02', '2017-08-07 14:47:02', 'Phasellus tellus arcu, tempor eu mattis et, lacinia nec nisi. Vestibulum sodales molestie felis, eget maximus justo euismod id. Duis gravida quis ligula nec egestas. Morbi ligula risus, tempor sit amet tincidunt eget, condimentum in nulla. Fusce at mi ullamcorper, pellentesque libero in, aliquet nunc. Vestibulum ornare purus vitae quam posuere fermentum. Nulla ac velit condimentum, bibendum mi ac, tincidunt purus. Etiam sit amet est blandit, luctus purus ac, imperdiet odio. In eu blandit libero.', 'Автобусы', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2017-08-07 17:47:02', '2017-08-07 14:47:02', '', 33, 'http://bus.local/2017/08/07/33-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2017-08-07 17:48:38', '2017-08-07 14:48:38', 'Sed mollis nulla sapien, vel dictum ante feugiat et. Quisque ut lectus magna. Nullam facilisis, urna sed porta bibendum, nunc tortor posuere tellus, at consectetur felis tellus sit amet nisl. Nunc ut vestibulum felis, eu elementum dui. Mauris posuere neque mauris, sit amet feugiat magna lacinia ac. Sed quam ipsum, luctus sit amet tempus id, tristique eu dolor. Etiam quis augue pretium, aliquam dui vel, ornare sem. Proin dignissim eu libero sit amet egestas. Nulla volutpat semper nibh id bibendum. Duis magna orci, sagittis ac venenatis eu, convallis nec lectus.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus sit amet auctor dui. Nunc posuere dignissim ligula, in venenatis ipsum. Proin ac augue tempus arcu laoreet placerat feugiat id risus. Aliquam molestie semper sem, nec sodales odio auctor nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut vel ultrices magna.', 'Внедорожники', '', 'publish', 'closed', 'closed', '', 'suv', '', '', '2017-08-08 11:12:43', '2017-08-08 08:12:43', '', 0, 'http://bus.local/?page_id=37', 0, 'page', '', 0),
(36, 1, '2017-08-07 17:47:40', '2017-08-07 14:47:40', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tincidunt faucibus felis, at gravida mi commodo et. Pellentesque faucibus augue eget erat fermentum maximus. Interdum et malesuada fames ac ante ipsum primis in faucibus. In hac habitasse platea dictumst. Sed malesuada vehicula facilisis. Mauris id tortor at ipsum faucibus dictum. Nunc nec risus id tellus vehicula vestibulum. Nam vitae lacus non magna varius viverra sed in lorem. Mauris eget ex nec diam bibendum mollis. Vivamus ultricies sapien tincidunt, lobortis magna vel, lacinia lectus. Quisque eget ipsum hendrerit, tempus nisi ac, rutrum leo. Pellentesque vel varius orci.', 'Авто на свадьбу', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-08-07 17:47:40', '2017-08-07 14:47:40', '', 35, 'http://bus.local/2017/08/07/35-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2017-08-07 17:49:21', '2017-08-07 14:49:21', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus sit amet auctor dui. Nunc posuere dignissim ligula, in venenatis ipsum. Proin ac augue tempus arcu laoreet placerat feugiat id risus. Aliquam molestie semper sem, nec sodales odio auctor nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut vel ultrices magna.', 'Представительские', '', 'publish', 'closed', 'closed', '', 'premium', '', '', '2017-08-08 10:54:40', '2017-08-08 07:54:40', '', 0, 'http://bus.local/?page_id=39', 0, 'page', '', 0),
(38, 1, '2017-08-07 17:48:38', '2017-08-07 14:48:38', 'Sed mollis nulla sapien, vel dictum ante feugiat et. Quisque ut lectus magna. Nullam facilisis, urna sed porta bibendum, nunc tortor posuere tellus, at consectetur felis tellus sit amet nisl. Nunc ut vestibulum felis, eu elementum dui. Mauris posuere neque mauris, sit amet feugiat magna lacinia ac. Sed quam ipsum, luctus sit amet tempus id, tristique eu dolor. Etiam quis augue pretium, aliquam dui vel, ornare sem. Proin dignissim eu libero sit amet egestas. Nulla volutpat semper nibh id bibendum. Duis magna orci, sagittis ac venenatis eu, convallis nec lectus.\r\n\r\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus sit amet auctor dui. Nunc posuere dignissim ligula, in venenatis ipsum. Proin ac augue tempus arcu laoreet placerat feugiat id risus. Aliquam molestie semper sem, nec sodales odio auctor nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut vel ultrices magna.', 'Внедорожники', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-08-07 17:48:38', '2017-08-07 14:48:38', '', 37, 'http://bus.local/2017/08/07/37-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2017-08-07 17:50:45', '2017-08-07 14:50:45', 'Phasellus tellus arcu, tempor eu mattis et, lacinia nec nisi. Vestibulum sodales molestie felis, eget maximus justo euismod id. Duis gravida quis ligula nec egestas. Morbi ligula risus, tempor sit amet tincidunt eget, condimentum in nulla. Fusce at mi ullamcorper, pellentesque libero in, aliquet nunc. Vestibulum ornare purus vitae quam posuere fermentum. Nulla ac velit condimentum, bibendum mi ac, tincidunt purus. Etiam sit amet est blandit, luctus purus ac, imperdiet odio. In eu blandit libero.\r\n\r\nNulla lacinia imperdiet nisi, quis consectetur urna euismod nec. Aenean et augue diam. Vivamus id ex laoreet, placerat eros at, placerat nisi. Integer quam leo, scelerisque sed libero a, facilisis volutpat dui. Suspendisse potenti. Proin et euismod massa. Praesent eget eros vehicula orci iaculis tincidunt eget in libero.\r\n\r\nSed mollis nulla sapien, vel dictum ante feugiat et. Quisque ut lectus magna. Nullam facilisis, urna sed porta bibendum, nunc tortor posuere tellus, at consectetur felis tellus sit amet nisl. Nunc ut vestibulum felis, eu elementum dui. Mauris posuere neque mauris, sit amet feugiat magna lacinia ac. Sed quam ipsum, luctus sit amet tempus id, tristique eu dolor. Etiam quis augue pretium, aliquam dui vel, ornare sem. Proin dignissim eu libero sit amet egestas. Nulla volutpat semper nibh id bibendum. Duis magna orci, sagittis ac venenatis eu, convallis nec lectus.', 'Лимузины', '', 'publish', 'closed', 'closed', '', 'limo', '', '', '2017-08-08 10:53:56', '2017-08-08 07:53:56', '', 0, 'http://bus.local/?page_id=41', 0, 'page', '', 0),
(40, 1, '2017-08-07 17:49:21', '2017-08-07 14:49:21', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus sit amet auctor dui. Nunc posuere dignissim ligula, in venenatis ipsum. Proin ac augue tempus arcu laoreet placerat feugiat id risus. Aliquam molestie semper sem, nec sodales odio auctor nec. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut vel ultrices magna.', 'Представительские', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2017-08-07 17:49:21', '2017-08-07 14:49:21', '', 39, 'http://bus.local/2017/08/07/39-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2017-08-07 17:51:37', '2017-08-07 14:51:37', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2017-08-07 17:53:08', '2017-08-07 14:53:08', '', 0, 'http://bus.local/?p=43', 6, 'nav_menu_item', '', 0),
(42, 1, '2017-08-07 17:50:45', '2017-08-07 14:50:45', 'Phasellus tellus arcu, tempor eu mattis et, lacinia nec nisi. Vestibulum sodales molestie felis, eget maximus justo euismod id. Duis gravida quis ligula nec egestas. Morbi ligula risus, tempor sit amet tincidunt eget, condimentum in nulla. Fusce at mi ullamcorper, pellentesque libero in, aliquet nunc. Vestibulum ornare purus vitae quam posuere fermentum. Nulla ac velit condimentum, bibendum mi ac, tincidunt purus. Etiam sit amet est blandit, luctus purus ac, imperdiet odio. In eu blandit libero.\r\n\r\nNulla lacinia imperdiet nisi, quis consectetur urna euismod nec. Aenean et augue diam. Vivamus id ex laoreet, placerat eros at, placerat nisi. Integer quam leo, scelerisque sed libero a, facilisis volutpat dui. Suspendisse potenti. Proin et euismod massa. Praesent eget eros vehicula orci iaculis tincidunt eget in libero.\r\n\r\nSed mollis nulla sapien, vel dictum ante feugiat et. Quisque ut lectus magna. Nullam facilisis, urna sed porta bibendum, nunc tortor posuere tellus, at consectetur felis tellus sit amet nisl. Nunc ut vestibulum felis, eu elementum dui. Mauris posuere neque mauris, sit amet feugiat magna lacinia ac. Sed quam ipsum, luctus sit amet tempus id, tristique eu dolor. Etiam quis augue pretium, aliquam dui vel, ornare sem. Proin dignissim eu libero sit amet egestas. Nulla volutpat semper nibh id bibendum. Duis magna orci, sagittis ac venenatis eu, convallis nec lectus.', 'Лимузины', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-08-07 17:50:45', '2017-08-07 14:50:45', '', 41, 'http://bus.local/2017/08/07/41-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2017-08-07 17:51:38', '2017-08-07 14:51:38', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2017-08-07 17:53:08', '2017-08-07 14:53:08', '', 0, 'http://bus.local/?p=44', 5, 'nav_menu_item', '', 0),
(45, 1, '2017-08-07 17:51:39', '2017-08-07 14:51:39', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2017-08-07 17:53:08', '2017-08-07 14:53:08', '', 0, 'http://bus.local/?p=45', 4, 'nav_menu_item', '', 0),
(46, 1, '2017-08-07 17:51:40', '2017-08-07 14:51:40', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2017-08-07 17:53:07', '2017-08-07 14:53:07', '', 0, 'http://bus.local/?p=46', 3, 'nav_menu_item', '', 0),
(47, 1, '2017-08-07 17:51:41', '2017-08-07 14:51:41', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2017-08-07 17:53:07', '2017-08-07 14:53:07', '', 0, 'http://bus.local/?p=47', 2, 'nav_menu_item', '', 0),
(48, 1, '2017-08-07 17:51:43', '2017-08-07 14:51:43', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2017-08-07 17:53:06', '2017-08-07 14:53:06', '', 0, 'http://bus.local/?p=48', 1, 'nav_menu_item', '', 0),
(49, 1, '2017-08-08 10:52:15', '2017-08-08 07:52:15', '', 'bus3-250x173', '', 'inherit', 'open', 'closed', '', 'bus3-250x173', '', '', '2017-08-08 10:52:15', '2017-08-08 07:52:15', '', 35, 'http://bus.local/wp-content/uploads/2017/08/bus3-250x173.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2017-08-08 10:52:18', '2017-08-08 07:52:18', '', 'bus-big-250x173', '', 'inherit', 'open', 'closed', '', 'bus-big-250x173', '', '', '2017-08-08 10:52:18', '2017-08-08 07:52:18', '', 35, 'http://bus.local/wp-content/uploads/2017/08/bus-big-250x173.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2017-08-08 10:52:21', '2017-08-08 07:52:21', '', 'limo2-250x173', '', 'inherit', 'open', 'closed', '', 'limo2-250x173', '', '', '2017-08-08 10:52:21', '2017-08-08 07:52:21', '', 35, 'http://bus.local/wp-content/uploads/2017/08/limo2-250x173.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2017-08-08 10:52:23', '2017-08-08 07:52:23', '', 'predst2-250x173', '', 'inherit', 'open', 'closed', '', 'predst2-250x173', '', '', '2017-08-08 10:52:23', '2017-08-08 07:52:23', '', 35, 'http://bus.local/wp-content/uploads/2017/08/predst2-250x173.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2017-08-08 10:52:25', '2017-08-08 07:52:25', '', 'svadebnie2-250x173', '', 'inherit', 'open', 'closed', '', 'svadebnie2-250x173', '', '', '2017-08-08 10:52:25', '2017-08-08 07:52:25', '', 35, 'http://bus.local/wp-content/uploads/2017/08/svadebnie2-250x173.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2017-08-08 10:52:28', '2017-08-08 07:52:28', '3', 'vned2-250x173', '4', 'inherit', 'open', 'closed', '', 'vned2-250x173', '', '', '2017-08-08 11:12:26', '2017-08-08 08:12:26', '', 35, 'http://bus.local/wp-content/uploads/2017/08/vned2-250x173.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Header Menu', 'header-menu', 0),
(3, 'Second Menu', 'second-menu', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(26, 2, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(25, 2, 0),
(30, 2, 0),
(43, 3, 0),
(44, 3, 0),
(45, 3, 0),
(46, 3, 0),
(47, 3, 0),
(48, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 9),
(3, 3, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '0'),
(15, 1, 'session_tokens', 'a:2:{s:64:"97111d090b00bb3daac7a85ca9a29736eaeb67d759effcec8e03d97b9aa1832c";a:4:{s:10:"expiration";i:1502806474;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.78 Safari/537.36";s:5:"login";i:1501596874;}s:64:"703fd7a8c916a97ac4c4c995b1211e6a5ae52b8ca8527965385e9f2de1770dd1";a:4:{s:10:"expiration";i:1501942962;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.78 Safari/537.36";s:5:"login";i:1501770162;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(18, 1, 'closedpostboxes_dashboard', 'a:2:{i:0;s:18:"dashboard_activity";i:1;s:17:"dashboard_primary";}'),
(19, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(22, 1, 'nav_menu_recently_edited', '3'),
(23, 1, 'wp_user-settings', 'libraryContent=browse'),
(24, 1, 'wp_user-settings-time', '1502178758');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BU1TT59Y7xoZYTEMNiMmTjdq6om.tP/', 'admin', 'timotheus@list.ru', '', '2017-08-01 14:14:05', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=209;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=185;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
