-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 02, 2018 at 09:53 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bmsce`
--

-- --------------------------------------------------------

--
-- Table structure for table `assesmenttool`
--

CREATE TABLE `assesmenttool` (
  `coursecode` varchar(10) NOT NULL,
  `section` varchar(1) NOT NULL,
  `year` int(4) NOT NULL,
  `internals` int(11) DEFAULT NULL,
  `quiz` int(11) DEFAULT NULL,
  `lab` int(11) DEFAULT NULL,
  `selfstudy` int(11) DEFAULT NULL,
  `aat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attainment`
--

CREATE TABLE `attainment` (
  `coursecode` varchar(10) NOT NULL,
  `section` varchar(1) NOT NULL,
  `year` int(4) NOT NULL,
  `co` text NOT NULL,
  `caym1` float NOT NULL,
  `cay` float NOT NULL,
  `target` float DEFAULT NULL,
  `remark` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cie`
--

CREATE TABLE `cie` (
  `coursecode` varchar(10) NOT NULL,
  `section` varchar(1) NOT NULL,
  `year` int(4) NOT NULL,
  `type` text NOT NULL,
  `qno` text NOT NULL,
  `ru` int(11) NOT NULL,
  `ak` int(11) NOT NULL,
  `an` int(11) NOT NULL,
  `de` int(11) NOT NULL,
  `ao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `copo`
--

CREATE TABLE `copo` (
  `coursecode` varchar(10) NOT NULL,
  `section` varchar(1) NOT NULL,
  `year` int(4) NOT NULL,
  `cono` int(11) DEFAULT NULL,
  `po1` int(11) NOT NULL,
  `po2` int(11) NOT NULL,
  `po3` int(11) NOT NULL,
  `po4` int(11) NOT NULL,
  `po5` int(11) NOT NULL,
  `po6` int(11) NOT NULL,
  `po7` int(11) NOT NULL,
  `po8` int(11) NOT NULL,
  `po9` int(11) NOT NULL,
  `po10` int(11) NOT NULL,
  `po11` int(11) NOT NULL,
  `po12` int(11) NOT NULL,
  `pso1` int(11) NOT NULL,
  `pso2` int(11) NOT NULL,
  `pso3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courseoutcome`
--

CREATE TABLE `courseoutcome` (
  `coursecode` varchar(10) NOT NULL,
  `section` varchar(1) NOT NULL,
  `year` int(4) NOT NULL,
  `co1` text,
  `co2` text,
  `co3` text,
  `co4` text,
  `co5` text,
  `co6` text,
  `co7` text,
  `co8` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courseoutcome`
--

INSERT INTO `courseoutcome` (`coursecode`, `section`, `year`, `co1`, `co2`, `co3`, `co4`, `co5`, `co6`, `co7`, `co8`) VALUES
('', '', 0, '', '', '', '', '', '', '', ''),
(';dkfjls', '', 0, '', '', '', '', '', '', '', ''),
('abcd', '', 0, '', '', '', '', '', '', '', ''),
('hjhjhj', '', 0, '', '', '', '', '', '', '', ''),
('16is5dcmlc', 'a', 0, '', '', '', '', '', '', '', ''),
('abcdefd', 'q', 2018, '', '', '', '', '', '', '', ''),
('643as', '', 0, '', '', '', '', '', '', '', ''),
('', 'y', 0, '', '', '', '', '', '', '', ''),
('lsdkfjs', 'a', 0, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `entry`
--

CREATE TABLE `entry` (
  `coursecode` varchar(10) NOT NULL,
  `section` varchar(1) NOT NULL,
  `year` int(4) NOT NULL,
  `coursetitle` text NOT NULL,
  `credits` int(11) NOT NULL,
  `coursetype` text NOT NULL,
  `noofstudent` int(11) NOT NULL,
  `program` text NOT NULL,
  `faculty` text NOT NULL,
  `sem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entry`
--

INSERT INTO `entry` (`coursecode`, `section`, `year`, `coursetitle`, `credits`, `coursetype`, `noofstudent`, `program`, `faculty`, `sem`) VALUES
('', '', 0, '', 0, 'core', 0, '', '', 0),
('', 'y', 0, '', 4, 'core', 0, '', '', 0),
('16is5dcmlc', 'a', 0, '', 0, 'core', 0, '', '', 0),
('643as', '', 0, '', 6, 'core', 0, '', '', 0),
(';dkfjls', '', 0, '', 0, 'core', 0, '', '', 0),
('abcd', '', 0, '', 0, 'core', 0, '', '', 0),
('abcdefd', 'q', 2018, '', 0, 'core', 0, '', '', 0),
('hjhjhj', '', 0, '', 0, 'core', 0, '', '', 0),
('lsdkfjs', 'a', 0, '', 0, 'core', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `innovation`
--

CREATE TABLE `innovation` (
  `coursecode` varchar(10) NOT NULL,
  `section` varchar(1) NOT NULL,
  `year` int(4) NOT NULL,
  `Innovation` text,
  `Remark` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laboratory`
--

CREATE TABLE `laboratory` (
  `coursecode` varchar(10) NOT NULL,
  `section` varchar(1) NOT NULL,
  `year` int(4) NOT NULL,
  `lno` int(11) NOT NULL,
  `uno` int(11) NOT NULL,
  `name` text NOT NULL,
  `remarks` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laboratory`
--

INSERT INTO `laboratory` (`coursecode`, `section`, `year`, `lno`, `uno`, `name`, `remarks`) VALUES
('', '', 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lectureschedule`
--

CREATE TABLE `lectureschedule` (
  `coursecode` varchar(10) NOT NULL,
  `section` varchar(1) NOT NULL,
  `year` int(4) NOT NULL,
  `lno` int(11) NOT NULL,
  `uno` int(11) NOT NULL,
  `topic` text NOT NULL,
  `remarks` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lectureschedule`
--

INSERT INTO `lectureschedule` (`coursecode`, `section`, `year`, `lno`, `uno`, `topic`, `remarks`) VALUES
('', '', 0, 0, 0, 'dalfn', 'adljf'),
('', '', 0, 0, 0, '.dsfskdjfs', 'ldfj');

-- --------------------------------------------------------

--
-- Table structure for table `see`
--

CREATE TABLE `see` (
  `coursecode` varchar(10) NOT NULL,
  `section` varchar(1) NOT NULL,
  `year` int(4) NOT NULL,
  `qno` text NOT NULL,
  `ru` int(11) NOT NULL,
  `ak` int(11) NOT NULL,
  `an` int(11) NOT NULL,
  `de` int(11) NOT NULL,
  `ao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `selfstudy`
--

CREATE TABLE `selfstudy` (
  `coursecode` varchar(10) NOT NULL,
  `section` varchar(1) NOT NULL,
  `year` int(4) NOT NULL,
  `descripion` text NOT NULL,
  `rubrix` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selfstudy`
--

INSERT INTO `selfstudy` (`coursecode`, `section`, `year`, `descripion`, `rubrix`) VALUES
('', '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE `survey` (
  `coursecode` varchar(10) NOT NULL,
  `section` varchar(1) NOT NULL,
  `year` int(4) NOT NULL,
  `suggestion` text,
  `action` text,
  `summary` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`coursecode`, `section`, `year`, `suggestion`, `action`, `summary`) VALUES
('', '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tutorial`
--

CREATE TABLE `tutorial` (
  `coursecode` varchar(10) NOT NULL,
  `section` varchar(1) NOT NULL,
  `year` int(4) NOT NULL,
  `tno` int(11) NOT NULL,
  `uno` int(11) NOT NULL,
  `topic` text NOT NULL,
  `remarks` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutorial`
--

INSERT INTO `tutorial` (`coursecode`, `section`, `year`, `tno`, `uno`, `topic`, `remarks`) VALUES
('', '', 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/bmsce', 'yes'),
(2, 'home', 'http://localhost/bmsce', 'yes'),
(3, 'blogname', 'BMSCE', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'kunalmehta1996@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:106:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:42:\"turbo sidebars/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"turbo sidebars/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"turbo sidebars/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"turbo sidebars/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"turbo sidebars/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"turbo sidebars/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"turbo sidebars/([^/]+)/embed/?$\";s:50:\"index.php?turbo-sidebar-cpt=$matches[1]&embed=true\";s:35:\"turbo sidebars/([^/]+)/trackback/?$\";s:44:\"index.php?turbo-sidebar-cpt=$matches[1]&tb=1\";s:43:\"turbo sidebars/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?turbo-sidebar-cpt=$matches[1]&paged=$matches[2]\";s:50:\"turbo sidebars/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?turbo-sidebar-cpt=$matches[1]&cpage=$matches[2]\";s:39:\"turbo sidebars/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?turbo-sidebar-cpt=$matches[1]&page=$matches[2]\";s:31:\"turbo sidebars/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"turbo sidebars/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"turbo sidebars/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"turbo sidebars/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"turbo sidebars/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"turbo sidebars/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:37:\"widgets-on-pages/widgets_on_pages.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:9:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:17:\"recent-comments-2\";i:5;s:6:\"text-2\";i:6;s:6:\"text-3\";i:7;s:6:\"text-4\";i:8;s:6:\"text-5\";}s:15:\"wop-report-form\";a:5:{i:0;s:14:\"custom_html-25\";i:1;s:14:\"custom_html-26\";i:2;s:14:\"custom_html-27\";i:3;s:14:\"custom_html-28\";i:4;s:14:\"custom_html-29\";}s:15:\"wop-form-page-2\";a:9:{i:0;s:14:\"custom_html-16\";i:1;s:14:\"custom_html-24\";i:2;s:14:\"custom_html-17\";i:3;s:14:\"custom_html-18\";i:4;s:14:\"custom_html-19\";i:5;s:14:\"custom_html-20\";i:6;s:14:\"custom_html-21\";i:7;s:14:\"custom_html-22\";i:8;s:14:\"custom_html-23\";}s:8:\"wop-form\";a:1:{i:0;s:14:\"custom_html-15\";}s:5:\"wop-1\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:14:\"recent-posts-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'nonce_key', '`Y4Dfmw<qA7X)A$:vgMC[3BRk<Qxnz]3)o):qZxMeh$ha@zjQb~v?6ME0[l$f%c2', 'no'),
(107, 'nonce_salt', '9FY3l~|4vdl )UYXm$JVVsd1c7+lKr!]~6us%?!/anzRQou~]J)W G.BjqAjjEPR', 'no'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(110, 'widget_custom_html', 'a:16:{i:15;a:2:{s:5:\"title\";s:12:\"Faculty Form\";s:7:\"content\";s:25158:\"<form action=\"#\" method=\"post\">\r\n		\r\n	<b>Course Title</b><input type=\"text\" id=\"coursetitle\"><br>\r\n	<b>Course Code</b><input type=\"text\" id=\"coursecode\" maxlength=\"10\"><br>\r\n	<b>Semester</b><input type=\"number\" id=\"semester\" min=\"1\" max=\"10\"><br>\r\n	<b>Section</b><input type=\"text\" id=\"section\" maxlength=\"1\"><br>\r\n	<b>Year</b><input type=\"text\" id=\"year\" maxlength=\"4\"><br>\r\n	<b>Course Type</b><select id=\"coursetype\">\r\n	<option value=\"core\">Core</option>\r\n	<option value=\"elective\">Elective</option>\r\n</select><br>\r\n	<b>Credits</b><input type=\"number\" id=\"credits\"><br>\r\n	<b>No. of Students</b><input type=\"number\" id=\"noofstudents\"><br>\r\n	<b>Program</b><input type=\"text\" id=\"program\">\r\n	<b>Faculty</b><input type=\"text\" id=\"faculty\"><br>\r\n	<b>Course Outcome</b><br><br>\r\n	<table>\r\n		<tr>\r\n			<td>CO1</td>\r\n			<td><input type=\"text\" id=\"co1\"></td>\r\n	</tr>\r\n	<tr>\r\n			<td>CO2</td>\r\n			<td><input type=\"text\" id=\"co2\"></td>\r\n	</tr>\r\n	<tr>\r\n			<td>CO3</td>\r\n			<td><input type=\"text\" id=\"co3\"></td>\r\n	</tr>\r\n	<tr>\r\n			<td>CO4</td>\r\n			<td><input type=\"text\" id=\"co4\"></td>\r\n	</tr>\r\n	<tr>\r\n			<td>CO5</td>\r\n			<td><input type=\"text\" id=\"co5\"></td>\r\n	</tr>\r\n	<tr>\r\n			<td>CO6</td>\r\n			<td><input type=\"text\" id=\"co6\"></td>\r\n	</tr>\r\n	<tr>\r\n			<td>CO7</td>\r\n			<td><input type=\"text\" id=\"co7\"></td>\r\n	</tr>\r\n	<tr>\r\n			<td>CO8</td>\r\n			<td><input type=\"text\" id=\"co8\"></td>\r\n	</tr>\r\n</table>\r\n	<b>CO-PO Mapping</b><br><br>\r\n	<table cellspacing=\"20px\">\r\n	<tr>\r\n		<td></td>\r\n		<td>PO1</td>\r\n		<td>PO2</td>\r\n		<td>PO3</td>\r\n		<td>PO4</td>\r\n		<td>PO5</td>\r\n		<td>PO6</td>\r\n		<td>PO7</td>\r\n		<td>PO8</td>\r\n		<td>PO9</td>\r\n		<td>P10</td>\r\n		<td>P11</td>\r\n		<td>P12</td>\r\n		<td>PSO1</td>\r\n		<td>PSO2</td>\r\n		<td>PSO3</td>\r\n	</tr>\r\n	<tr>\r\n			<td>CO1</td>\r\n			<td><select id=\"11\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"12\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"13\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"14\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"15\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"16\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"17\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"18\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"19\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"110\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"111\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"112\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"113\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"114\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"115\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n	</tr>\r\n	<tr>\r\n			<td>CO1</td>\r\n			<td><select id=\"21\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"22\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"23\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"24\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"25\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"26\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"27\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"28\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"29\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"210\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"211\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"212\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"213\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"214\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"215\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n	</tr>\r\n	<tr>\r\n			<td>CO1</td>\r\n			<td><select id=\"31\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"32\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"33\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"34\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"35\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"36\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"37\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"38\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"39\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"310\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"311\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"312\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"313\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"314\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"315\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n	</tr>\r\n	<tr>\r\n			<td>CO1</td>\r\n			<td><select id=\"41\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"42\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"43\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"44\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"45\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"46\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"47\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"48\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"49\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"410\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"411\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"412\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"413\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"414\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"415\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n	</tr>\r\n	<tr>\r\n			<td>CO1</td>\r\n			<td><select id=\"51\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"52\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"53\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"54\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"55\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"56\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"57\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"58\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"59\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"510\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"511\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"512\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"513\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"514\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"515\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n	</tr>\r\n	<tr>\r\n			<td>CO1</td>\r\n			<td><select id=\"61\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"62\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"63\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"64\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"65\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"66\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"67\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"68\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"69\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"610\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"611\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"612\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"613\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"614\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"615\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n	</tr>\r\n	<tr>\r\n			<td>CO1</td>\r\n			<td><select id=\"71\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"72\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"73\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"74\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"75\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"76\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"77\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"78\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"79\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"710\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"711\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"712\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"713\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"714\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"715\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n	</tr>\r\n	<tr>\r\n			<td>CO1</td>\r\n			<td><select id=\"81\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"82\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"83\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"84\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"85\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"86\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"87\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"88\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"89\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"810\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"811\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"812\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"813\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"814\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n		<td><select id=\"815\">\r\n				<option value=\"0\">N/A</option>\r\n				<option value=\"1\">1</option>\r\n				<option value=\"2\">2</option>\r\n				<option value=\"3\">3</option>\r\n				</select></td>\r\n	</tr>\r\n	\r\n</table>\r\n	<b>Assessment Tool</b><br><br>\r\n	<table>\r\n			<tr>\r\n				<th>Tool</th>\r\n				<th>Remarks</th>\r\n				<th>Marks</th>\r\n				\r\n			</tr>\r\n			<tr>\r\n				<td>Internals</td>\r\n				<td><input type=\"text\" id=\"internalremarks\" value=\"Best 2 of 3\"></td>\r\n				<td><input type=\"number\" id=\"internalmarks\"></td>\r\n			</tr>\r\n			<tr>\r\n				<td>Quiz</td>\r\n				<td><input type=\"text\" id=\"quizremarks\" value=\"One/Average of Two/Best 2 of 3/Any Other\"></td>\r\n				<td><input type=\"number\" id=\"quizmarks\"></td>\r\n			</tr>\r\n			<tr>\r\n				<td>Lab Components</td>\r\n				<td><input type=\"text\" id=\"labremarks\" value=\"If Applicable\"></td>\r\n				<td><input type=\"number\" id=\"labmarks\"></td>\r\n			</tr>\r\n			<tr>\r\n				<td>Self Study Components</td>\r\n				<td><input type=\"text\" id=\"selfremarks\" value=\"If Applicable\"></td>\r\n				<td><input type=\"number\" id=\"selfmarks\"></td>\r\n			</tr>\r\n			<tr>\r\n				<td>AAT Components</td>\r\n				<td><input type=\"text\" id=\"aatremarks\" value=\"Seminar/Mini-project/any other\" ></td>\r\n				<td><input type=\"number\" id=\"aatmarks\"></td>\r\n			</tr>\r\n			<tr >\r\n<td align=\"center\" colspan=\"2\">Total</td>\r\n				<td>50</td>\r\n			</tr>\r\n			\r\n		</table>\r\n	<input type=\"submit\" name=\"sub\" value=\"Submit\" >\r\n	<a href=\"http://localhost/bmsce/faculty-form-2/\">	<input type=\"button\" value=\"Next\"></a>\r\n</form>\";}i:16;a:2:{s:5:\"title\";s:18:\"Select the Faculty\";s:7:\"content\";s:416:\"			<select name=\"\">\r\n				<option>data to be fetched from db</option>\r\n				<option>a</option>\r\n				<option>b</option>\r\n			</select><br><br>\r\n\r\n	<select name=\"\">\r\n				<option>data to be fetched from db</option>\r\n				<option>a</option>\r\n				<option>b</option>\r\n			</select><br><br>\r\n	<select name=\"\">\r\n				<option>data to be fetched from db</option>\r\n				<option>a</option>\r\n				<option>b</option>\r\n			</select><br><br>\";}i:17;a:2:{s:5:\"title\";s:16:\"Lecture Schedule\";s:7:\"content\";s:339:\"<form action=\"\" method=\"post\">\r\n			<b>Lecture Number</b><input type=\"number\" name=\"lecture\"><br>\r\n			<b>Unit Number</b><input type=\"number\" name=\"unit\"><br>\r\n			<b>Topic</b><input type=\"text\" name=\"topic\"><br>\r\n			<b>Remarks</b><input type=\"text\" name=\"remarks\"><br>\r\n			<input type=\"submit\" id=\"sublecture\" value=\"Add Lecture \">\r\n	</form>\";}i:18;a:2:{s:5:\"title\";s:18:\"Tutorials Schedule\";s:7:\"content\";s:343:\"<form action=\"\" method=\"post\">\r\n			<b>Tutorial Number</b><input type=\"number\" name=\"tutorial\"><br>\r\n			<b>Unit Number</b><input type=\"number\" name=\"unit\"><br>\r\n			<b>Topic</b><input type=\"text\" name=\"topic\"><br>\r\n			<b>Remarks</b><input type=\"text\" name=\"remarks\"><br>\r\n			<input type=\"submit\" id=\"subtutorial\" value=\"Add Tutorial \">\r\n	</form>\";}i:19;a:2:{s:5:\"title\";s:19:\"Laboratory Schedule\";s:7:\"content\";s:360:\"<form action=\"\" method=\"post\">\r\n			<b>Experiment Number</b><input type=\"number\" name=\"experiment\"><br>\r\n			<b>Unit Number</b><input type=\"number\" name=\"unit\"><br>\r\n			<b>Experiment Name</b><input type=\"text\" name=\"experimentname\"><br>\r\n			<b>Remarks</b><input type=\"text\" name=\"remarks\"><br>\r\n			<input type=\"submit\" id=\"sublab\" value=\"Add Lecture \">\r\n	</form>\";}i:20;a:2:{s:5:\"title\";s:10:\"Self Study\";s:7:\"content\";s:250:\"<form action=\"\" method=\"post\">\r\n			\r\n			<b>Activity Description</b><input type=\"text\" name=\"topic\"><br>\r\n			<b>Evaluation Rubricks</b><input type=\"text\" name=\"rubricks\"><br>\r\n			<input type=\"submit\" id=\"subselfsudy\" value=\"Add Self Study \">\r\n	</form>\";}i:21;a:2:{s:5:\"title\";s:10:\"Suggestion\";s:7:\"content\";s:185:\"<form action=\"\" method=\"post\">\r\n			<b>Suggestion for Improvement</b><input type=\"text\" name=\"suggestion\"><br>\r\n			<input type=\"submit\" id=\"sublecture\" value=\"Add Suggestion \">\r\n	</form>\";}i:22;a:2:{s:5:\"title\";s:7:\"Actions\";s:7:\"content\";s:162:\"<form action=\"\" method=\"post\">\r\n			\r\n			<b>Action</b><input type=\"text\" name=\"ctions\"><br>\r\n			<input type=\"submit\" id=\"sublecture\" value=\"Add Action \">\r\n	</form>\";}i:23;a:2:{s:5:\"title\";s:17:\"Course End Survey\";s:7:\"content\";s:165:\"<form action=\"\" method=\"post\">\r\n			\r\n			<b>Summary</b><input type=\"text\" name=\"summary\"><br>\r\n			<input type=\"submit\" id=\"sublecture\" value=\"Add Summary \">\r\n	</form>\";}i:24;a:2:{s:5:\"title\";s:29:\"Assessment Tool Mapping to CO\";s:7:\"content\";s:7881:\"<form action =\"\" method=\"post\">\r\n	\r\n\r\n<table>\r\n			<tr>\r\n				<th></th>\r\n				<th>CO1</th>\r\n				<th>CO2</th>\r\n				<th>CO3</th>\r\n				<th>CO4</th>\r\n				<th>CO5</th>\r\n				<th>CO6</th>\r\n				<th>CO7</th>\r\n				<th>CO8</th>\r\n				<th>Total</th>\r\n			</tr>\r\n			<tr>\r\n				<td>Test-1</td>\r\n				<td><select id=\"11\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"12\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"13\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"14\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"15\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"16\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"17\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"18\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><input type=\"number\" name=\"1T\"></td>\r\n				\r\n				\r\n			</tr>\r\n			<tr>\r\n				<td>Test-2</td>\r\n				<td><select id=\"21\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"22\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"23\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"24\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"25\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"26\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"27\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"28\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><input type=\"number\" name=\"2T\"></td>\r\n				\r\n				\r\n			</tr>\r\n			<tr>\r\n				<td>Test-3</td>\r\n				<td><select id=\"31\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"32\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"33\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"34\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"35\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"36\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"37\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"38\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><input type=\"number\" name=\"3T\"></td>\r\n				\r\n				\r\n			</tr>\r\n			<tr>\r\n				<td>Quiz-2</td>\r\n				<td><select id=\"41\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"42\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"43\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"44\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"45\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"46\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"47\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"48\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><input type=\"number\" name=\"1Q\"></td>\r\n				\r\n				\r\n			</tr>\r\n			<tr>\r\n				<td>Quiz-1</td>\r\n				<td><select id=\"51\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"52\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"53\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"54\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"55\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"56\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"57\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><select id=\"58\"><option value=\"0\">N/A</option><option value=\"1\">1</option><option value=\"2\">2</option><option value=\"3\">3</option></select></td>\r\n				<td><input type=\"number\" name=\"2Q\"></td>\r\n				\r\n				\r\n			</tr>\r\n			<tr>\r\n				<td>Total Marks</td>\r\n				<td><input type=\"number\" name=\"61\"></td>\r\n				<td><input type=\"number\" name=\"62\"></td>\r\n				<td><input type=\"number\" name=\"63\"></td>\r\n				<td><input type=\"number\" name=\"64\"></td>\r\n				<td><input type=\"number\" name=\"65\"></td>\r\n				<td><input type=\"number\" name=\"66\"></td>\r\n				<td><input type=\"number\" name=\"67\"></td>\r\n				<td><input type=\"number\" name=\"68\"></td>\r\n				<td><input type=\"number\" name=\"69\"></td>\r\n			</tr>\r\n			<tr>\r\n				<td>Percentage</td>\r\n				<td><input type=\"number\" name=\"71\"></td>\r\n				<td><input type=\"number\" name=\"72\"></td>\r\n				<td><input type=\"number\" name=\"73\"></td>\r\n				<td><input type=\"number\" name=\"74\"></td>\r\n				<td><input type=\"number\" name=\"75\"></td>\r\n				<td><input type=\"number\" name=\"76\"></td>\r\n				<td><input type=\"number\" name=\"77\"></td>\r\n				<td><input type=\"number\" name=\"78\"></td>\r\n				<td><input type=\"number\" name=\"79\"></td>\r\n			</tr>\r\n</table><br>\r\n	<input type=\"submit\" value=\"Submit\" id=\"sub\">\r\n</form>\";}i:25;a:2:{s:5:\"title\";s:18:\"Select the Faculty\";s:7:\"content\";s:416:\"			<select name=\"\">\r\n				<option>data to be fetched from db</option>\r\n				<option>a</option>\r\n				<option>b</option>\r\n			</select><br><br>\r\n\r\n	<select name=\"\">\r\n				<option>data to be fetched from db</option>\r\n				<option>a</option>\r\n				<option>b</option>\r\n			</select><br><br>\r\n	<select name=\"\">\r\n				<option>data to be fetched from db</option>\r\n				<option>a</option>\r\n				<option>b</option>\r\n			</select><br><br>\";}i:26;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:48:\"Semester<br>\r\n<input type=\"text\" id=\"reportsem\">\";}i:27;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:55:\"Course Title<br>\r\n<input type=\"text\" id=\"reportcourse\">\";}i:28;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:56:\"Faculty Name<br>\r\n<input type=\"text\" id=\"reportfaculty\">\";}i:29;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:715:\"<form action=\"\" method=\"post\">\r\n	Correlation Factor<br>\r\n	<input type=\"text\" name=\"coorelationfactor\"><br>\r\n	Number of students<br>\r\n	<input type=\"number\" name=\"numberofstudent\"><br>\r\n	S<br>\r\n	<input type=\"number\" name=\"s\"><br>\r\n	A<br>\r\n	<input type=\"number\" name=\"a\"><br>\r\n	B<br>\r\n	<input type=\"number\" name=\"b\"><br>\r\n	C<br>\r\n	<input type=\"number\" name=\"c\"><br>\r\n	D<br>\r\n	<input type=\"number\" name=\"d\"><br>\r\n	E<br>\r\n	<input type=\"number\" name=\"e\"><br>\r\n	F<br>\r\n	<input type=\"number\" name=\"f\"><br>\r\n	X<br>\r\n	<input type=\"number\" name=\"x\"><br>\r\n	I<br>\r\n	<input type=\"number\" name=\"i\"><br>\r\n	Self Audit By Faculty<br>\r\n	<input type=\"text\" name=\"selfaudit\"><br>\r\n	<input type=\"submit\" value=\"Submit\" id=\"sub\">\r\n</form>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1517563336;a:1:{s:29:\"fs_data_sync_widgets-on-pages\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1517603538;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1517646785;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1517646880;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:49;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:2;}}', 'yes'),
(115, 'logged_in_key', 'HdPfrij+^>wmmeWeU`1fY}tiHy1n?Sv3b!e%DS*,!=PRj|-}S|@?FPrJ a8J#6cD', 'no'),
(116, 'logged_in_salt', 'P(R+tQHRl*8GwTE>Krsym{#%TlY oRB2cSzU9Bh-rh{}yHE@a.*s`ScTW6.hIdM}', 'no'),
(123, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1517561521;s:7:\"checked\";a:3:{s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(124, 'auth_key', '[&d2ViT(.&:Iz{x7Hy&<s(mKdYir(nY>+ZKgmL(dmP#1$Mky~9Fu-Q)>,8_`CB:q', 'no'),
(125, 'auth_salt', 'CKes#~%( m!J4TCqS/r=ja6^dBxgSyCF4Jnqto_p9/&/vP:7YrSficSI~0h;WU0:', 'no'),
(130, 'can_compress_scripts', '1', 'no'),
(133, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.2\";s:7:\"version\";s:5:\"4.9.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1517561516;s:15:\"version_checked\";s:5:\"4.9.2\";s:12:\"translations\";a:0:{}}', 'no'),
(144, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"kunalmehta1996@gmail.com\";s:7:\"version\";s:5:\"4.9.2\";s:9:\"timestamp\";i:1516782798;}', 'no'),
(155, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(163, 'recently_activated', 'a:0:{}', 'yes'),
(168, 'fs_active_plugins', 'O:8:\"stdClass\":2:{s:7:\"plugins\";a:1:{s:25:\"widgets-on-pages/freemius\";O:8:\"stdClass\":3:{s:7:\"version\";s:9:\"1.2.1.6.1\";s:9:\"timestamp\";i:1516783552;s:11:\"plugin_path\";s:37:\"widgets-on-pages/widgets_on_pages.php\";}}s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:37:\"widgets-on-pages/widgets_on_pages.php\";s:8:\"sdk_path\";s:25:\"widgets-on-pages/freemius\";s:7:\"version\";s:9:\"1.2.1.6.1\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1516783552;}}', 'yes'),
(169, 'fs_debug_mode', '', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(170, 'fs_accounts', 'a:10:{s:11:\"plugin_data\";a:1:{s:16:\"widgets-on-pages\";a:19:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:78:\"F:/xampp/htdocs/bmsce/wp-content/plugins/widgets-on-pages/widgets_on_pages.php\";}s:17:\"install_timestamp\";i:1516783553;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:9:\"1.2.1.6.1\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"1.4.0\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:21:\"is_plugin_new_install\";b:1;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1516783553;s:7:\"version\";s:5:\"1.4.0\";}s:17:\"was_plugin_loaded\";b:1;s:15:\"prev_is_premium\";b:0;s:14:\"has_trial_plan\";b:0;s:22:\"install_sync_timestamp\";i:1517557348;s:20:\"activation_timestamp\";i:1516783562;s:9:\"sync_cron\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"1.4.0\";s:11:\"sdk_version\";s:9:\"1.2.1.6.1\";s:9:\"timestamp\";i:1516783569;s:2:\"on\";b:1;}s:14:\"sync_timestamp\";i:1517557347;}}s:13:\"file_slug_map\";a:1:{s:37:\"widgets-on-pages/widgets_on_pages.php\";s:16:\"widgets-on-pages\";}s:7:\"plugins\";a:1:{s:16:\"widgets-on-pages\";O:9:\"FS_Plugin\":16:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:16:\"Widgets On Pages\";s:4:\"slug\";s:16:\"widgets-on-pages\";s:4:\"type\";N;s:4:\"file\";s:37:\"widgets-on-pages/widgets_on_pages.php\";s:7:\"version\";s:5:\"1.4.0\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:7:\"is_live\";b:1;s:10:\"public_key\";s:32:\"pk_cc686be98cc9dc884d69bfce70cfc\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"1049\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"e89510fe6083f15ba3d3090829b2a3a9\";s:5:\"plans\";a:1:{s:16:\"widgets-on-pages\";a:2:{i:0;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:8:\"MTA0OQ==\";s:4:\"name\";s:8:\"ZnJlZQ==\";s:5:\"title\";s:8:\"RnJlZQ==\";s:11:\"description\";N;s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:4:\"MQ==\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:0:\"\";s:2:\"id\";s:8:\"MTQ1Nw==\";s:7:\"updated\";s:28:\"MjAxNy0wNS0yMCAyMDo0OToyOA==\";s:7:\"created\";s:28:\"MjAxNy0wNS0xNSAwNzo0OTozMw==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:1;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:8:\"MTA0OQ==\";s:4:\"name\";s:4:\"cHJv\";s:5:\"title\";s:16:\"UHJvZmVzc2lvbmFs\";s:11:\"description\";s:44:\"Q29kZS1mcmVlIG1hbmFnZW1lbnQgYW5kIGxheW91dA==\";s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:4:\"MQ==\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";s:28:\"c3VwcG9ydEBkYXRhbWFkLmNvLnVr\";s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:4:\"MQ==\";s:2:\"id\";s:8:\"MTQ2Ng==\";s:7:\"updated\";s:28:\"MjAxNy0wNS0yMCAyMDo1OTo0Ng==\";s:7:\"created\";s:28:\"MjAxNy0wNS0yMCAyMDowOTowOA==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}s:5:\"sites\";a:1:{s:16:\"widgets-on-pages\";O:7:\"FS_Site\":24:{s:4:\"slug\";s:16:\"widgets-on-pages\";s:7:\"site_id\";s:7:\"3286031\";s:9:\"plugin_id\";s:4:\"1049\";s:7:\"user_id\";s:6:\"921849\";s:5:\"title\";s:5:\"BMSCE\";s:3:\"url\";s:22:\"http://localhost/bmsce\";s:7:\"version\";s:5:\"1.4.0\";s:8:\"language\";s:5:\"en-US\";s:7:\"charset\";s:5:\"UTF-8\";s:16:\"platform_version\";s:5:\"4.9.2\";s:11:\"sdk_version\";s:9:\"1.2.1.6.1\";s:28:\"programming_language_version\";s:5:\"7.2.1\";s:4:\"plan\";O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:8:\"MTA0OQ==\";s:4:\"name\";s:8:\"ZnJlZQ==\";s:5:\"title\";s:8:\"RnJlZQ==\";s:11:\"description\";N;s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:4:\"MQ==\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:0:\"\";s:2:\"id\";s:8:\"MTQ1Nw==\";s:7:\"updated\";s:28:\"MjAxNy0wNS0yMCAyMDo0OToyOA==\";s:7:\"created\";s:28:\"MjAxNy0wNS0xNSAwNzo0OTozMw==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}s:10:\"license_id\";N;s:13:\"trial_plan_id\";N;s:10:\"trial_ends\";N;s:10:\"is_premium\";b:0;s:15:\"is_disconnected\";b:0;s:10:\"public_key\";s:32:\"pk_fea31b4fbc81789a8ac70fd930520\";s:10:\"secret_key\";s:32:\"sk_qjPXW-7WeO00C]A~HGfx>hjXIlU=K\";s:2:\"id\";s:7:\"1187620\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2018-01-24 08:46:01\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:11:\"all_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1517557348;s:3:\"md5\";s:32:\"b9b4e22d3eb8794dce231afc3cc5c8bd\";s:7:\"plugins\";a:3:{s:19:\"akismet/akismet.php\";a:5:{s:4:\"slug\";s:7:\"akismet\";s:7:\"version\";s:5:\"4.0.1\";s:5:\"title\";s:17:\"Akismet Anti-Spam\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:9:\"hello.php\";a:5:{s:4:\"slug\";s:11:\"hello-dolly\";s:7:\"version\";s:3:\"1.6\";s:5:\"title\";s:11:\"Hello Dolly\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:37:\"widgets-on-pages/widgets_on_pages.php\";a:5:{s:4:\"slug\";s:16:\"widgets-on-pages\";s:7:\"version\";s:5:\"1.4.0\";s:5:\"title\";s:16:\"Widgets On Pages\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}}}s:10:\"all_themes\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1517557348;s:3:\"md5\";s:32:\"d3b93fbbc5615ef5a8a54198d3e5780e\";s:6:\"themes\";a:3:{s:13:\"twentyfifteen\";a:5:{s:4:\"slug\";s:13:\"twentyfifteen\";s:7:\"version\";s:3:\"1.9\";s:5:\"title\";s:14:\"Twenty Fifteen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:15:\"twentyseventeen\";a:5:{s:4:\"slug\";s:15:\"twentyseventeen\";s:7:\"version\";s:3:\"1.4\";s:5:\"title\";s:16:\"Twenty Seventeen\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:13:\"twentysixteen\";a:5:{s:4:\"slug\";s:13:\"twentysixteen\";s:7:\"version\";s:3:\"1.4\";s:5:\"title\";s:14:\"Twenty Sixteen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}}}s:5:\"users\";a:1:{i:921849;O:7:\"FS_User\":12:{s:5:\"email\";s:24:\"kunalmehta1996@gmail.com\";s:5:\"first\";s:5:\"bmsce\";s:4:\"last\";s:0:\"\";s:11:\"is_verified\";b:0;s:11:\"customer_id\";N;s:5:\"gross\";i:0;s:10:\"public_key\";s:32:\"pk_6f9b592a7e68353179885dea41afe\";s:10:\"secret_key\";s:32:\"sk_3ID_~YYogI+ssqWwf@R:(*Pe;Al!V\";s:2:\"id\";s:6:\"921849\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2018-01-24 08:46:01\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:8:\"licenses\";a:1:{s:16:\"widgets-on-pages\";a:1:{i:921849;a:0:{}}}}', 'yes'),
(171, 'fs_api_cache', 'a:4:{s:25:\"get:/v1/users/921849.json\";O:8:\"stdClass\":2:{s:6:\"result\";O:8:\"stdClass\":15:{s:11:\"customer_id\";N;s:15:\"default_card_id\";N;s:5:\"gross\";i:0;s:6:\"source\";i:0;s:5:\"email\";s:24:\"kunalmehta1996@gmail.com\";s:5:\"first\";s:5:\"bmsce\";s:4:\"last\";s:0:\"\";s:7:\"picture\";N;s:2:\"ip\";s:12:\"115.99.9.172\";s:11:\"is_verified\";b:0;s:10:\"secret_key\";s:32:\"sk_3ID_~YYogI+ssqWwf@R:(*Pe;Al!V\";s:10:\"public_key\";s:32:\"pk_6f9b592a7e68353179885dea41afe\";s:2:\"id\";s:6:\"921849\";s:7:\"created\";s:19:\"2018-01-24 08:46:01\";s:7:\"updated\";N;}s:9:\"timestamp\";i:1516869962;}s:29:\"get:/v1/installs/1187620.json\";O:8:\"stdClass\":2:{s:6:\"result\";O:8:\"stdClass\":30:{s:7:\"site_id\";s:7:\"3286031\";s:9:\"plugin_id\";s:4:\"1049\";s:7:\"user_id\";s:6:\"921849\";s:3:\"url\";s:22:\"http://localhost/bmsce\";s:5:\"title\";s:5:\"BMSCE\";s:7:\"version\";s:5:\"1.4.0\";s:7:\"plan_id\";s:4:\"1457\";s:10:\"license_id\";N;s:13:\"trial_plan_id\";N;s:10:\"trial_ends\";N;s:15:\"subscription_id\";N;s:5:\"gross\";i:0;s:12:\"country_code\";s:2:\"in\";s:8:\"language\";s:5:\"en-US\";s:7:\"charset\";s:5:\"UTF-8\";s:16:\"platform_version\";s:5:\"4.9.2\";s:11:\"sdk_version\";s:9:\"1.2.1.6.1\";s:28:\"programming_language_version\";s:5:\"7.2.1\";s:9:\"is_active\";b:1;s:15:\"is_disconnected\";b:0;s:10:\"is_premium\";b:0;s:14:\"is_uninstalled\";b:0;s:9:\"is_locked\";b:0;s:6:\"source\";i:0;s:8:\"upgraded\";N;s:10:\"secret_key\";s:32:\"sk_qjPXW-7WeO00C]A~HGfx>hjXIlU=K\";s:10:\"public_key\";s:32:\"pk_fea31b4fbc81789a8ac70fd930520\";s:2:\"id\";s:7:\"1187620\";s:7:\"created\";s:19:\"2018-01-24 08:46:01\";s:7:\"updated\";N;}s:9:\"timestamp\";i:1516869962;}s:35:\"get:/v1/installs/1187620/plans.json\";O:8:\"stdClass\":2:{s:6:\"result\";O:8:\"stdClass\":1:{s:5:\"plans\";a:2:{i:0;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:4:\"1049\";s:4:\"name\";s:4:\"free\";s:5:\"title\";s:4:\"Free\";s:11:\"description\";N;s:17:\"is_free_localhost\";b:1;s:17:\"is_block_features\";b:1;s:12:\"license_type\";i:0;s:16:\"is_https_support\";b:1;s:12:\"trial_period\";N;s:23:\"is_require_subscription\";b:0;s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";b:0;s:11:\"is_featured\";b:0;s:2:\"id\";s:4:\"1457\";s:7:\"updated\";s:19:\"2017-05-20 20:49:28\";s:7:\"created\";s:19:\"2017-05-15 07:49:33\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:1;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:4:\"1049\";s:4:\"name\";s:3:\"pro\";s:5:\"title\";s:12:\"Professional\";s:11:\"description\";s:31:\"Code-free management and layout\";s:17:\"is_free_localhost\";b:1;s:17:\"is_block_features\";b:1;s:12:\"license_type\";i:0;s:16:\"is_https_support\";b:1;s:12:\"trial_period\";N;s:23:\"is_require_subscription\";b:0;s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";s:21:\"support@datamad.co.uk\";s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";b:0;s:11:\"is_featured\";b:1;s:2:\"id\";s:4:\"1466\";s:7:\"updated\";s:19:\"2017-05-20 20:59:46\";s:7:\"created\";s:19:\"2017-05-20 20:09:08\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}s:9:\"timestamp\";i:1517482017;}s:47:\"get:/v1/users/921849/plugins/1049/licenses.json\";O:8:\"stdClass\":2:{s:6:\"result\";O:8:\"stdClass\":1:{s:8:\"licenses\";a:0:{}}s:9:\"timestamp\";i:1517482017;}}', 'yes'),
(173, 'wop_plugin_version', '1.4.0', 'yes'),
(174, 'wop_options_field', 'a:1:{s:10:\"enable_css\";s:1:\"1\";}', 'yes'),
(202, 'page_for_posts', '0', 'yes'),
(219, 'theme_mods_twentyfifteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(220, 'theme_mods_twentysixteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(331, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1517561518;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.1\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"widgets-on-pages/widgets_on_pages.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/widgets-on-pages\";s:4:\"slug\";s:16:\"widgets-on-pages\";s:6:\"plugin\";s:37:\"widgets-on-pages/widgets_on_pages.php\";s:11:\"new_version\";s:5:\"1.4.0\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/widgets-on-pages/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/widgets-on-pages.1.4.zip\";s:5:\"icons\";a:4:{s:2:\"1x\";s:69:\"https://ps.w.org/widgets-on-pages/assets/icon-128x128.png?rev=1397931\";s:2:\"2x\";s:69:\"https://ps.w.org/widgets-on-pages/assets/icon-256x256.png?rev=1397931\";s:3:\"svg\";s:61:\"https://ps.w.org/widgets-on-pages/assets/icon.svg?rev=1400727\";s:7:\"default\";s:61:\"https://ps.w.org/widgets-on-pages/assets/icon.svg?rev=1400727\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:70:\"https://ps.w.org/widgets-on-pages/assets/banner-772x250.png?rev=478725\";s:7:\"default\";s:70:\"https://ps.w.org/widgets-on-pages/assets/banner-772x250.png?rev=478725\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(332, '_site_transient_timeout_browser_b876c8fd7fc402e60530b64622320f7a', '1518000437', 'no'),
(333, '_site_transient_browser_b876c8fd7fc402e60530b64622320f7a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"63.0.3239.132\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(345, '_transient_is_multi_author', '0', 'yes'),
(353, '_site_transient_timeout_theme_roots', '1517563320', 'no'),
(354, '_site_transient_theme_roots', 'a:3:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(40, 16, '_edit_last', '1'),
(41, 16, '_edit_lock', '1516782941:1'),
(52, 19, '_customize_changeset_uuid', 'a4be086d-4ce2-4f62-8ee9-391ba9de6959'),
(53, 20, '_wp_trash_meta_status', 'publish'),
(54, 20, '_wp_trash_meta_time', '1516783147'),
(58, 16, '_wp_trash_meta_status', 'publish'),
(59, 16, '_wp_trash_meta_time', '1516783186'),
(60, 16, '_wp_desired_post_slug', 'report'),
(61, 2, '_wp_trash_meta_status', 'publish'),
(62, 2, '_wp_trash_meta_time', '1516783188'),
(63, 2, '_wp_desired_post_slug', 'sample-page'),
(64, 19, '_wp_trash_meta_status', 'publish'),
(65, 19, '_wp_trash_meta_time', '1516783191'),
(66, 19, '_wp_desired_post_slug', 'report-2'),
(69, 25, '_edit_last', '1'),
(70, 25, '_edit_lock', '1517066798:1'),
(72, 29, '_edit_last', '1'),
(73, 29, '_edit_lock', '1516783614:1'),
(74, 27, '_edit_lock', '1516784362:1'),
(83, 32, '_menu_item_type', 'post_type'),
(84, 32, '_menu_item_menu_item_parent', '0'),
(85, 32, '_menu_item_object_id', '25'),
(86, 32, '_menu_item_object', 'page'),
(87, 32, '_menu_item_target', ''),
(88, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 32, '_menu_item_xfn', ''),
(90, 32, '_menu_item_url', ''),
(91, 27, '_wp_trash_meta_status', 'publish'),
(92, 27, '_wp_trash_meta_time', '1516784366'),
(97, 35, '_wp_trash_meta_status', 'publish'),
(98, 35, '_wp_trash_meta_time', '1516784823'),
(99, 36, '_edit_last', '1'),
(100, 36, '_edit_lock', '1516796836:1'),
(101, 38, '_wp_trash_meta_status', 'publish'),
(102, 38, '_wp_trash_meta_time', '1516786598'),
(103, 39, '_edit_last', '1'),
(104, 39, '_edit_lock', '1516786778:1'),
(105, 39, '_wp_trash_meta_status', 'publish'),
(106, 39, '_wp_trash_meta_time', '1516801408'),
(107, 39, '_wp_desired_post_slug', 'co-form'),
(108, 41, '_edit_last', '1'),
(109, 41, '_edit_lock', '1516857553:1'),
(110, 42, '_edit_last', '1'),
(111, 42, '_edit_lock', '1517320865:1'),
(112, 46, '_wp_trash_meta_status', 'publish'),
(113, 46, '_wp_trash_meta_time', '1516860863'),
(116, 48, '_wp_trash_meta_status', 'publish'),
(117, 48, '_wp_trash_meta_time', '1516861169'),
(118, 51, '_wp_trash_meta_status', 'publish'),
(119, 51, '_wp_trash_meta_time', '1516861179'),
(120, 53, '_edit_last', '1'),
(121, 53, '_edit_lock', '1516898275:1'),
(123, 42, '_wp_page_template', 'page2.php'),
(124, 36, '_wp_trash_meta_status', 'publish'),
(125, 36, '_wp_trash_meta_time', '1517066922'),
(126, 36, '_wp_desired_post_slug', 'faculty-self-audit'),
(127, 25, '_wp_page_template', 'page3.php'),
(128, 61, '_edit_last', '1'),
(129, 61, '_wp_page_template', 'page1.php'),
(130, 61, '_edit_lock', '1517395900:1'),
(143, 72, '_edit_last', '1'),
(144, 72, '_edit_lock', '1517396441:1'),
(145, 72, '_wp_page_template', 'page1.php'),
(164, 78, '_menu_item_type', 'post_type'),
(165, 78, '_menu_item_menu_item_parent', '0'),
(166, 78, '_menu_item_object_id', '72'),
(167, 78, '_menu_item_object', 'page'),
(168, 78, '_menu_item_target', ''),
(169, 78, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(170, 78, '_menu_item_xfn', ''),
(171, 78, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2018-01-24 08:32:15', '2018-01-24 08:32:15', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/bmsce/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-01-24 08:39:48', '2018-01-24 08:39:48', '', 0, 'http://localhost/bmsce/?page_id=2', 0, 'page', '', 0),
(16, 1, '2018-01-24 08:38:01', '2018-01-24 08:38:01', '', 'Report', '', 'trash', 'closed', 'closed', '', 'report__trashed', '', '', '2018-01-24 08:39:46', '2018-01-24 08:39:46', '', 0, 'http://localhost/bmsce/?page_id=16', 0, 'page', '', 0),
(17, 1, '2018-01-24 08:38:01', '2018-01-24 08:38:01', '', 'Report', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-01-24 08:38:01', '2018-01-24 08:38:01', '', 16, 'http://localhost/bmsce/2018/01/24/16-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-01-24 08:39:07', '2018-01-24 08:39:07', '', 'Report', '', 'trash', 'closed', 'closed', '', 'report-2__trashed', '', '', '2018-01-24 08:39:51', '2018-01-24 08:39:51', '', 0, 'http://localhost/bmsce/?page_id=19', 0, 'page', '', 0),
(20, 1, '2018-01-24 08:39:07', '2018-01-24 08:39:07', '{\n    \"page_on_front\": {\n        \"value\": \"13\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 08:39:07\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"16\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 08:39:07\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            19\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 08:39:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a4be086d-4ce2-4f62-8ee9-391ba9de6959', '', '', '2018-01-24 08:39:07', '2018-01-24 08:39:07', '', 0, 'http://localhost/bmsce/2018/01/24/a4be086d-4ce2-4f62-8ee9-391ba9de6959/', 0, 'customize_changeset', '', 0),
(21, 1, '2018-01-24 08:39:07', '2018-01-24 08:39:07', '', 'Report', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-01-24 08:39:07', '2018-01-24 08:39:07', '', 19, 'http://localhost/bmsce/2018/01/24/19-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-01-24 08:39:48', '2018-01-24 08:39:48', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/bmsce/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-01-24 08:39:48', '2018-01-24 08:39:48', '', 2, 'http://localhost/bmsce/2018/01/24/2-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-01-24 08:40:36', '2018-01-24 08:40:36', '', 'Report', '', 'publish', 'closed', 'closed', '', 'report', '', '', '2018-01-27 15:28:57', '2018-01-27 15:28:57', '', 0, 'http://localhost/bmsce/?page_id=25', 0, 'page', '', 0),
(26, 1, '2018-01-24 08:40:36', '2018-01-24 08:40:36', 'This is report page', 'Report', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-01-24 08:40:36', '2018-01-24 08:40:36', '', 25, 'http://localhost/bmsce/2018/01/24/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-01-24 08:59:22', '2018-01-24 08:59:22', '{\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 08:41:59\"\n    },\n    \"nav_menu_item[15]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 08:41:59\"\n    },\n    \"nav_menu_item[18]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 08:41:59\"\n    },\n    \"nav_menu_item[-1836524939]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 08:41:59\"\n    },\n    \"nav_menu_item[-170662583]\": {\n        \"value\": {\n            \"object_id\": 23,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Faculty\",\n            \"url\": \"http://localhost/bmsce/faculty/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Faculty\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 08:41:59\"\n    },\n    \"nav_menu_item[-212649674]\": {\n        \"value\": {\n            \"object_id\": 25,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Report\",\n            \"url\": \"http://localhost/bmsce/report/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Report\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 08:41:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '420793ba-e9e7-4305-8f4a-b7bc87222ca6', '', '', '2018-01-24 08:59:22', '2018-01-24 08:59:22', '', 0, 'http://localhost/bmsce/?p=27', 0, 'customize_changeset', '', 0),
(28, 1, '2018-01-24 08:45:55', '2018-01-24 08:45:55', '', '1', '1', 'publish', 'closed', 'closed', '', '1', '', '', '2018-01-24 08:45:55', '2018-01-24 08:45:55', '', 0, 'http://localhost/bmsce/2018/01/24/1/', 0, 'turbo-sidebar-cpt', '', 0),
(29, 1, '2018-01-24 08:47:52', '2018-01-24 08:47:52', '', 'Form', '', 'publish', 'closed', 'closed', '', 'form', '', '', '2018-01-24 08:47:52', '2018-01-24 08:47:52', '', 0, 'http://localhost/bmsce/?post_type=turbo-sidebar-cpt&#038;p=29', 0, 'turbo-sidebar-cpt', '', 0),
(32, 1, '2018-01-24 08:59:25', '2018-01-24 08:59:25', '', 'Result Analysis', '', 'publish', 'closed', 'closed', '', '32', '', '', '2018-01-31 10:58:22', '2018-01-31 10:58:22', '', 0, 'http://localhost/bmsce/2018/01/24/32/', 2, 'nav_menu_item', '', 0),
(35, 1, '2018-01-24 09:07:03', '2018-01-24 09:07:03', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"recent-posts-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 09:07:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5e5e2dfe-cc09-414b-9312-dc0f0108a6c4', '', '', '2018-01-24 09:07:03', '2018-01-24 09:07:03', '', 0, 'http://localhost/bmsce/2018/01/24/5e5e2dfe-cc09-414b-9312-dc0f0108a6c4/', 0, 'customize_changeset', '', 0),
(36, 1, '2018-01-24 09:27:54', '2018-01-24 09:27:54', '[widgets_on_pages id=\"CO Form\"]', 'Faculty Self-Audit', '', 'trash', 'closed', 'closed', '', 'faculty-self-audit__trashed', '', '', '2018-01-27 15:28:42', '2018-01-27 15:28:42', '', 0, 'http://localhost/bmsce/?page_id=36', 0, 'page', '', 0),
(37, 1, '2018-01-24 09:27:54', '2018-01-24 09:27:54', '', 'Faculty Self-Audit', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-01-24 09:27:54', '2018-01-24 09:27:54', '', 36, 'http://localhost/bmsce/2018/01/24/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-01-24 09:36:38', '2018-01-24 09:36:38', '{\n    \"widget_custom_html[12]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjA6IiI7czo3OiJjb250ZW50IjtzOjk1OiI8YSBocmVmPSJsb2NhbGhvc3QvYm1zY2UvZmFjdWx0eS1zZWxmLWF1ZGl0Ij48aW5wdXQgdHlwZT0ic3VibWl0IiBpZD0ic3ViIiB2YWx1ZT0iU3VibWl0IiA+PC9hPiI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"25109e7e737a640f353163cc03c38326\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-24 09:36:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '19c99ae4-f48f-43cd-b7a7-18e4068755ee', '', '', '2018-01-24 09:36:38', '2018-01-24 09:36:38', '', 0, 'http://localhost/bmsce/2018/01/24/19c99ae4-f48f-43cd-b7a7-18e4068755ee/', 0, 'customize_changeset', '', 0),
(39, 1, '2018-01-24 09:41:46', '2018-01-24 09:41:46', '', 'CO Form', '', 'trash', 'closed', 'closed', '', 'co-form__trashed', '', '', '2018-01-24 13:43:28', '2018-01-24 13:43:28', '', 0, 'http://localhost/bmsce/?post_type=turbo-sidebar-cpt&#038;p=39', 0, 'turbo-sidebar-cpt', '', 0),
(40, 1, '2018-01-24 10:37:05', '2018-01-24 10:37:05', '[widgets_on_pages id=\"CO Form\"]', 'Faculty Self-Audit', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-01-24 10:37:05', '2018-01-24 10:37:05', '', 36, 'http://localhost/bmsce/2018/01/24/36-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-01-25 05:21:21', '2018-01-25 05:21:21', '', 'Form Page 2', '', 'publish', 'closed', 'closed', '', 'form-page-2', '', '', '2018-01-25 05:21:21', '2018-01-25 05:21:21', '', 0, 'http://localhost/bmsce/?post_type=turbo-sidebar-cpt&#038;p=41', 0, 'turbo-sidebar-cpt', '', 0),
(42, 1, '2018-01-25 05:52:58', '2018-01-25 05:52:58', '', 'Faculty Form', '', 'publish', 'closed', 'closed', '', 'faculty-form-2', '', '', '2018-01-27 15:31:04', '2018-01-27 15:31:04', '', 0, 'http://localhost/bmsce/?page_id=42', 0, 'page', '', 0),
(43, 1, '2018-01-25 05:52:58', '2018-01-25 05:52:58', '', 'Faculty Form 2', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-01-25 05:52:58', '2018-01-25 05:52:58', '', 42, 'http://localhost/bmsce/2018/01/25/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-01-25 05:54:58', '2018-01-25 05:54:58', '[widgets_on_pages id=\"Form Page 2\"]', 'Faculty Form 2', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-01-25 05:54:58', '2018-01-25 05:54:58', '', 42, 'http://localhost/bmsce/2018/01/25/42-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-01-25 06:13:38', '2018-01-25 06:13:38', '[widgets_on_pages id=\"Form Page 2\"]', 'Faculty Form', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-01-25 06:13:38', '2018-01-25 06:13:38', '', 42, 'http://localhost/bmsce/2018/01/25/42-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-01-25 06:14:22', '2018-01-25 06:14:22', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-25 06:14:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '45dc05a7-c737-47b7-8ca9-5b3b95607a9e', '', '', '2018-01-25 06:14:22', '2018-01-25 06:14:22', '', 0, 'http://localhost/bmsce/2018/01/25/45dc05a7-c737-47b7-8ca9-5b3b95607a9e/', 0, 'customize_changeset', '', 0),
(48, 1, '2018-01-25 06:19:28', '2018-01-25 06:19:28', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \".alignnone {\\n    margin: 0\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-25 06:19:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4ab9af38-4def-4b8d-b16e-7f31a346cf2f', '', '', '2018-01-25 06:19:28', '2018-01-25 06:19:28', '', 0, 'http://localhost/bmsce/2018/01/25/4ab9af38-4def-4b8d-b16e-7f31a346cf2f/', 0, 'customize_changeset', '', 0),
(49, 1, '2018-01-25 06:19:28', '2018-01-25 06:19:28', '', 'twentyseventeen', '', 'publish', 'closed', 'closed', '', 'twentyseventeen', '', '', '2018-01-25 06:19:38', '2018-01-25 06:19:38', '', 0, 'http://localhost/bmsce/2018/01/25/twentyseventeen/', 0, 'custom_css', '', 0),
(50, 1, '2018-01-25 06:19:28', '2018-01-25 06:19:28', '.alignnone {\n    margin: 0\n}', 'twentyseventeen', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-01-25 06:19:28', '2018-01-25 06:19:28', '', 49, 'http://localhost/bmsce/2018/01/25/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-01-25 06:19:38', '2018-01-25 06:19:38', '{\n    \"custom_css[twentyseventeen]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-01-25 06:19:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e7452856-0191-4cbf-97ff-c155d3d68b46', '', '', '2018-01-25 06:19:38', '2018-01-25 06:19:38', '', 0, 'http://localhost/bmsce/2018/01/25/e7452856-0191-4cbf-97ff-c155d3d68b46/', 0, 'customize_changeset', '', 0),
(52, 1, '2018-01-25 06:19:38', '2018-01-25 06:19:38', '', 'twentyseventeen', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-01-25 06:19:38', '2018-01-25 06:19:38', '', 49, 'http://localhost/bmsce/2018/01/25/49-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-01-25 11:54:43', '2018-01-25 11:54:43', '', 'Report Form', '', 'publish', 'closed', 'closed', '', 'report-form', '', '', '2018-01-25 11:54:43', '2018-01-25 11:54:43', '', 0, 'http://localhost/bmsce/?post_type=turbo-sidebar-cpt&#038;p=53', 0, 'turbo-sidebar-cpt', '', 0),
(54, 1, '2018-01-25 16:40:32', '2018-01-25 16:40:32', '[widgets_on_pages id=\"Report Form\"]', 'Report', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-01-25 16:40:32', '2018-01-25 16:40:32', '', 25, 'http://localhost/bmsce/2018/01/25/25-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-01-27 15:28:28', '2018-01-27 15:28:28', '', 'Faculty Form', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-01-27 15:28:28', '2018-01-27 15:28:28', '', 42, 'http://localhost/bmsce/2018/01/27/42-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-01-27 15:28:57', '2018-01-27 15:28:57', '', 'Report', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-01-27 15:28:57', '2018-01-27 15:28:57', '', 25, 'http://localhost/bmsce/2018/01/27/25-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-01-31 06:18:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-01-31 06:18:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/bmsce/?page_id=60', 0, 'page', '', 0),
(61, 1, '2018-01-31 06:19:45', '2018-01-31 06:19:45', '', 'Faculty', '', 'publish', 'closed', 'closed', '', 'faculty', '', '', '2018-01-31 10:49:11', '2018-01-31 10:49:11', '', 0, 'http://localhost/bmsce/?page_id=61', 0, 'page', '', 0),
(62, 1, '2018-01-31 06:19:46', '2018-01-31 06:19:46', '', '', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-01-31 06:19:46', '2018-01-31 06:19:46', '', 61, 'http://localhost/bmsce/2018/01/31/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-01-31 06:29:16', '2018-01-31 06:29:16', '', 'insert', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-01-31 06:29:16', '2018-01-31 06:29:16', '', 61, 'http://localhost/bmsce/?p=63', 0, 'revision', '', 0),
(70, 1, '2018-01-31 10:48:01', '2018-01-31 10:48:01', '', 'Faculty', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-01-31 10:48:01', '2018-01-31 10:48:01', '', 61, 'http://localhost/bmsce/2018/01/31/61-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-01-31 10:48:05', '2018-01-31 10:48:05', '', 'Faculty', '', 'inherit', 'closed', 'closed', '', '61-autosave-v1', '', '', '2018-01-31 10:48:05', '2018-01-31 10:48:05', '', 61, 'http://localhost/bmsce/2018/01/31/61-autosave-v1/', 0, 'revision', '', 0),
(72, 1, '2018-01-31 10:50:00', '2018-01-31 10:50:00', '', 'insert', '', 'publish', 'closed', 'closed', '', 'insert', '', '', '2018-01-31 10:53:21', '2018-01-31 10:53:21', '', 61, 'http://localhost/bmsce/?page_id=72', 0, 'page', '', 0),
(73, 1, '2018-01-31 10:50:00', '2018-01-31 10:50:00', '', 'insert', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2018-01-31 10:50:00', '2018-01-31 10:50:00', '', 72, 'http://localhost/bmsce/2018/01/31/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-01-31 10:51:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-01-31 10:51:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/bmsce/?p=74', 0, 'post', '', 0),
(75, 1, '2018-01-31 10:52:00', '2018-01-31 10:52:00', '', 'insert', '', 'inherit', 'closed', 'closed', '', '72-autosave-v1', '', '', '2018-01-31 10:52:00', '2018-01-31 10:52:00', '', 72, 'http://localhost/bmsce/2018/01/31/72-autosave-v1/', 0, 'revision', '', 0),
(78, 1, '2018-01-31 10:56:28', '2018-01-31 10:56:28', '', 'Faculty', '', 'publish', 'closed', 'closed', '', '78', '', '', '2018-01-31 10:58:22', '2018-01-31 10:58:22', '', 61, 'http://localhost/bmsce/?p=78', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main', 'main', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(32, 2, 0),
(78, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'bmsce'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_user-settings', 'widgets_access=off&posts_list_mode=list&editor=tinymce'),
(18, 1, 'wp_user-settings-time', '1516797209'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '74'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(25, 1, 'manageedit-postcolumnshidden', 'a:5:{i:0;s:6:\"author\";i:1;s:10:\"categories\";i:2;s:4:\"tags\";i:3;s:8:\"comments\";i:4;s:4:\"date\";}'),
(26, 1, 'edit_post_per_page', '20'),
(27, 1, 'session_tokens', 'a:2:{s:64:\"e25fdbe1fbf8eff63a90feec8bdc7cb2ae75c2c5cd3054b8a1c665b07a23cda4\";a:4:{s:10:\"expiration\";i:1517493701;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1517320901;}s:64:\"4faabcdc333ba2890040241ce63a13ba4fae942acdcdc993735cb8e969b4d845\";a:4:{s:10:\"expiration\";i:1517569355;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1517396555;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'bmsce', '$P$Bqac.kASLB3RszhBAfDO8mElAUDIT3.', 'bmsce', 'kunalmehta1996@gmail.com', '', '2018-01-24 08:32:14', '', 0, 'bmsce');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assesmenttool`
--
ALTER TABLE `assesmenttool`
  ADD KEY `coursecode` (`coursecode`,`section`,`year`);

--
-- Indexes for table `attainment`
--
ALTER TABLE `attainment`
  ADD KEY `coursecode` (`coursecode`,`section`,`year`);

--
-- Indexes for table `cie`
--
ALTER TABLE `cie`
  ADD KEY `coursecode` (`coursecode`,`section`,`year`);

--
-- Indexes for table `copo`
--
ALTER TABLE `copo`
  ADD KEY `coursecode` (`coursecode`,`section`,`year`);

--
-- Indexes for table `courseoutcome`
--
ALTER TABLE `courseoutcome`
  ADD KEY `coursecode` (`coursecode`,`section`,`year`);

--
-- Indexes for table `entry`
--
ALTER TABLE `entry`
  ADD PRIMARY KEY (`coursecode`,`section`,`year`);

--
-- Indexes for table `innovation`
--
ALTER TABLE `innovation`
  ADD KEY `coursecode` (`coursecode`,`section`,`year`);

--
-- Indexes for table `laboratory`
--
ALTER TABLE `laboratory`
  ADD KEY `coursecode` (`coursecode`,`section`,`year`);

--
-- Indexes for table `lectureschedule`
--
ALTER TABLE `lectureschedule`
  ADD KEY `coursecode` (`coursecode`,`section`,`year`);

--
-- Indexes for table `see`
--
ALTER TABLE `see`
  ADD KEY `coursecode` (`coursecode`,`section`,`year`);

--
-- Indexes for table `selfstudy`
--
ALTER TABLE `selfstudy`
  ADD KEY `coursecode` (`coursecode`,`section`,`year`);

--
-- Indexes for table `survey`
--
ALTER TABLE `survey`
  ADD KEY `coursecode` (`coursecode`,`section`,`year`);

--
-- Indexes for table `tutorial`
--
ALTER TABLE `tutorial`
  ADD KEY `coursecode` (`coursecode`,`section`,`year`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assesmenttool`
--
ALTER TABLE `assesmenttool`
  ADD CONSTRAINT `assesmenttool_ibfk_1` FOREIGN KEY (`coursecode`,`section`,`year`) REFERENCES `entry` (`coursecode`, `section`, `year`);

--
-- Constraints for table `attainment`
--
ALTER TABLE `attainment`
  ADD CONSTRAINT `attainment_ibfk_1` FOREIGN KEY (`coursecode`,`section`,`year`) REFERENCES `entry` (`coursecode`, `section`, `year`);

--
-- Constraints for table `cie`
--
ALTER TABLE `cie`
  ADD CONSTRAINT `cie_ibfk_1` FOREIGN KEY (`coursecode`,`section`,`year`) REFERENCES `entry` (`coursecode`, `section`, `year`);

--
-- Constraints for table `copo`
--
ALTER TABLE `copo`
  ADD CONSTRAINT `copo_ibfk_1` FOREIGN KEY (`coursecode`,`section`,`year`) REFERENCES `entry` (`coursecode`, `section`, `year`);

--
-- Constraints for table `courseoutcome`
--
ALTER TABLE `courseoutcome`
  ADD CONSTRAINT `courseoutcome_ibfk_1` FOREIGN KEY (`coursecode`,`section`,`year`) REFERENCES `entry` (`coursecode`, `section`, `year`);

--
-- Constraints for table `innovation`
--
ALTER TABLE `innovation`
  ADD CONSTRAINT `innovation_ibfk_1` FOREIGN KEY (`coursecode`,`section`,`year`) REFERENCES `entry` (`coursecode`, `section`, `year`);

--
-- Constraints for table `laboratory`
--
ALTER TABLE `laboratory`
  ADD CONSTRAINT `laboratory_ibfk_1` FOREIGN KEY (`coursecode`,`section`,`year`) REFERENCES `entry` (`coursecode`, `section`, `year`);

--
-- Constraints for table `lectureschedule`
--
ALTER TABLE `lectureschedule`
  ADD CONSTRAINT `lectureschedule_ibfk_1` FOREIGN KEY (`coursecode`,`section`,`year`) REFERENCES `entry` (`coursecode`, `section`, `year`);

--
-- Constraints for table `see`
--
ALTER TABLE `see`
  ADD CONSTRAINT `see_ibfk_1` FOREIGN KEY (`coursecode`,`section`,`year`) REFERENCES `entry` (`coursecode`, `section`, `year`);

--
-- Constraints for table `selfstudy`
--
ALTER TABLE `selfstudy`
  ADD CONSTRAINT `selfstudy_ibfk_1` FOREIGN KEY (`coursecode`,`section`,`year`) REFERENCES `entry` (`coursecode`, `section`, `year`);

--
-- Constraints for table `survey`
--
ALTER TABLE `survey`
  ADD CONSTRAINT `survey_ibfk_1` FOREIGN KEY (`coursecode`,`section`,`year`) REFERENCES `entry` (`coursecode`, `section`, `year`);

--
-- Constraints for table `tutorial`
--
ALTER TABLE `tutorial`
  ADD CONSTRAINT `tutorial_ibfk_1` FOREIGN KEY (`coursecode`,`section`,`year`) REFERENCES `entry` (`coursecode`, `section`, `year`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
