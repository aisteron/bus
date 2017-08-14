-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 14 2017 г., 18:10
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
) ENGINE=MyISAM AUTO_INCREMENT=259 DEFAULT CHARSET=utf8;

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
(29, 'rewrite_rules', 'a:108:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?type=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?type=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:37:"index.php?type=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?type=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:26:"index.php?type=$matches[1]";s:31:"car/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:"car/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:"car/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"car/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:"car/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:"car/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:20:"car/([^/]+)/embed/?$";s:36:"index.php?car=$matches[1]&embed=true";s:24:"car/([^/]+)/trackback/?$";s:30:"index.php?car=$matches[1]&tb=1";s:32:"car/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?car=$matches[1]&paged=$matches[2]";s:39:"car/([^/]+)/comment-page-([0-9]{1,})/?$";s:43:"index.php?car=$matches[1]&cpage=$matches[2]";s:28:"car/([^/]+)(?:/([0-9]+))?/?$";s:42:"index.php?car=$matches[1]&page=$matches[2]";s:20:"car/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:30:"car/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:50:"car/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:"car/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:"car/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:"car/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=5&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:31:"query-monitor/query-monitor.php";i:1;s:25:"car-plugin/car-plugin.php";i:2;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";}', 'yes'),
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
(53, 'show_on_front', 'page', 'yes'),
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
(66, 'image_default_link_type', '', 'yes'),
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
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"view_query_monitor";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
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
(108, 'cron', 'a:4:{i:1502763254;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1502807656;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1502807971;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1501598146;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(252, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.8.1.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.8.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.8.1";s:7:"version";s:5:"4.8.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.8.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.8.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.8.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.8.1-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.8.1-partial-0.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.8.1";s:7:"version";s:5:"4.8.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:3:"4.8";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.8.1.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.8.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.8.1";s:7:"version";s:5:"4.8.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1502720302;s:15:"version_checked";s:3:"4.8";s:12:"translations";a:0:{}}', 'no'),
(250, '_site_transient_timeout_theme_roots', '1502722097', 'no'),
(251, '_site_transient_theme_roots', 'a:4:{s:3:"bus";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(253, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1502720307;s:7:"checked";a:4:{s:3:"bus";s:0:"";s:13:"twentyfifteen";s:3:"1.8";s:15:"twentyseventeen";s:3:"1.3";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(222, 'widget_widget_sp_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
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
(158, '_transient_timeout_plugin_slugs', '1502788942', 'no'),
(159, '_transient_plugin_slugs', 'a:3:{i:0;s:31:"query-monitor/query-monitor.php";i:1;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:2;s:25:"car-plugin/car-plugin.php";}', 'no'),
(160, 'recently_activated', 'a:1:{s:29:"image-widget/image-widget.php";i:1502373150;}', 'yes'),
(132, 'current_theme', 'Bus', 'yes'),
(133, 'theme_mods_bus', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:11:"header-menu";i:2;s:11:"second-menu";i:3;}}', 'yes'),
(134, 'theme_switched', '', 'yes'),
(162, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(216, '_site_transient_timeout_available_translations', '1502378543', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(217, '_site_transient_available_translations', 'a:108:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-23 21:35:47";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-09 03:55:46";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.5/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-17 20:31:44";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:60:"https://downloads.wordpress.org/translation/core/4.8/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-18 19:16:01";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-04 16:58:43";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-16 11:47:56";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 08:46:26";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-14 13:21:24";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-14 23:24:44";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsæt";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 21:25:12";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 08:50:23";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.8/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-15 19:58:49";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:69:"https://downloads.wordpress.org/translation/core/4.8/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-08 16:08:42";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-21 18:05:57";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-17 08:09:19";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:53:43";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-23 16:48:27";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 05:14:35";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 07:18:00";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-27 10:36:23";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-16 17:22:41";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-20 00:55:30";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-07 00:53:01";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-28 20:09:49";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-18 10:53:33";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 16:37:11";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-21 08:00:44";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-09 15:50:45";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-08 18:25:22";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-23 06:47:57";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-07 13:48:37";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-05 17:58:06";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-17 20:40:15";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-07 12:07:46";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 13:33:29";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-16 17:29:16";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-19 08:19:39";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:39";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-12 12:20:50";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-13 13:55:54";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-04 13:01:37";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-25 11:16:15";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-12 09:20:11";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-16 18:44:50";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:60:"https://downloads.wordpress.org/translation/core/4.8/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-19 07:08:35";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:25";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-05 11:43:04";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-03-17 20:40:40";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-05 19:40:47";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-03-05 09:45:10";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.18";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.18/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-26 11:11:30";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-23 11:30:58";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-20 17:04:00";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-02-16 13:24:21";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7.5/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-18 18:26:58";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-08 13:05:53";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-02 13:47:38";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-19 13:38:04";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.18";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.18/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-23 10:24:37";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-13 23:57:05";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-15 10:32:19";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 13:54:09";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 09:02:13";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-08 15:29:14";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-24 08:35:30";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-08 11:06:53";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-18 17:49:44";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:43";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-19 13:54:12";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-05 09:23:39";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-01 22:52:09";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-02 09:17:00";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-13 09:55:38";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-15 11:24:18";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-16 05:48:05";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-05 10:14:12";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:45";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'no'),
(254, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1502720304;s:8:"response";a:0:{}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:21:"regenerate-thumbnails";s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"2.2.6";s:7:"updated";s:19:"2016-11-01 14:37:55";s:7:"package";s:88:"https://downloads.wordpress.org/translation/plugin/regenerate-thumbnails/2.2.6/ru_RU.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:2:{s:31:"query-monitor/query-monitor.php";O:8:"stdClass":6:{s:2:"id";s:27:"w.org/plugins/query-monitor";s:4:"slug";s:13:"query-monitor";s:6:"plugin";s:31:"query-monitor/query-monitor.php";s:11:"new_version";s:6:"2.13.4";s:3:"url";s:44:"https://wordpress.org/plugins/query-monitor/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/query-monitor.2.13.4.zip";}s:47:"regenerate-thumbnails/regenerate-thumbnails.php";O:8:"stdClass":6:{s:2:"id";s:35:"w.org/plugins/regenerate-thumbnails";s:4:"slug";s:21:"regenerate-thumbnails";s:6:"plugin";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:11:"new_version";s:5:"2.2.6";s:3:"url";s:52:"https://wordpress.org/plugins/regenerate-thumbnails/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip";}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM AUTO_INCREMENT=419 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_wp_trash_meta_status', 'publish'),
(3, 2, '_wp_trash_meta_time', '1501771165'),
(4, 2, '_wp_desired_post_slug', 'sample-page'),
(5, 5, '_edit_last', '1'),
(6, 5, '_edit_lock', '1502721323:1'),
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
(105, 35, '_edit_lock', '1502374180:1'),
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
(167, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:173;s:4:"file";s:24:"2017/08/bus3-250x173.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"bus3-250x173-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:7:"owl-273";a:4:{s:4:"file";s:24:"bus3-250x173-230x159.png";s:5:"width";i:230;s:6:"height";i:159;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
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
(169, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:173;s:4:"file";s:27:"2017/08/bus-big-250x173.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"bus-big-250x173-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:7:"owl-273";a:4:{s:4:"file";s:27:"bus-big-250x173-230x159.png";s:5:"width";i:230;s:6:"height";i:159;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(170, 51, '_wp_attached_file', '2017/08/limo2-250x173.png'),
(171, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:173;s:4:"file";s:25:"2017/08/limo2-250x173.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"limo2-250x173-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:7:"owl-273";a:4:{s:4:"file";s:25:"limo2-250x173-230x159.png";s:5:"width";i:230;s:6:"height";i:159;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(172, 52, '_wp_attached_file', '2017/08/predst2-250x173.png'),
(173, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:173;s:4:"file";s:27:"2017/08/predst2-250x173.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"predst2-250x173-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:7:"owl-273";a:4:{s:4:"file";s:27:"predst2-250x173-230x159.png";s:5:"width";i:230;s:6:"height";i:159;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(174, 53, '_wp_attached_file', '2017/08/svadebnie2-250x173.png'),
(175, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:173;s:4:"file";s:30:"2017/08/svadebnie2-250x173.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"svadebnie2-250x173-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:7:"owl-273";a:4:{s:4:"file";s:30:"svadebnie2-250x173-230x159.png";s:5:"width";i:230;s:6:"height";i:159;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(176, 54, '_wp_attached_file', '2017/08/vned2-250x173.png'),
(177, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:173;s:4:"file";s:25:"2017/08/vned2-250x173.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"vned2-250x173-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:7:"owl-273";a:4:{s:4:"file";s:25:"vned2-250x173-230x159.png";s:5:"width";i:230;s:6:"height";i:159;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(178, 35, '_thumbnail_id', '53'),
(179, 33, '_thumbnail_id', '50'),
(180, 41, '_thumbnail_id', '51'),
(181, 31, '_thumbnail_id', '49'),
(182, 39, '_thumbnail_id', '52'),
(183, 54, '_wp_attachment_image_alt', '4'),
(184, 37, '_thumbnail_id', '54'),
(185, 55, '_edit_last', '1'),
(186, 55, '_edit_lock', '1502457176:1'),
(187, 60, '_edit_last', '1'),
(188, 60, '_edit_lock', '1502357253:1'),
(189, 60, '_wp_trash_meta_status', 'publish'),
(190, 60, '_wp_trash_meta_time', '1502357556'),
(191, 60, '_wp_desired_post_slug', '60'),
(206, 73, '_edit_lock', '1502376724:1'),
(204, 1, '_edit_lock', '1502374294:1'),
(194, 62, '_edit_last', '1'),
(195, 62, '_edit_lock', '1502460449:1'),
(196, 63, '_edit_last', '1'),
(197, 63, '_edit_lock', '1502457231:1'),
(205, 73, '_edit_last', '1'),
(199, 64, '_edit_last', '1'),
(200, 64, '_edit_lock', '1502457251:1'),
(207, 73, '_wp_trash_meta_status', 'draft'),
(202, 64, 'price_до 3-х часов', '110 руб.'),
(203, 64, 'price_от 4-6 часов', '100 руб.'),
(208, 73, '_wp_trash_meta_time', '1502376872'),
(209, 73, '_wp_desired_post_slug', ''),
(242, 64, 'img_6', '49'),
(244, 63, 'img_-Infinity', '54'),
(241, 64, 'img_5', '53'),
(246, 63, 'price_от 4-6 часов', '1212'),
(247, 74, '_edit_last', '1'),
(248, 74, '_edit_lock', '1502460444:1'),
(249, 75, '_wp_attached_file', '2017/08/mercedes-benz_sprinter-315-pass__168335061f.jpg'),
(250, 75, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:480;s:4:"file";s:55:"2017/08/mercedes-benz_sprinter-315-pass__168335061f.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:55:"mercedes-benz_sprinter-315-pass__168335061f-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:55:"mercedes-benz_sprinter-315-pass__168335061f-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:55:"mercedes-benz_sprinter-315-pass__168335061f-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:8:"Ігор";s:6:"camera";s:0:"";s:7:"caption";s:127:"Белый Минивэн Mercedes-Benz Sprinter 315 пасс. (Мерседес Спринтер 315 пасс.) 2008 года.";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:12:"AUTO.RIA.com";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(252, 74, 'от', '34'),
(253, 74, 'кол-во мест', '17'),
(254, 74, '_thumbnail_id', '75'),
(255, 62, 'от', '33'),
(256, 62, 'кол-во мест', '14'),
(257, 78, '_wp_attached_file', '2017/08/mersedes-sprinter-v-obvese.jpg'),
(258, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1066;s:6:"height";i:800;s:4:"file";s:38:"2017/08/mersedes-sprinter-v-obvese.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"mersedes-sprinter-v-obvese-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"mersedes-sprinter-v-obvese-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:38:"mersedes-sprinter-v-obvese-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:39:"mersedes-sprinter-v-obvese-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:38:"mersedes-sprinter-v-obvese-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(259, 62, '_thumbnail_id', '78'),
(260, 80, '_edit_last', '1'),
(261, 80, '_edit_lock', '1502714049:1'),
(262, 81, '_wp_attached_file', '2017/08/221-salon.jpg'),
(263, 81, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:450;s:4:"file";s:21:"2017/08/221-salon.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"221-salon-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"221-salon-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:21:"221-salon-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(264, 82, '_wp_attached_file', '2017/08/akciya-221-600x450.jpg'),
(265, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:450;s:4:"file";s:30:"2017/08/akciya-221-600x450.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"akciya-221-600x450-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"akciya-221-600x450-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:30:"akciya-221-600x450-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(266, 83, '_wp_attached_file', '2017/08/image_19-1024x687.jpg'),
(267, 83, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:687;s:4:"file";s:29:"2017/08/image_19-1024x687.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"image_19-1024x687-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"image_19-1024x687-300x201.jpg";s:5:"width";i:300;s:6:"height";i:201;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:29:"image_19-1024x687-768x515.jpg";s:5:"width";i:768;s:6:"height";i:515;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:30:"image_19-1024x687-1024x687.jpg";s:5:"width";i:1024;s:6:"height";i:687;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:29:"image_19-1024x687-230x154.jpg";s:5:"width";i:230;s:6:"height";i:154;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(268, 84, '_wp_attached_file', '2017/08/s-221-chernyj-minsk-1024x764.jpg'),
(269, 84, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:764;s:4:"file";s:40:"2017/08/s-221-chernyj-minsk-1024x764.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"s-221-chernyj-minsk-1024x764-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:40:"s-221-chernyj-minsk-1024x764-300x224.jpg";s:5:"width";i:300;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:40:"s-221-chernyj-minsk-1024x764-768x573.jpg";s:5:"width";i:768;s:6:"height";i:573;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:41:"s-221-chernyj-minsk-1024x764-1024x764.jpg";s:5:"width";i:1024;s:6:"height";i:764;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:40:"s-221-chernyj-minsk-1024x764-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(270, 80, '_thumbnail_id', '82'),
(287, 80, 'img_1', '83'),
(286, 80, 'img_0', '84'),
(288, 80, 'img_2', '81'),
(289, 80, 'от', '36'),
(290, 85, '_edit_last', '1'),
(291, 85, '_edit_lock', '1502714045:1'),
(292, 86, '_wp_attached_file', '2017/08/20072012976-1024x768.jpg'),
(293, 86, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:32:"2017/08/20072012976-1024x768.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"20072012976-1024x768-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:32:"20072012976-1024x768-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"20072012976-1024x768-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"20072012976-1024x768-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:32:"20072012976-1024x768-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.8";s:6:"credit";s:0:"";s:6:"camera";s:4:"5230";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1342803016";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"3.7";s:3:"iso";s:2:"60";s:13:"shutter_speed";s:5:"0.003";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(294, 87, '_wp_attached_file', '2017/08/image_5-e1493563597330-800x600.jpg'),
(295, 87, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:600;s:4:"file";s:42:"2017/08/image_5-e1493563597330-800x600.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"image_5-e1493563597330-800x600-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"image_5-e1493563597330-800x600-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:42:"image_5-e1493563597330-800x600-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:42:"image_5-e1493563597330-800x600-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(296, 88, '_wp_attached_file', '2017/08/image_13.jpg'),
(297, 88, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:604;s:6:"height";i:403;s:4:"file";s:20:"2017/08/image_13.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"image_13-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"image_13-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:20:"image_13-230x153.jpg";s:5:"width";i:230;s:6:"height";i:153;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(298, 89, '_wp_attached_file', '2017/08/image-14-05-15-07-14-1.jpg'),
(299, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:570;s:4:"file";s:34:"2017/08/image-14-05-15-07-14-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"image-14-05-15-07-14-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"image-14-05-15-07-14-1-300x214.jpg";s:5:"width";i:300;s:6:"height";i:214;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"image-14-05-15-07-14-1-768x547.jpg";s:5:"width";i:768;s:6:"height";i:547;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:34:"image-14-05-15-07-14-1-230x164.jpg";s:5:"width";i:230;s:6:"height";i:164;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1368472736";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(300, 85, 'от', '46'),
(301, 85, '_thumbnail_id', '87'),
(302, 85, 'img_0', '88'),
(303, 85, 'img_1', '89'),
(304, 85, 'img_2', '86'),
(305, 90, '_edit_last', '1'),
(306, 90, '_edit_lock', '1502714103:1'),
(307, 91, '_wp_attached_file', '2017/08/221salon.jpg'),
(308, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:360;s:4:"file";s:20:"2017/08/221salon.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"221salon-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"221salon-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:20:"221salon-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:21:"Canon EOS-1D Mark III";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1306846379";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"24";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:6:"0.0125";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(309, 92, '_wp_attached_file', '2017/08/221salon2.jpg'),
(310, 92, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:360;s:4:"file";s:21:"2017/08/221salon2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"221salon2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"221salon2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:21:"221salon2-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:21:"Canon EOS-1D Mark III";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1306847040";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"16";s:3:"iso";s:3:"320";s:13:"shutter_speed";s:15:"0.0166666666667";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(311, 93, '_wp_attached_file', '2017/08/image_2.jpg'),
(312, 93, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:400;s:4:"file";s:19:"2017/08/image_2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"image_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"image_2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:19:"image_2-230x153.jpg";s:5:"width";i:230;s:6:"height";i:153;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(313, 94, '_wp_attached_file', '2017/08/image-533x400.jpg'),
(314, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:533;s:6:"height";i:400;s:4:"file";s:25:"2017/08/image-533x400.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"image-533x400-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"image-533x400-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:25:"image-533x400-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(315, 90, 'от', '46'),
(316, 90, '_thumbnail_id', '94'),
(317, 90, 'img_0', '92'),
(318, 90, 'img_1', '93'),
(319, 90, 'img_2', '91'),
(320, 95, '_edit_last', '1'),
(321, 95, '_edit_lock', '1502715062:1'),
(322, 96, '_wp_attached_file', '2017/08/300c-salon-1024x637.jpg'),
(323, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:637;s:4:"file";s:31:"2017/08/300c-salon-1024x637.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"300c-salon-1024x637-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"300c-salon-1024x637-300x187.jpg";s:5:"width";i:300;s:6:"height";i:187;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"300c-salon-1024x637-768x478.jpg";s:5:"width";i:768;s:6:"height";i:478;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"300c-salon-1024x637-1024x637.jpg";s:5:"width";i:1024;s:6:"height";i:637;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:31:"300c-salon-1024x637-230x143.jpg";s:5:"width";i:230;s:6:"height";i:143;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(324, 97, '_wp_attached_file', '2017/08/300s-minsk-1024x764.jpg'),
(325, 97, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:764;s:4:"file";s:31:"2017/08/300s-minsk-1024x764.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"300s-minsk-1024x764-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"300s-minsk-1024x764-300x224.jpg";s:5:"width";i:300;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"300s-minsk-1024x764-768x573.jpg";s:5:"width";i:768;s:6:"height";i:573;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"300s-minsk-1024x764-1024x764.jpg";s:5:"width";i:1024;s:6:"height";i:764;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:31:"300s-minsk-1024x764-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(326, 98, '_wp_attached_file', '2017/08/300s-minsk-prokat-e1493564543245-706x530.jpg'),
(327, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:706;s:6:"height";i:530;s:4:"file";s:52:"2017/08/300s-minsk-prokat-e1493564543245-706x530.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:52:"300s-minsk-prokat-e1493564543245-706x530-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:52:"300s-minsk-prokat-e1493564543245-706x530-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:52:"300s-minsk-prokat-e1493564543245-706x530-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(328, 99, '_wp_attached_file', '2017/08/chernyj-300c-minsk-1024x765.jpg'),
(329, 99, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:765;s:4:"file";s:39:"2017/08/chernyj-300c-minsk-1024x765.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"chernyj-300c-minsk-1024x765-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:39:"chernyj-300c-minsk-1024x765-300x224.jpg";s:5:"width";i:300;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:39:"chernyj-300c-minsk-1024x765-768x574.jpg";s:5:"width";i:768;s:6:"height";i:574;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:40:"chernyj-300c-minsk-1024x765-1024x765.jpg";s:5:"width";i:1024;s:6:"height";i:765;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:39:"chernyj-300c-minsk-1024x765-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(330, 95, 'от', '36'),
(331, 95, '_thumbnail_id', '98'),
(332, 95, 'img_0', '99'),
(333, 95, 'img_1', '97'),
(334, 95, 'img_2', '96'),
(335, 100, '_edit_last', '1'),
(336, 100, '_edit_lock', '1502715425:1'),
(337, 101, '_wp_attached_file', '2017/08/1dsfrnhujk-l.jpg'),
(338, 101, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:650;s:6:"height";i:487;s:4:"file";s:24:"2017/08/1dsfrnhujk-l.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"1dsfrnhujk-l-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"1dsfrnhujk-l-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:24:"1dsfrnhujk-l-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(339, 102, '_wp_attached_file', '2017/08/300c-belyj-minsk-bus.by_.jpg1_.jpg'),
(340, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:650;s:6:"height";i:487;s:4:"file";s:42:"2017/08/300c-belyj-minsk-bus.by_.jpg1_.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"300c-belyj-minsk-bus.by_.jpg1_-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"300c-belyj-minsk-bus.by_.jpg1_-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:42:"300c-belyj-minsk-bus.by_.jpg1_-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(341, 103, '_wp_attached_file', '2017/08/300s-minsk-prokat-belyj-1024x768.jpg'),
(342, 103, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:44:"2017/08/300s-minsk-prokat-belyj-1024x768.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"300s-minsk-prokat-belyj-1024x768-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"300s-minsk-prokat-belyj-1024x768-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:44:"300s-minsk-prokat-belyj-1024x768-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:45:"300s-minsk-prokat-belyj-1024x768-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:44:"300s-minsk-prokat-belyj-1024x768-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(343, 104, '_wp_attached_file', '2017/08/dsc00069_resize1-1024x768.jpg'),
(344, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:37:"2017/08/dsc00069_resize1-1024x768.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"dsc00069_resize1-1024x768-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"dsc00069_resize1-1024x768-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:37:"dsc00069_resize1-1024x768-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:38:"dsc00069_resize1-1024x768-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:37:"dsc00069_resize1-1024x768-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.6";s:6:"credit";s:0:"";s:6:"camera";s:8:"DSC-W630";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1377103579";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"4.5";s:3:"iso";s:2:"80";s:13:"shutter_speed";s:5:"0.008";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(345, 100, '_thumbnail_id', '103'),
(346, 100, 'img_0', '104'),
(347, 100, 'img_1', '102'),
(348, 100, 'img_2', '101'),
(349, 100, 'от', '36'),
(350, 105, '_edit_last', '1'),
(351, 105, '_edit_lock', '1502715823:1'),
(352, 106, '_wp_attached_file', '2017/08/300c-1024x768.jpg'),
(353, 106, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:25:"2017/08/300c-1024x768.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"300c-1024x768-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"300c-1024x768-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"300c-1024x768-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"300c-1024x768-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:25:"300c-1024x768-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"8";s:6:"credit";s:0:"";s:6:"camera";s:8:"DSC-W630";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1377180325";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"4.5";s:3:"iso";s:2:"80";s:13:"shutter_speed";s:6:"0.0025";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(354, 107, '_wp_attached_file', '2017/08/300-c-svadba.jpg'),
(355, 107, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:301;s:4:"file";s:24:"2017/08/300-c-svadba.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"300-c-svadba-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"300-c-svadba-300x181.jpg";s:5:"width";i:300;s:6:"height";i:181;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:24:"300-c-svadba-230x138.jpg";s:5:"width";i:230;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(356, 108, '_wp_attached_file', '2017/08/dsc00065_resize-768x1024.jpg'),
(357, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:768;s:6:"height";i:1024;s:4:"file";s:36:"2017/08/dsc00065_resize-768x1024.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"dsc00065_resize-768x1024-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"dsc00065_resize-768x1024-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:37:"dsc00065_resize-768x1024-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:37:"dsc00065_resize-768x1024-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:36:"dsc00065_resize-768x1024-130x173.jpg";s:5:"width";i:130;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.6";s:6:"credit";s:0:"";s:6:"camera";s:8:"DSC-W630";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1377103513";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"4.5";s:3:"iso";s:2:"80";s:13:"shutter_speed";s:4:"0.01";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(358, 105, 'img_0', '108'),
(359, 105, 'img_1', '106'),
(360, 105, 'от', '40'),
(361, 105, '_thumbnail_id', '109'),
(362, 109, '_wp_attached_file', '2017/08/032.jpg'),
(363, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:467;s:4:"file";s:15:"2017/08/032.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"032-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"032-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:15:"032-230x153.jpg";s:5:"width";i:230;s:6:"height";i:153;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(364, 110, '_edit_last', '1'),
(365, 110, '_edit_lock', '1502720155:1'),
(366, 110, 'от', '70'),
(367, 111, '_wp_attached_file', '2017/08/autobus-1.jpg'),
(368, 111, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:834;s:6:"height";i:500;s:4:"file";s:21:"2017/08/autobus-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"autobus-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"autobus-1-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"autobus-1-768x460.jpg";s:5:"width";i:768;s:6:"height";i:460;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:21:"autobus-1-230x138.jpg";s:5:"width";i:230;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(369, 112, '_wp_attached_file', '2017/08/autobus-2.jpg'),
(370, 112, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:834;s:6:"height";i:500;s:4:"file";s:21:"2017/08/autobus-2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"autobus-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"autobus-2-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"autobus-2-768x460.jpg";s:5:"width";i:768;s:6:"height";i:460;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:21:"autobus-2-230x138.jpg";s:5:"width";i:230;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(371, 113, '_wp_attached_file', '2017/08/autobus-3.jpg'),
(372, 113, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:834;s:6:"height";i:500;s:4:"file";s:21:"2017/08/autobus-3.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"autobus-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"autobus-3-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"autobus-3-768x460.jpg";s:5:"width";i:768;s:6:"height";i:460;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:21:"autobus-3-230x138.jpg";s:5:"width";i:230;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(373, 114, '_wp_attached_file', '2017/08/autobus-4.jpg'),
(374, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:834;s:6:"height";i:500;s:4:"file";s:21:"2017/08/autobus-4.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"autobus-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"autobus-4-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"autobus-4-768x460.jpg";s:5:"width";i:768;s:6:"height";i:460;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:21:"autobus-4-230x138.jpg";s:5:"width";i:230;s:6:"height";i:138;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(375, 110, 'кол-во мест', '49-53'),
(376, 110, '_thumbnail_id', '125'),
(377, 110, 'img_0', '113'),
(378, 110, 'img_1', '111'),
(379, 110, 'img_2', '112'),
(380, 115, '_edit_last', '1'),
(381, 115, '_edit_lock', '1502719263:1'),
(382, 115, 'от', '70'),
(383, 115, 'кол-во мест', '49-53'),
(384, 116, '_wp_attached_file', '2017/08/autobus-5-1024x768.jpg'),
(385, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:30:"2017/08/autobus-5-1024x768.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"autobus-5-1024x768-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"autobus-5-1024x768-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"autobus-5-1024x768-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"autobus-5-1024x768-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:30:"autobus-5-1024x768-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(386, 117, '_wp_attached_file', '2017/08/autobus-6-1024x768.jpg'),
(387, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:30:"2017/08/autobus-6-1024x768.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"autobus-6-1024x768-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"autobus-6-1024x768-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"autobus-6-1024x768-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"autobus-6-1024x768-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:30:"autobus-6-1024x768-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(388, 118, '_wp_attached_file', '2017/08/autobus-7-1024x768.jpg'),
(389, 118, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:30:"2017/08/autobus-7-1024x768.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"autobus-7-1024x768-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"autobus-7-1024x768-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"autobus-7-1024x768-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"autobus-7-1024x768-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:30:"autobus-7-1024x768-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(390, 115, 'img_0', '118'),
(391, 115, 'img_1', '117'),
(392, 115, 'img_2', '116'),
(393, 115, '_thumbnail_id', '124'),
(394, 119, '_edit_last', '1'),
(395, 119, '_edit_lock', '1502719166:1'),
(396, 120, '_wp_attached_file', '2017/08/photo_2017-05-02_15-35-55-2-1024x768.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(397, 120, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:48:"2017/08/photo_2017-05-02_15-35-55-2-1024x768.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"photo_2017-05-02_15-35-55-2-1024x768-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"photo_2017-05-02_15-35-55-2-1024x768-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:48:"photo_2017-05-02_15-35-55-2-1024x768-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:49:"photo_2017-05-02_15-35-55-2-1024x768-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:48:"photo_2017-05-02_15-35-55-2-1024x768-230x173.jpg";s:5:"width";i:230;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(398, 121, '_wp_attached_file', '2017/08/photo_2017-05-02_15-35-55-768x1024.jpg'),
(399, 121, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:768;s:6:"height";i:1024;s:4:"file";s:46:"2017/08/photo_2017-05-02_15-35-55-768x1024.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"photo_2017-05-02_15-35-55-768x1024-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:46:"photo_2017-05-02_15-35-55-768x1024-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:47:"photo_2017-05-02_15-35-55-768x1024-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:47:"photo_2017-05-02_15-35-55-768x1024-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:46:"photo_2017-05-02_15-35-55-768x1024-130x173.jpg";s:5:"width";i:130;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(400, 122, '_wp_attached_file', '2017/08/photo_2017-05-02_15-35-56-1024x1024.jpg'),
(401, 122, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:47:"2017/08/photo_2017-05-02_15-35-56-1024x1024.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:47:"photo_2017-05-02_15-35-56-1024x1024-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:47:"photo_2017-05-02_15-35-56-1024x1024-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:47:"photo_2017-05-02_15-35-56-1024x1024-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:7:"owl-273";a:4:{s:4:"file";s:47:"photo_2017-05-02_15-35-56-1024x1024-173x173.jpg";s:5:"width";i:173;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(402, 119, '_thumbnail_id', '123'),
(403, 119, 'от', '80'),
(404, 119, 'кол-во мест', '55'),
(405, 119, 'img_0', '121'),
(406, 119, 'img_1', '122'),
(407, 119, 'img_2', '120'),
(408, 123, '_wp_attached_file', '2017/08/230-173_0.jpg'),
(409, 123, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:230;s:6:"height";i:173;s:4:"file";s:21:"2017/08/230-173_0.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"230-173_0-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(410, 124, '_wp_attached_file', '2017/08/230-173_1.jpg'),
(411, 124, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:230;s:6:"height";i:173;s:4:"file";s:21:"2017/08/230-173_1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"230-173_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(412, 125, '_wp_attached_file', '2017/08/230-173_3.jpg'),
(413, 125, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:230;s:6:"height";i:173;s:4:"file";s:21:"2017/08/230-173_3.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"230-173_3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(414, 126, '_edit_last', '1'),
(415, 126, '_edit_lock', '1502720390:1'),
(416, 126, '_wp_trash_meta_status', 'publish'),
(417, 126, '_wp_trash_meta_time', '1502720556'),
(418, 126, '_wp_desired_post_slug', 'main-2');

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
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-08-01 17:14:08', '2017-08-01 14:14:08', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2017-08-01 17:14:08', '2017-08-01 14:14:08', '', 0, 'http://bus.local/?p=1', 0, 'post', '', 1),
(2, 1, '2017-08-01 17:14:08', '2017-08-01 14:14:08', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://bus.local/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2017-08-03 17:39:26', '2017-08-03 14:39:26', '', 0, 'http://bus.local/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-08-03 17:39:26', '2017-08-03 14:39:26', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href="http://bus.local/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-08-03 17:39:26', '2017-08-03 14:39:26', '', 2, 'http://bus.local/2017/08/03/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2017-08-03 17:39:43', '2017-08-03 14:39:43', '<div class="wpb_wrapper">\r\n<h2>Аренда и прокат микроавтобусов в Минске</h2>\r\nЗаказать микроавтобус у нас могут как предприниматели и руководители компаний и организаций, так и физические лица, в том числе дошкольные и школьные учреждения образования.\r\n\r\n<strong>Перечень услуг, которые включает в себя перевозки микроавтобусом:</strong>\r\n<ul>\r\n\r\n 	<li>Доставка до места работы и обратно 7 дней в неделю 24 часа.</li>\r\n 	<li>Транспортировка на железнодорожный вокзал или автовокзал, а также в аэропорт.</li>\r\n 	<li>Сопровождение в командировках (даже в других городах).</li>\r\n 	<li>Встреча деловых партнеров или гостей города.</li>\r\n 	<li>Выезд для проведения тимбилдинга и тренингов.</li>\r\n\r\n</ul>\r\n<a href="#">Доставка сотрудников на работу</a>\r\n<ol>и их развоз после корпоративов и многое другое.</ol>\r\nПри организации различных мероприятий (свадьбы, юбилеи и другие праздники) популярной является аренда микроавтобуса с водителем в Минске, которая включает:\r\n<ol>\r\n 	<li>Перевоз гостей до места проведения праздника и назад.</li>\r\n 	<li>Коллективная поездка на отдых.</li>\r\n 	<li>Поездка в торговые центры или другие места с целью совершения покупок.</li>\r\n 	<li>Различные виды экскурсий, в том числе для туристов и школьников (в сопровождении взрослых).</li>\r\n 	<li>Можно заказать микроавтобус на свадьбу а также <a href="#">автомобиль на свадьбу</a>.</li>\r\n</ol>\r\nПрокат микроавтобуса таких марок, как Mersedes Vito, Mercedes Sprinter, Volkswagen Crafter гарантирует комфортные условия перевозки. Можно также выбрать подходящий для вас цвет автомобиля, особенно если речь идет о свадьбе (имеются автомобили белого цвета. Микроавтобус напрокат – это не только удобный способ передвижения, но и просторный салон, мягкие кресла, кондиционер и CD/MP3 проигрыватель.\r\n\r\nМикроавтобус с водителем стоит в среднем от $19 до $30 в час. Вместительность, в зависимости от марки выбранного вами автомобиля, составляет от 6 до 21 человека.\r\n\r\nМикроавтобус с водителем регулярно проходят все необходимые проверки. Автомобиль ежедневно осматривается автомехаником. Водитель сдает анализы на допуск к управлению автомобильным средством.\r\n\r\nЗаказав прокат микроавтобуса, в случае возникновения разного рода форс-мажоров, вам предоставят другой транспорт, который будет по всем параметрам соответствовать заказанному ранее автомобилю.\r\n<h2>Аренда автобуса в Минске</h2>\r\nВ нашей компании Вы можете также заказать автобус <a href="#">Мерседес с водителем</a>, Неоплан или ISUZU. Цена аренды составит всего от $35 в час. Вместительность автобусов зависит от их марки и составляет от 30 до 60 человек.\r\n\r\nЕсли вы решили заказать автобус на свадьбу, то Вы однозначно сэкономите ваши денежные средства, так как Вам не нужно будет оплачивать налоги, страховку, мойку, ремонт и техническое обслуживание автомобиля, а также другие денежные вопросы, связанные со средством передвижения. Мы все сделаем сами, а Вам останется только наслаждаться долгожданным праздником. Если Вы хотите устроить роскошную свадебную церемонию и удивить гостей, <a href="#">прокат лимузинов в Минске</a> работает специально для вас.\r\n\r\nУ нас существует гибкая система скидок: чем дольше длится <a href="#">аренда авто с водителем</a>, тем меньше цена его проката за час. Такие условия не сможет предложить Вам, например, служба такси, где Вы вынуждены будете заплатить не только за саму перевозку, но и за так называемый «простой».\r\n\r\n</div>', 'Главная', '', 'publish', 'closed', 'closed', '', 'main', '', '', '2017-08-14 17:35:22', '2017-08-14 14:35:22', '', 0, 'http://bus.local/?page_id=5', 0, 'page', '', 0),
(6, 1, '2017-08-03 17:39:43', '2017-08-03 14:39:43', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-08-03 17:39:43', '2017-08-03 14:39:43', '', 5, 'http://bus.local/2017/08/03/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2017-08-03 17:40:35', '2017-08-03 14:40:35', '', 'О нас', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2017-08-03 17:40:35', '2017-08-03 14:40:35', '', 0, 'http://bus.local/?page_id=7', 0, 'page', '', 0),
(8, 1, '2017-08-03 17:40:21', '2017-08-03 14:40:21', '', 'О нас', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-08-03 17:40:21', '2017-08-03 14:40:21', '', 7, 'http://bus.local/2017/08/03/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-08-03 17:42:17', '2017-08-03 14:42:17', '', 'Акции', '', 'publish', 'closed', 'closed', '', 'sell-off', '', '', '2017-08-03 17:42:17', '2017-08-03 14:42:17', '', 0, 'http://bus.local/?page_id=9', 0, 'page', '', 0),
(10, 1, '2017-08-03 17:42:00', '2017-08-03 14:42:00', '', 'Акции', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2017-08-03 17:42:00', '2017-08-03 14:42:00', '', 9, 'http://bus.local/2017/08/03/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2017-08-03 17:46:08', '2017-08-03 14:46:08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel sem eleifend leo rhoncus varius. Proin dictum sem sem, in sagittis sem pulvinar non. Suspendisse rutrum ornare neque at commodo. Proin aliquet ac dui eu gravida. Curabitur imperdiet porttitor lacus, nec convallis sapien posuere a. Quisque arcu nisi, lobortis id vulputate nec, aliquam sit amet orci. Praesent consequat tristique lacus at vehicula. Donec a luctus odio.', 'Трансфер', '', 'publish', 'closed', 'closed', '', 'lift', '', '', '2017-08-03 17:46:08', '2017-08-03 14:46:08', '', 0, 'http://bus.local/?page_id=11', 0, 'page', '', 0),
(12, 1, '2017-08-03 17:44:26', '2017-08-03 14:44:26', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel sem eleifend leo rhoncus varius. Proin dictum sem sem, in sagittis sem pulvinar non. Suspendisse rutrum ornare neque at commodo. Proin aliquet ac dui eu gravida. Curabitur imperdiet porttitor lacus, nec convallis sapien posuere a. Quisque arcu nisi, lobortis id vulputate nec, aliquam sit amet orci. Praesent consequat tristique lacus at vehicula. Donec a luctus odio.', 'Трансфер', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-08-03 17:44:26', '2017-08-03 14:44:26', '', 11, 'http://bus.local/2017/08/03/11-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2017-08-14 12:46:32', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-08-14 12:46:32', '0000-00-00 00:00:00', '', 0, 'http://bus.local/?post_type=car&p=79', 0, 'car', '', 0),
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
(52, 1, '2017-08-08 10:52:23', '2017-08-08 07:52:23', '', 'predst2-250x173', 'g3', 'inherit', 'open', 'closed', '', 'predst2-250x173', '', '', '2017-08-10 12:36:01', '2017-08-10 09:36:01', '', 35, 'http://bus.local/wp-content/uploads/2017/08/predst2-250x173.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2017-08-08 10:52:25', '2017-08-08 07:52:25', '', 'svadebnie2-250x173', 'g2', 'inherit', 'open', 'closed', '', 'svadebnie2-250x173', '', '', '2017-08-10 12:35:59', '2017-08-10 09:35:59', '', 35, 'http://bus.local/wp-content/uploads/2017/08/svadebnie2-250x173.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2017-08-08 10:52:28', '2017-08-08 07:52:28', '3', 'vned2-250x173', 'g1', 'inherit', 'open', 'closed', '', 'vned2-250x173', '', '', '2017-08-10 12:35:57', '2017-08-10 09:35:57', '', 35, 'http://bus.local/wp-content/uploads/2017/08/vned2-250x173.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2017-08-10 12:33:08', '2017-08-10 09:33:08', '[gallery ids="54,53,52"]\r\n\r\nMaecenas in turpis vitae augue fringilla porttitor. Nunc elementum risus vel neque ornare lobortis. Duis eu ex id nulla laoreet scelerisque. Etiam at lacus eu dolor malesuada maximus. Cras a diam non tellus efficitur interdum. Proin consectetur nisi sit amet nibh venenatis eleifend. Aliquam id dapibus ligula. Nam sit amet diam rhoncus, finibus neque vitae, vulputate lorem. Proin mollis at erat in tincidunt.', 'Excalibur Phantom', '', 'publish', 'closed', 'closed', '', 'excalibur-phantom', '', '', '2017-08-11 16:15:16', '2017-08-11 13:15:16', '', 0, 'http://bus.local/?post_type=car&#038;p=55', 0, 'car', '', 0),
(56, 1, '2017-08-10 11:58:10', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-08-10 11:58:10', '0000-00-00 00:00:00', '', 0, 'http://bus.local/?post_type=car&p=56', 0, 'car', '', 0),
(57, 1, '2017-08-10 11:59:08', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-08-10 11:59:08', '0000-00-00 00:00:00', '', 0, 'http://bus.local/?post_type=car&p=57', 0, 'car', '', 0),
(58, 1, '2017-08-10 12:28:02', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-08-10 12:28:02', '0000-00-00 00:00:00', '', 0, 'http://bus.local/?post_type=car&p=58', 0, 'car', '', 0),
(59, 1, '2017-08-10 12:28:28', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-08-10 12:28:28', '0000-00-00 00:00:00', '', 0, 'http://bus.local/?post_type=car&p=59', 0, 'car', '', 0),
(60, 1, '2017-08-10 12:29:46', '2017-08-10 09:29:46', '', '', '', 'trash', 'closed', 'closed', '', '60__trashed', '', '', '2017-08-10 12:32:36', '2017-08-10 09:32:36', '', 0, 'http://bus.local/?post_type=car&#038;p=60', 0, 'car', '', 0),
(61, 1, '2017-08-10 12:36:15', '2017-08-10 09:36:15', '[gallery ids="54,53,52"]\n\nMaecenas in turpis vitae augue fringilla porttitor. Nunc elementum risus vel neque ornare lobortis. Duis eu ex id nulla laoreet scelerisque. Etiam at lacus eu dolor malesuada maximus. Cras a diam non tellus efficitur interdum. Proin consectetur nisi sit amet nibh venenatis eleifend. Aliquam id dapibus ligula. Nam sit amet diam rhoncus, finibus neque vitae, vulputate lorem. Proin mollis at erat in tincidunt.', 'Excalibur Phantom', '', 'inherit', 'closed', 'closed', '', '55-autosave-v1', '', '', '2017-08-10 12:36:15', '2017-08-10 09:36:15', '', 55, 'http://bus.local/2017/08/10/55-autosave-v1/', 0, 'revision', '', 0),
(62, 1, '2017-08-10 12:38:22', '2017-08-10 09:38:22', 'Suspendisse eget egestas mi, eu sollicitudin odio. Maecenas iaculis euismod justo, eget interdum neque ullamcorper quis. Etiam eget sapien accumsan, gravida metus non, laoreet urna. Proin accumsan mauris sollicitudin nisl egestas sagittis. Quisque molestie est eu lacus condimentum ultricies. Nunc porttitor fringilla nisl, non porttitor orci egestas sodales. Nulla at semper massa, eget ornare libero. Vivamus at imperdiet risus.', 'Спринтер 316', '', 'publish', 'closed', 'closed', '', '%d1%81%d0%bf%d1%80%d0%b8%d0%bd%d1%82%d0%b5%d1%80-316', '', '', '2017-08-11 16:21:55', '2017-08-11 13:21:55', '', 0, 'http://bus.local/?post_type=car&#038;p=62', 0, 'car', '', 0),
(63, 1, '2017-08-10 12:41:59', '2017-08-10 09:41:59', 'Mauris eget eleifend neque. Phasellus sollicitudin, arcu non semper fermentum, leo urna lobortis metus, ac efficitur tortor metus nec nibh. Vestibulum sollicitudin elit vitae neque blandit sagittis. Curabitur porttitor mattis eros et pellentesque. Suspendisse potenti. Integer volutpat dolor et mi luctus, non varius nunc euismod. Donec et dolor rutrum, suscipit mauris in, tincidunt dui.', 'Gelandewagen', '', 'publish', 'closed', 'closed', '', 'gelandewagen', '', '', '2017-08-11 16:16:08', '2017-08-11 13:16:08', '', 0, 'http://bus.local/?post_type=car&#038;p=63', 0, 'car', '', 0),
(64, 1, '2017-08-10 12:42:47', '2017-08-10 09:42:47', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec ligula vitae enim lacinia lobortis. Nunc bibendum consectetur sem eu egestas. Vivamus convallis dapibus quam, ac commodo quam tincidunt nec. Proin est eros, mattis sagittis sem ac, efficitur feugiat lacus. Morbi vulputate efficitur massa, sed efficitur enim accumsan eget. Praesent faucibus euismod nisi, sed imperdiet dui faucibus mollis. Integer non viverra turpis. Donec sollicitudin lacus ac risus elementum, ut efficitur mi cursus. Aliquam a nibh fringilla, interdum nibh in, lobortis lorem.', 'x166', '', 'publish', 'closed', 'closed', '', 'x166', '', '', '2017-08-11 16:16:27', '2017-08-11 13:16:27', '', 0, 'http://bus.local/?post_type=car&#038;p=64', 0, 'car', '', 0),
(65, 1, '2017-08-10 16:25:41', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-08-10 16:25:41', '0000-00-00 00:00:00', '', 0, 'http://bus.local/?post_type=car&p=65', 0, 'car', '', 0),
(66, 1, '2017-08-10 17:11:31', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-08-10 17:11:31', '0000-00-00 00:00:00', '', 0, 'http://bus.local/?post_type=car&p=66', 0, 'car', '', 0),
(67, 1, '2017-08-10 17:13:58', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-08-10 17:13:58', '0000-00-00 00:00:00', '', 0, 'http://bus.local/?post_type=car&p=67', 0, 'car', '', 0),
(68, 1, '2017-08-10 17:15:58', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-08-10 17:15:58', '0000-00-00 00:00:00', '', 0, 'http://bus.local/?post_type=car&p=68', 0, 'car', '', 0),
(69, 1, '2017-08-10 17:20:13', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-08-10 17:20:13', '0000-00-00 00:00:00', '', 0, 'http://bus.local/?post_type=car&p=69', 0, 'car', '', 0),
(70, 1, '2017-08-10 17:20:38', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-08-10 17:20:38', '0000-00-00 00:00:00', '', 0, 'http://bus.local/?post_type=car&p=70', 0, 'car', '', 0),
(71, 1, '2017-08-10 17:24:42', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-08-10 17:24:42', '0000-00-00 00:00:00', '', 0, 'http://bus.local/?post_type=car&p=71', 0, 'car', '', 0),
(72, 1, '2017-08-10 17:25:28', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-08-10 17:25:28', '0000-00-00 00:00:00', '', 0, 'http://bus.local/?post_type=car&p=72', 0, 'car', '', 0),
(73, 1, '2017-08-10 17:29:54', '2017-08-10 14:29:54', '', '', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2017-08-10 17:54:32', '2017-08-10 14:54:32', '', 0, 'http://bus.local/?post_type=car&#038;p=73', 0, 'car', '', 0),
(74, 1, '2017-08-11 15:18:42', '2017-08-11 12:18:42', 'Pellentesque suscipit diam velit, at bibendum magna eleifend ac. Nam faucibus turpis non velit consequat, congue ultricies lectus sodales. Nam aliquam erat non neque ullamcorper tincidunt. Ut ut tincidunt lorem. Nam tempus at sem quis pellentesque. Cras aliquet maximus fringilla. Nullam vestibulum egestas tincidunt. Etiam non lorem non nibh posuere elementum sed sed enim. Morbi egestas faucibus nunc, eu fermentum augue efficitur eu. Curabitur interdum dignissim tortor, accumsan tincidunt tellus convallis id.', 'С315', '', 'publish', 'closed', 'closed', '', '%d1%81315', '', '', '2017-08-11 16:14:03', '2017-08-11 13:14:03', '', 0, 'http://bus.local/?post_type=car&#038;p=74', 0, 'car', '', 0),
(75, 1, '2017-08-11 15:16:19', '2017-08-11 12:16:19', '', 'mercedes-benz_sprinter-315-pass__168335061f', 'Белый Минивэн Mercedes-Benz Sprinter 315 пасс. (Мерседес Спринтер 315 пасс.) 2008 года.', 'inherit', 'open', 'closed', '', 'mercedes-benz_sprinter-315-pass__168335061f', '', '', '2017-08-11 15:16:19', '2017-08-11 12:16:19', '', 74, 'http://bus.local/wp-content/uploads/2017/08/mercedes-benz_sprinter-315-pass__168335061f.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2017-08-11 15:54:29', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-08-11 15:54:29', '0000-00-00 00:00:00', '', 0, 'http://bus.local/?post_type=car&p=76', 0, 'car', '', 0),
(77, 1, '2017-08-11 16:14:33', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-08-11 16:14:33', '0000-00-00 00:00:00', '', 0, 'http://bus.local/?post_type=car&p=77', 0, 'car', '', 0),
(78, 1, '2017-08-11 16:21:51', '2017-08-11 13:21:51', '', 'mersedes-sprinter-v-obvese', '', 'inherit', 'open', 'closed', '', 'mersedes-sprinter-v-obvese', '', '', '2017-08-11 16:21:51', '2017-08-11 13:21:51', '', 62, 'http://bus.local/wp-content/uploads/2017/08/mersedes-sprinter-v-obvese.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2017-08-14 12:55:55', '2017-08-14 09:55:55', 'Роскошный внешний вид, мягкость хода, комфортность салона. Сбережёт самое пышное свадебное платье и порадует гостей и молодожёнов торжественностью, соответствующей моменту.', 'Mercedes w221 S-class', '', 'publish', 'closed', 'closed', '', 'mercedes-w221-s-class', '', '', '2017-08-14 15:13:53', '2017-08-14 12:13:53', '', 0, 'http://bus.local/?post_type=car&#038;p=80', 0, 'car', '', 0),
(81, 1, '2017-08-14 12:55:30', '2017-08-14 09:55:30', '', '221-salon', '', 'inherit', 'open', 'closed', '', '221-salon', '', '', '2017-08-14 12:55:30', '2017-08-14 09:55:30', '', 80, 'http://bus.local/wp-content/uploads/2017/08/221-salon.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2017-08-14 12:55:30', '2017-08-14 09:55:30', '', 'akciya-221-600x450', '', 'inherit', 'open', 'closed', '', 'akciya-221-600x450', '', '', '2017-08-14 12:55:30', '2017-08-14 09:55:30', '', 80, 'http://bus.local/wp-content/uploads/2017/08/akciya-221-600x450.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2017-08-14 12:55:31', '2017-08-14 09:55:31', '', 'image_19-1024x687', '', 'inherit', 'open', 'closed', '', 'image_19-1024x687', '', '', '2017-08-14 12:55:31', '2017-08-14 09:55:31', '', 80, 'http://bus.local/wp-content/uploads/2017/08/image_19-1024x687.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2017-08-14 12:55:32', '2017-08-14 09:55:32', '', 's-221-chernyj-minsk-1024x764', '', 'inherit', 'open', 'closed', '', 's-221-chernyj-minsk-1024x764', '', '', '2017-08-14 12:55:32', '2017-08-14 09:55:32', '', 80, 'http://bus.local/wp-content/uploads/2017/08/s-221-chernyj-minsk-1024x764.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2017-08-14 15:12:59', '2017-08-14 12:12:59', 'Роскошь и комфортjобъединились! Широкие сиденья помогут держать форму платью невесты, белый цвет торжественен и гармонирует с платьем, а дизайн автомобиля говорит о презентабельности и важности свадьбы.', 'Мерседес S 221 long', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b5%d1%80%d1%81%d0%b5%d0%b4%d0%b5%d1%81-s-221-long', '', '', '2017-08-14 15:13:41', '2017-08-14 12:13:41', '', 0, 'http://bus.local/?post_type=car&#038;p=85', 0, 'car', '', 0),
(86, 1, '2017-08-14 15:12:20', '2017-08-14 12:12:20', '', '20072012976-1024x768', '', 'inherit', 'open', 'closed', '', '20072012976-1024x768', '', '', '2017-08-14 15:12:20', '2017-08-14 12:12:20', '', 85, 'http://bus.local/wp-content/uploads/2017/08/20072012976-1024x768.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2017-08-14 15:12:21', '2017-08-14 12:12:21', '', 'image_5-e1493563597330-800x600', '', 'inherit', 'open', 'closed', '', 'image_5-e1493563597330-800x600', '', '', '2017-08-14 15:12:21', '2017-08-14 12:12:21', '', 85, 'http://bus.local/wp-content/uploads/2017/08/image_5-e1493563597330-800x600.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2017-08-14 15:12:22', '2017-08-14 12:12:22', '', 'image_13', '', 'inherit', 'open', 'closed', '', 'image_13', '', '', '2017-08-14 15:12:22', '2017-08-14 12:12:22', '', 85, 'http://bus.local/wp-content/uploads/2017/08/image_13.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2017-08-14 15:12:22', '2017-08-14 12:12:22', '', 'image-14-05-15-07-14-1', '', 'inherit', 'open', 'closed', '', 'image-14-05-15-07-14-1', '', '', '2017-08-14 15:12:22', '2017-08-14 12:12:22', '', 85, 'http://bus.local/wp-content/uploads/2017/08/image-14-05-15-07-14-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2017-08-14 15:36:04', '2017-08-14 12:36:04', 'Роскошность и комфортность соединились! Широкие сиденья помогут держать форму платью невесты, белый цвет торжественен и гармонирует с платьем, а дизайн автомобиля говорит о презентабельности и важности свадьбы.', 'Мерседес s221 long', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b5%d1%80%d1%81%d0%b5%d0%b4%d0%b5%d1%81-s221-long', '', '', '2017-08-14 15:37:25', '2017-08-14 12:37:25', '', 0, 'http://bus.local/?post_type=car&#038;p=90', 0, 'car', '', 0),
(91, 1, '2017-08-14 15:35:02', '2017-08-14 12:35:02', '', '221salon', '', 'inherit', 'open', 'closed', '', '221salon', '', '', '2017-08-14 15:35:02', '2017-08-14 12:35:02', '', 90, 'http://bus.local/wp-content/uploads/2017/08/221salon.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2017-08-14 15:35:03', '2017-08-14 12:35:03', '', '221salon2', '', 'inherit', 'open', 'closed', '', '221salon2', '', '', '2017-08-14 15:35:03', '2017-08-14 12:35:03', '', 90, 'http://bus.local/wp-content/uploads/2017/08/221salon2.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2017-08-14 15:35:03', '2017-08-14 12:35:03', '', 'image_2', '', 'inherit', 'open', 'closed', '', 'image_2', '', '', '2017-08-14 15:35:03', '2017-08-14 12:35:03', '', 90, 'http://bus.local/wp-content/uploads/2017/08/image_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2017-08-14 15:35:04', '2017-08-14 12:35:04', '', 'image-533x400', '', 'inherit', 'open', 'closed', '', 'image-533x400', '', '', '2017-08-14 15:35:04', '2017-08-14 12:35:04', '', 90, 'http://bus.local/wp-content/uploads/2017/08/image-533x400.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2017-08-14 15:39:49', '2017-08-14 12:39:49', 'Популярный и полюбившийся лимузин Chrysler – это классика и элегантность. Подходящий вариант для молодожёнов, которые предпочитают классические простые линии и эстетичный внешний вид свадебного сопровождения. Эти комфортные авто отлично подойдут для свадебного кортежа!', 'Крайслер 300С', '', 'publish', 'closed', 'closed', '', '%d0%ba%d1%80%d0%b0%d0%b9%d1%81%d0%bb%d0%b5%d1%80-300%d1%81', '', '', '2017-08-14 15:40:13', '2017-08-14 12:40:13', '', 0, 'http://bus.local/?post_type=car&#038;p=95', 0, 'car', '', 0),
(96, 1, '2017-08-14 15:39:43', '2017-08-14 12:39:43', '', '300c-salon-1024x637', '', 'inherit', 'open', 'closed', '', '300c-salon-1024x637', '', '', '2017-08-14 15:39:43', '2017-08-14 12:39:43', '', 95, 'http://bus.local/wp-content/uploads/2017/08/300c-salon-1024x637.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2017-08-14 15:39:44', '2017-08-14 12:39:44', '', '300s-minsk-1024x764', '', 'inherit', 'open', 'closed', '', '300s-minsk-1024x764', '', '', '2017-08-14 15:39:44', '2017-08-14 12:39:44', '', 95, 'http://bus.local/wp-content/uploads/2017/08/300s-minsk-1024x764.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2017-08-14 15:39:45', '2017-08-14 12:39:45', '', '300s-minsk-prokat-e1493564543245-706x530', '', 'inherit', 'open', 'closed', '', '300s-minsk-prokat-e1493564543245-706x530', '', '', '2017-08-14 15:39:45', '2017-08-14 12:39:45', '', 95, 'http://bus.local/wp-content/uploads/2017/08/300s-minsk-prokat-e1493564543245-706x530.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2017-08-14 15:39:45', '2017-08-14 12:39:45', '', 'chernyj-300c-minsk-1024x765', '', 'inherit', 'open', 'closed', '', 'chernyj-300c-minsk-1024x765', '', '', '2017-08-14 15:39:45', '2017-08-14 12:39:45', '', 95, 'http://bus.local/wp-content/uploads/2017/08/chernyj-300c-minsk-1024x765.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2017-08-14 15:54:34', '2017-08-14 12:54:34', 'Белый лимузин Chrysler C 300 для свадьбы в строгом классическом стиле. Комфортабельный салон, удобная форма двери, продуманный и элегантный дизайн. Подходящий вариант для молодожёнов, которым близко сочетание красоты и простоты.', 'Chrysler 300c белый', '', 'publish', 'closed', 'closed', '', 'chrysler-300c-%d0%b1%d0%b5%d0%bb%d1%8b%d0%b9', '', '', '2017-08-14 15:55:02', '2017-08-14 12:55:02', '', 0, 'http://bus.local/?post_type=car&#038;p=100', 0, 'car', '', 0),
(101, 1, '2017-08-14 15:54:20', '2017-08-14 12:54:20', '', '1dsfrnhujk-l', '', 'inherit', 'open', 'closed', '', '1dsfrnhujk-l', '', '', '2017-08-14 15:54:20', '2017-08-14 12:54:20', '', 100, 'http://bus.local/wp-content/uploads/2017/08/1dsfrnhujk-l.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2017-08-14 15:54:21', '2017-08-14 12:54:21', '', '300c-belyj-minsk-bus.by_.jpg1_', '', 'inherit', 'open', 'closed', '', '300c-belyj-minsk-bus-by_-jpg1_', '', '', '2017-08-14 15:54:21', '2017-08-14 12:54:21', '', 100, 'http://bus.local/wp-content/uploads/2017/08/300c-belyj-minsk-bus.by_.jpg1_.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2017-08-14 15:54:22', '2017-08-14 12:54:22', '', '300s-minsk-prokat-belyj-1024x768', '', 'inherit', 'open', 'closed', '', '300s-minsk-prokat-belyj-1024x768', '', '', '2017-08-14 15:54:22', '2017-08-14 12:54:22', '', 100, 'http://bus.local/wp-content/uploads/2017/08/300s-minsk-prokat-belyj-1024x768.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2017-08-14 15:54:22', '2017-08-14 12:54:22', '', 'dsc00069_resize1-1024x768', '', 'inherit', 'open', 'closed', '', 'dsc00069_resize1-1024x768', '', '', '2017-08-14 15:54:22', '2017-08-14 12:54:22', '', 100, 'http://bus.local/wp-content/uploads/2017/08/dsc00069_resize1-1024x768.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(105, 1, '2017-08-14 16:00:40', '2017-08-14 13:00:40', 'Элегантный и продуманный белый седан . Классический дизайн, функциональный комфортабельный салон – для удобного и роскошного свадебного сопровождения молодожёнов.', 'Крайслер 300с', '', 'publish', 'closed', 'closed', '', '%d0%ba%d1%80%d0%b0%d0%b9%d1%81%d0%bb%d0%b5%d1%80-300%d1%81-%d1%81-%d0%b1%d0%b5%d0%bb%d1%8b%d0%bc-%d1%81%d0%b0%d0%bb%d0%be%d0%bd%d0%be%d0%bc', '', '', '2017-08-14 16:05:52', '2017-08-14 13:05:52', '', 0, 'http://bus.local/?post_type=car&#038;p=105', 0, 'car', '', 0),
(106, 1, '2017-08-14 16:02:43', '2017-08-14 13:02:43', '', '300c-1024x768', '', 'inherit', 'open', 'closed', '', '300c-1024x768', '', '', '2017-08-14 16:02:43', '2017-08-14 13:02:43', '', 105, 'http://bus.local/wp-content/uploads/2017/08/300c-1024x768.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2017-08-14 16:02:43', '2017-08-14 13:02:43', '', '300-c-svadba', '', 'inherit', 'open', 'closed', '', '300-c-svadba', '', '', '2017-08-14 16:02:43', '2017-08-14 13:02:43', '', 105, 'http://bus.local/wp-content/uploads/2017/08/300-c-svadba.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2017-08-14 16:02:44', '2017-08-14 13:02:44', '', 'dsc00065_resize-768x1024', '', 'inherit', 'open', 'closed', '', 'dsc00065_resize-768x1024', '', '', '2017-08-14 16:02:44', '2017-08-14 13:02:44', '', 105, 'http://bus.local/wp-content/uploads/2017/08/dsc00065_resize-768x1024.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2017-08-14 16:05:49', '2017-08-14 13:05:49', '', '0+32', '', 'inherit', 'open', 'closed', '', '032', '', '', '2017-08-14 16:05:49', '2017-08-14 13:05:49', '', 105, 'http://bus.local/wp-content/uploads/2017/08/032.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2017-08-14 16:49:14', '2017-08-14 13:49:14', 'Функциональный, комфортный, удобный микроавтобус. Оборудован автомобильным набором для комфортабельной поездки: сиденья с подлокотниками, кондиционер, аудио- и видеосистема, микрофон. Подходящий вариант для коротких и дальних поездок.', 'Автобус Setra 415', '', 'publish', 'closed', 'closed', '', '%d0%b0%d0%b2%d1%82%d0%be%d0%b1%d1%83%d1%81-setra-415', '', '', '2017-08-14 17:03:48', '2017-08-14 14:03:48', '', 0, 'http://bus.local/?post_type=car&#038;p=110', 0, 'car', '', 0),
(111, 1, '2017-08-14 16:49:03', '2017-08-14 13:49:03', '', 'autobus-1', '', 'inherit', 'open', 'closed', '', 'autobus-1', '', '', '2017-08-14 16:49:03', '2017-08-14 13:49:03', '', 110, 'http://bus.local/wp-content/uploads/2017/08/autobus-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2017-08-14 16:49:03', '2017-08-14 13:49:03', '', 'autobus-2', '', 'inherit', 'open', 'closed', '', 'autobus-2', '', '', '2017-08-14 16:49:03', '2017-08-14 13:49:03', '', 110, 'http://bus.local/wp-content/uploads/2017/08/autobus-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2017-08-14 16:49:04', '2017-08-14 13:49:04', '', 'autobus-3', '', 'inherit', 'open', 'closed', '', 'autobus-3', '', '', '2017-08-14 16:49:04', '2017-08-14 13:49:04', '', 110, 'http://bus.local/wp-content/uploads/2017/08/autobus-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2017-08-14 16:49:05', '2017-08-14 13:49:05', '', 'autobus-4', '', 'inherit', 'open', 'closed', '', 'autobus-4', '', '', '2017-08-14 16:49:05', '2017-08-14 13:49:05', '', 110, 'http://bus.local/wp-content/uploads/2017/08/autobus-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2017-08-14 16:51:44', '2017-08-14 13:51:44', 'Функциональный, комфортный, удобный микроавтобус. Оборудован автомобильным набором для комфортабельной поездки: сиденья с подлокотниками, кондиционер, аудио- и видеосистема, микрофон. Подходящий вариант для коротких и дальних поездок.', 'Автобус IVECO', '', 'publish', 'closed', 'closed', '', '%d0%b0%d0%b2%d1%82%d0%be%d0%b1%d1%83%d1%81-iveco', '', '', '2017-08-14 17:02:43', '2017-08-14 14:02:43', '', 0, 'http://bus.local/?post_type=car&#038;p=115', 0, 'car', '', 0),
(116, 1, '2017-08-14 16:51:52', '2017-08-14 13:51:52', '', 'autobus-5-1024x768', '', 'inherit', 'open', 'closed', '', 'autobus-5-1024x768', '', '', '2017-08-14 16:51:52', '2017-08-14 13:51:52', '', 115, 'http://bus.local/wp-content/uploads/2017/08/autobus-5-1024x768.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2017-08-14 16:51:53', '2017-08-14 13:51:53', '', 'autobus-6-1024x768', '', 'inherit', 'open', 'closed', '', 'autobus-6-1024x768', '', '', '2017-08-14 16:51:53', '2017-08-14 13:51:53', '', 115, 'http://bus.local/wp-content/uploads/2017/08/autobus-6-1024x768.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2017-08-14 16:51:53', '2017-08-14 13:51:53', '', 'autobus-7-1024x768', '', 'inherit', 'open', 'closed', '', 'autobus-7-1024x768', '', '', '2017-08-14 16:51:53', '2017-08-14 13:51:53', '', 115, 'http://bus.local/wp-content/uploads/2017/08/autobus-7-1024x768.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2017-08-14 16:55:34', '2017-08-14 13:55:34', 'Функциональный, комфортный, удобный микроавтобус. Оборудован автомобильным набором для комфортабельной поездки: сиденья с подлокотниками, кондиционер, аудио- и видеосистема, микрофон. Подходящий вариант для коротких и дальних поездок.', 'Пассажирский автобус', '', 'publish', 'closed', 'closed', '', '%d0%bf%d0%b0%d1%81%d1%81%d0%b0%d0%b6%d0%b8%d1%80%d1%81%d0%ba%d0%b8%d0%b9-%d0%b0%d0%b2%d1%82%d0%be%d0%b1%d1%83%d1%81', '', '', '2017-08-14 17:01:47', '2017-08-14 14:01:47', '', 0, 'http://bus.local/?post_type=car&#038;p=119', 0, 'car', '', 0),
(120, 1, '2017-08-14 16:55:28', '2017-08-14 13:55:28', '', 'photo_2017-05-02_15-35-55-2-1024x768', '', 'inherit', 'open', 'closed', '', 'photo_2017-05-02_15-35-55-2-1024x768', '', '', '2017-08-14 16:55:28', '2017-08-14 13:55:28', '', 119, 'http://bus.local/wp-content/uploads/2017/08/photo_2017-05-02_15-35-55-2-1024x768.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2017-08-14 16:55:29', '2017-08-14 13:55:29', '', 'photo_2017-05-02_15-35-55-768x1024', '', 'inherit', 'open', 'closed', '', 'photo_2017-05-02_15-35-55-768x1024', '', '', '2017-08-14 16:55:29', '2017-08-14 13:55:29', '', 119, 'http://bus.local/wp-content/uploads/2017/08/photo_2017-05-02_15-35-55-768x1024.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2017-08-14 16:55:29', '2017-08-14 13:55:29', '', 'photo_2017-05-02_15-35-56-1024x1024', '', 'inherit', 'open', 'closed', '', 'photo_2017-05-02_15-35-56-1024x1024', '', '', '2017-08-14 16:55:29', '2017-08-14 13:55:29', '', 119, 'http://bus.local/wp-content/uploads/2017/08/photo_2017-05-02_15-35-56-1024x1024.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2017-08-14 17:01:43', '2017-08-14 14:01:43', '', '230-173_0', '', 'inherit', 'open', 'closed', '', '230-173_0', '', '', '2017-08-14 17:01:43', '2017-08-14 14:01:43', '', 119, 'http://bus.local/wp-content/uploads/2017/08/230-173_0.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2017-08-14 17:02:40', '2017-08-14 14:02:40', '', '230-173_1', '', 'inherit', 'open', 'closed', '', '230-173_1', '', '', '2017-08-14 17:02:40', '2017-08-14 14:02:40', '', 115, 'http://bus.local/wp-content/uploads/2017/08/230-173_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2017-08-14 17:03:44', '2017-08-14 14:03:44', '', '230-173_3', '', 'inherit', 'open', 'closed', '', '230-173_3', '', '', '2017-08-14 17:03:44', '2017-08-14 14:03:44', '', 110, 'http://bus.local/wp-content/uploads/2017/08/230-173_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2017-08-14 17:18:38', '2017-08-14 14:18:38', '<div class="wpb_wrapper">\r\n<h2>Аренда и прокат микроавтобусов в Минске</h2>\r\nЗаказать микроавтобус у нас могут как предприниматели и руководители компаний и организаций, так и физические лица, в том числе дошкольные и школьные учреждения образования.\r\n\r\n<strong>Перечень услуг, которые включает в себя перевозки микроавтобусом:</strong>\r\n<ol>\r\n 	<li style="list-style-type: none;">\r\n<ol>\r\n 	<li>Доставка до места работы и обратно 7 дней в неделю 24 часа.</li>\r\n 	<li>Транспортировка на железнодорожный вокзал или автовокзал, а также в аэропорт.</li>\r\n 	<li>Сопровождение в командировках (даже в других городах).</li>\r\n 	<li>Встреча деловых партнеров или гостей города.</li>\r\n 	<li>Выезд для проведения тимбилдинга и тренингов.</li>\r\n</ol>\r\n</li>\r\n</ol>\r\n<a href="#">Доставка сотрудников на работу</a>\r\n<ol>и их развоз после корпоративов и многое другое.</ol>\r\nПри организации различных мероприятий (свадьбы, юбилеи и другие праздники) популярной является аренда микроавтобуса с водителем в Минске, которая включает:\r\n<ol>\r\n 	<li>Перевоз гостей до места проведения праздника и назад.</li>\r\n 	<li>Коллективная поездка на отдых.</li>\r\n 	<li>Поездка в торговые центры или другие места с целью совершения покупок.</li>\r\n 	<li>Различные виды экскурсий, в том числе для туристов и школьников (в сопровождении взрослых).</li>\r\n 	<li>Можно заказать микроавтобус на свадьбу а также <a href="#">автомобиль на свадьбу</a>.</li>\r\n</ol>\r\nПрокат микроавтобуса таких марок, как Mersedes Vito, Mercedes Sprinter, Volkswagen Crafter гарантирует комфортные условия перевозки. Можно также выбрать подходящий для вас цвет автомобиля, особенно если речь идет о свадьбе (имеются автомобили белого цвета. Микроавтобус напрокат – это не только удобный способ передвижения, но и просторный салон, мягкие кресла, кондиционер и CD/MP3 проигрыватель.\r\n\r\nМикроавтобус с водителем стоит в среднем от $19 до $30 в час. Вместительность, в зависимости от марки выбранного вами автомобиля, составляет от 6 до 21 человека.\r\n\r\nМикроавтобус с водителем регулярно проходят все необходимые проверки. Автомобиль ежедневно осматривается автомехаником. Водитель сдает анализы на допуск к управлению автомобильным средством.\r\n\r\nЗаказав прокат микроавтобуса, в случае возникновения разного рода форс-мажоров, вам предоставят другой транспорт, который будет по всем параметрам соответствовать заказанному ранее автомобилю.\r\n<h2>Аренда автобуса в Минске</h2>\r\nВ нашей компании Вы можете также заказать автобус <a href="#">Мерседес с водителем</a>, Неоплан или ISUZU. Цена аренды составит всего от $35 в час. Вместительность автобусов зависит от их марки и составляет от 30 до 60 человек.\r\n\r\nЕсли вы решили заказать автобус на свадьбу, то Вы однозначно сэкономите ваши денежные средства, так как Вам не нужно будет оплачивать налоги, страховку, мойку, ремонт и техническое обслуживание автомобиля, а также другие денежные вопросы, связанные со средством передвижения. Мы все сделаем сами, а Вам останется только наслаждаться долгожданным праздником. Если Вы хотите устроить роскошную свадебную церемонию и удивить гостей, <a href="#">прокат лимузинов в Минске</a> работает специально для вас.\r\n\r\nУ нас существует гибкая система скидок: чем дольше длится <a href="#">аренда авто с водителем</a>, тем меньше цена его проката за час. Такие условия не сможет предложить Вам, например, служба такси, где Вы вынуждены будете заплатить не только за саму перевозку, но и за так называемый «простой».\r\n\r\n</div>', 'Главная', '', 'trash', 'closed', 'closed', '', 'main-2__trashed', '', '', '2017-08-14 17:22:36', '2017-08-14 14:22:36', '', 0, 'http://bus.local/?page_id=126', 0, 'page', '', 0),
(127, 1, '2017-08-14 17:18:38', '2017-08-14 14:18:38', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2017-08-14 17:18:38', '2017-08-14 14:18:38', '', 126, 'http://bus.local/2017/08/14/126-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2017-08-14 17:21:56', '2017-08-14 14:21:56', '<div class="wpb_wrapper">\r\n<h2>Аренда и прокат микроавтобусов в Минске</h2>\r\nЗаказать микроавтобус у нас могут как предприниматели и руководители компаний и организаций, так и физические лица, в том числе дошкольные и школьные учреждения образования.\r\n\r\n<strong>Перечень услуг, которые включает в себя перевозки микроавтобусом:</strong>\r\n<ol>\r\n 	<li style="list-style-type: none;">\r\n<ol>\r\n 	<li>Доставка до места работы и обратно 7 дней в неделю 24 часа.</li>\r\n 	<li>Транспортировка на железнодорожный вокзал или автовокзал, а также в аэропорт.</li>\r\n 	<li>Сопровождение в командировках (даже в других городах).</li>\r\n 	<li>Встреча деловых партнеров или гостей города.</li>\r\n 	<li>Выезд для проведения тимбилдинга и тренингов.</li>\r\n</ol>\r\n</li>\r\n</ol>\r\n<a href="#">Доставка сотрудников на работу</a>\r\n<ol>и их развоз после корпоративов и многое другое.</ol>\r\nПри организации различных мероприятий (свадьбы, юбилеи и другие праздники) популярной является аренда микроавтобуса с водителем в Минске, которая включает:\r\n<ol>\r\n 	<li>Перевоз гостей до места проведения праздника и назад.</li>\r\n 	<li>Коллективная поездка на отдых.</li>\r\n 	<li>Поездка в торговые центры или другие места с целью совершения покупок.</li>\r\n 	<li>Различные виды экскурсий, в том числе для туристов и школьников (в сопровождении взрослых).</li>\r\n 	<li>Можно заказать микроавтобус на свадьбу а также <a href="#">автомобиль на свадьбу</a>.</li>\r\n</ol>\r\nПрокат микроавтобуса таких марок, как Mersedes Vito, Mercedes Sprinter, Volkswagen Crafter гарантирует комфортные условия перевозки. Можно также выбрать подходящий для вас цвет автомобиля, особенно если речь идет о свадьбе (имеются автомобили белого цвета. Микроавтобус напрокат – это не только удобный способ передвижения, но и просторный салон, мягкие кресла, кондиционер и CD/MP3 проигрыватель.\r\n\r\nМикроавтобус с водителем стоит в среднем от $19 до $30 в час. Вместительность, в зависимости от марки выбранного вами автомобиля, составляет от 6 до 21 человека.\r\n\r\nМикроавтобус с водителем регулярно проходят все необходимые проверки. Автомобиль ежедневно осматривается автомехаником. Водитель сдает анализы на допуск к управлению автомобильным средством.\r\n\r\nЗаказав прокат микроавтобуса, в случае возникновения разного рода форс-мажоров, вам предоставят другой транспорт, который будет по всем параметрам соответствовать заказанному ранее автомобилю.\r\n<h2>Аренда автобуса в Минске</h2>\r\nВ нашей компании Вы можете также заказать автобус <a href="#">Мерседес с водителем</a>, Неоплан или ISUZU. Цена аренды составит всего от $35 в час. Вместительность автобусов зависит от их марки и составляет от 30 до 60 человек.\r\n\r\nЕсли вы решили заказать автобус на свадьбу, то Вы однозначно сэкономите ваши денежные средства, так как Вам не нужно будет оплачивать налоги, страховку, мойку, ремонт и техническое обслуживание автомобиля, а также другие денежные вопросы, связанные со средством передвижения. Мы все сделаем сами, а Вам останется только наслаждаться долгожданным праздником. Если Вы хотите устроить роскошную свадебную церемонию и удивить гостей, <a href="#">прокат лимузинов в Минске</a> работает специально для вас.\r\n\r\nУ нас существует гибкая система скидок: чем дольше длится <a href="#">аренда авто с водителем</a>, тем меньше цена его проката за час. Такие условия не сможет предложить Вам, например, служба такси, где Вы вынуждены будете заплатить не только за саму перевозку, но и за так называемый «простой».\r\n\r\n</div>', 'Главная', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2017-08-14 17:21:56', '2017-08-14 14:21:56', '', 126, 'http://bus.local/2017/08/14/126-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2017-08-14 17:35:22', '2017-08-14 14:35:22', '<div class="wpb_wrapper">\r\n<h2>Аренда и прокат микроавтобусов в Минске</h2>\r\nЗаказать микроавтобус у нас могут как предприниматели и руководители компаний и организаций, так и физические лица, в том числе дошкольные и школьные учреждения образования.\r\n\r\n<strong>Перечень услуг, которые включает в себя перевозки микроавтобусом:</strong>\r\n<ul>\r\n\r\n 	<li>Доставка до места работы и обратно 7 дней в неделю 24 часа.</li>\r\n 	<li>Транспортировка на железнодорожный вокзал или автовокзал, а также в аэропорт.</li>\r\n 	<li>Сопровождение в командировках (даже в других городах).</li>\r\n 	<li>Встреча деловых партнеров или гостей города.</li>\r\n 	<li>Выезд для проведения тимбилдинга и тренингов.</li>\r\n\r\n</ul>\r\n<a href="#">Доставка сотрудников на работу</a>\r\n<ol>и их развоз после корпоративов и многое другое.</ol>\r\nПри организации различных мероприятий (свадьбы, юбилеи и другие праздники) популярной является аренда микроавтобуса с водителем в Минске, которая включает:\r\n<ol>\r\n 	<li>Перевоз гостей до места проведения праздника и назад.</li>\r\n 	<li>Коллективная поездка на отдых.</li>\r\n 	<li>Поездка в торговые центры или другие места с целью совершения покупок.</li>\r\n 	<li>Различные виды экскурсий, в том числе для туристов и школьников (в сопровождении взрослых).</li>\r\n 	<li>Можно заказать микроавтобус на свадьбу а также <a href="#">автомобиль на свадьбу</a>.</li>\r\n</ol>\r\nПрокат микроавтобуса таких марок, как Mersedes Vito, Mercedes Sprinter, Volkswagen Crafter гарантирует комфортные условия перевозки. Можно также выбрать подходящий для вас цвет автомобиля, особенно если речь идет о свадьбе (имеются автомобили белого цвета. Микроавтобус напрокат – это не только удобный способ передвижения, но и просторный салон, мягкие кресла, кондиционер и CD/MP3 проигрыватель.\r\n\r\nМикроавтобус с водителем стоит в среднем от $19 до $30 в час. Вместительность, в зависимости от марки выбранного вами автомобиля, составляет от 6 до 21 человека.\r\n\r\nМикроавтобус с водителем регулярно проходят все необходимые проверки. Автомобиль ежедневно осматривается автомехаником. Водитель сдает анализы на допуск к управлению автомобильным средством.\r\n\r\nЗаказав прокат микроавтобуса, в случае возникновения разного рода форс-мажоров, вам предоставят другой транспорт, который будет по всем параметрам соответствовать заказанному ранее автомобилю.\r\n<h2>Аренда автобуса в Минске</h2>\r\nВ нашей компании Вы можете также заказать автобус <a href="#">Мерседес с водителем</a>, Неоплан или ISUZU. Цена аренды составит всего от $35 в час. Вместительность автобусов зависит от их марки и составляет от 30 до 60 человек.\r\n\r\nЕсли вы решили заказать автобус на свадьбу, то Вы однозначно сэкономите ваши денежные средства, так как Вам не нужно будет оплачивать налоги, страховку, мойку, ремонт и техническое обслуживание автомобиля, а также другие денежные вопросы, связанные со средством передвижения. Мы все сделаем сами, а Вам останется только наслаждаться долгожданным праздником. Если Вы хотите устроить роскошную свадебную церемонию и удивить гостей, <a href="#">прокат лимузинов в Минске</a> работает специально для вас.\r\n\r\nУ нас существует гибкая система скидок: чем дольше длится <a href="#">аренда авто с водителем</a>, тем меньше цена его проката за час. Такие условия не сможет предложить Вам, например, служба такси, где Вы вынуждены будете заплатить не только за саму перевозку, но и за так называемый «простой».\r\n\r\n</div>', 'Главная', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-08-14 17:35:22', '2017-08-14 14:35:22', '', 5, 'http://bus.local/2017/08/14/5-revision-v1/', 0, 'revision', '', 0),
(129, 1, '2017-08-14 17:23:21', '2017-08-14 14:23:21', '<div class="wpb_wrapper">\r\n<h2>Аренда и прокат микроавтобусов в Минске</h2>\r\nЗаказать микроавтобус у нас могут как предприниматели и руководители компаний и организаций, так и физические лица, в том числе дошкольные и школьные учреждения образования.\r\n\r\n<strong>Перечень услуг, которые включает в себя перевозки микроавтобусом:</strong>\r\n<ol>\r\n 	<li style="list-style-type: none;">\r\n<ol>\r\n 	<li>Доставка до места работы и обратно 7 дней в неделю 24 часа.</li>\r\n 	<li>Транспортировка на железнодорожный вокзал или автовокзал, а также в аэропорт.</li>\r\n 	<li>Сопровождение в командировках (даже в других городах).</li>\r\n 	<li>Встреча деловых партнеров или гостей города.</li>\r\n 	<li>Выезд для проведения тимбилдинга и тренингов.</li>\r\n</ol>\r\n</li>\r\n</ol>\r\n<a href="#">Доставка сотрудников на работу</a>\r\n<ol>и их развоз после корпоративов и многое другое.</ol>\r\nПри организации различных мероприятий (свадьбы, юбилеи и другие праздники) популярной является аренда микроавтобуса с водителем в Минске, которая включает:\r\n<ol>\r\n 	<li>Перевоз гостей до места проведения праздника и назад.</li>\r\n 	<li>Коллективная поездка на отдых.</li>\r\n 	<li>Поездка в торговые центры или другие места с целью совершения покупок.</li>\r\n 	<li>Различные виды экскурсий, в том числе для туристов и школьников (в сопровождении взрослых).</li>\r\n 	<li>Можно заказать микроавтобус на свадьбу а также <a href="#">автомобиль на свадьбу</a>.</li>\r\n</ol>\r\nПрокат микроавтобуса таких марок, как Mersedes Vito, Mercedes Sprinter, Volkswagen Crafter гарантирует комфортные условия перевозки. Можно также выбрать подходящий для вас цвет автомобиля, особенно если речь идет о свадьбе (имеются автомобили белого цвета. Микроавтобус напрокат – это не только удобный способ передвижения, но и просторный салон, мягкие кресла, кондиционер и CD/MP3 проигрыватель.\r\n\r\nМикроавтобус с водителем стоит в среднем от $19 до $30 в час. Вместительность, в зависимости от марки выбранного вами автомобиля, составляет от 6 до 21 человека.\r\n\r\nМикроавтобус с водителем регулярно проходят все необходимые проверки. Автомобиль ежедневно осматривается автомехаником. Водитель сдает анализы на допуск к управлению автомобильным средством.\r\n\r\nЗаказав прокат микроавтобуса, в случае возникновения разного рода форс-мажоров, вам предоставят другой транспорт, который будет по всем параметрам соответствовать заказанному ранее автомобилю.\r\n<h2>Аренда автобуса в Минске</h2>\r\nВ нашей компании Вы можете также заказать автобус <a href="#">Мерседес с водителем</a>, Неоплан или ISUZU. Цена аренды составит всего от $35 в час. Вместительность автобусов зависит от их марки и составляет от 30 до 60 человек.\r\n\r\nЕсли вы решили заказать автобус на свадьбу, то Вы однозначно сэкономите ваши денежные средства, так как Вам не нужно будет оплачивать налоги, страховку, мойку, ремонт и техническое обслуживание автомобиля, а также другие денежные вопросы, связанные со средством передвижения. Мы все сделаем сами, а Вам останется только наслаждаться долгожданным праздником. Если Вы хотите устроить роскошную свадебную церемонию и удивить гостей, <a href="#">прокат лимузинов в Минске</a> работает специально для вас.\r\n\r\nУ нас существует гибкая система скидок: чем дольше длится <a href="#">аренда авто с водителем</a>, тем меньше цена его проката за час. Такие условия не сможет предложить Вам, например, служба такси, где Вы вынуждены будете заплатить не только за саму перевозку, но и за так называемый «простой».\r\n\r\n</div>', 'Главная', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-08-14 17:23:21', '2017-08-14 14:23:21', '', 5, 'http://bus.local/2017/08/14/5-revision-v1/', 0, 'revision', '', 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Header Menu', 'header-menu', 0),
(3, 'Second Menu', 'second-menu', 0),
(5, 'лимузин', 'limo', 0),
(9, 'лимузины', 'limo', 0),
(6, 'микроавтобусы', 'van', 0),
(8, 'микроавтобусы', 'van', 0),
(7, 'джипы', 'jeep', 0),
(10, 'джипы', 'jeep', 0),
(11, 'на свадьбу', 'wed', 0),
(12, 'автобусы', 'bus', 0);

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
(48, 3, 0),
(55, 5, 0),
(62, 6, 0),
(63, 7, 0),
(64, 7, 0),
(74, 6, 0),
(74, 8, 0),
(62, 8, 0),
(55, 9, 0),
(63, 10, 0),
(64, 10, 0),
(85, 11, 0),
(80, 11, 0),
(95, 11, 0),
(100, 11, 0),
(105, 11, 0),
(110, 12, 0),
(115, 12, 0),
(119, 12, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 9),
(3, 3, 'nav_menu', '', 0, 6),
(5, 5, 'taxonomy', '', 0, 1),
(6, 6, 'taxonomy', '', 0, 2),
(7, 7, 'taxonomy', '', 0, 2),
(8, 8, 'type', '', 0, 2),
(9, 9, 'type', '', 0, 1),
(10, 10, 'type', '', 0, 2),
(11, 11, 'type', '', 0, 5),
(12, 12, 'type', '', 0, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

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
(23, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(24, 1, 'wp_user-settings-time', '1502721318'),
(25, 1, 'meta-box-order_car', 'a:3:{s:4:"side";s:50:"submitdiv,tagsdiv-type,postimagediv,addictive-plum";s:6:"normal";s:18:"postcustom,slugdiv";s:8:"advanced";s:0:"";}'),
(26, 1, 'screen_layout_car', '2'),
(27, 1, 'closedpostboxes_car', 'a:0:{}'),
(28, 1, 'metaboxhidden_car', 'a:1:{i:0;s:7:"slugdiv";}');

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
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=259;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=419;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
