-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 24, 2014 at 03:54 AM
-- Server version: 5.5.37-35.1
-- PHP Version: 5.4.23

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `abulayla_marketing`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_uploads` int(11) DEFAULT NULL,
  `lang_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `permalink`, `content`, `created_at`, `updated_at`, `user_id`, `description`, `keyword`, `status`, `group_uploads`, `lang_id`) VALUES
(1, 'Recruitment software with a difference', 'about', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n\r\n<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client&#39;s don&#39;t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n\r\n<div class="gap" style="height: 30px;">&nbsp;</div></div>\r\n\r\n<div class="row-item col-1_2">\r\n<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n\r\n<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n\r\n<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n\r\n<h3 class="lined margin-20">Some ROI benefits</h3>\r\n\r\n<div class="element-wrap">\r\n<div class="b-progress-bar" data-capacity="100" data-value="90">\r\n<div class="progress-label">Increase Data Accuracy to upto 90%</div>\r\n\r\n<div class="progress-scale">\r\n<div class="progress-line" style="width: 90%;">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class="b-progress-bar" data-capacity="100" data-value="65">\r\n<div class="progress-label">WordPress 65%</div>\r\n\r\n<div class="progress-scale">\r\n<div class="progress-line m-4" style="width: 65%;">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class="b-progress-bar" data-capacity="100" data-value="78">\r\n<div class="progress-label">Graphic Design 78%</div>\r\n\r\n<div class="progress-scale">\r\n<div class="progress-line m-3" style="width: 78%;">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class="b-progress-bar" data-capacity="100" data-value="86">\r\n<div class="progress-label">HTML/CSS 86%</div>\r\n\r\n<div class="progress-scale">\r\n<div class="progress-line m-2" style="width: 86%;">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="gap" style="height: 30px;">&nbsp;</div>\r\n</div>\r\n', '2014-05-27 01:21:51', '2014-06-05 04:19:19', 1, '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n\r\n					<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client''s don''t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n\r\n\r\n					<div style="height: 30px;" class="gap">\r\n					</div>\r\n				</div>\r\n\r\n				<div class="row-item col-1_2">\r\n					<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n					<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n					<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n					<h3 class="lined margin-20">Some ROI benefits</h3>\r\n					<div class="element-wrap">					\r\n						<div data-value="90" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">Increase Data Accuracy to upto 90%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line" style="width: 90%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="65" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">WordPress 65%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-4" style="width: 65%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="78" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">Graphic Design 78%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-3" style="width: 78%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="86" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">HTML/CSS 86%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-2" style="width: 86%;"></div>\r\n							</div>\r\n						</div>\r\n						\r\n						\r\n					</div>\r\n					<div style="height: 30px;" class="gap">\r\n					</div>\r\n				</div>', '', 'publish', NULL, 'en'),
(3, 'برامج التوظي', 'about', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n\r\n					<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client''s don''t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n\r\n\r\n					<div style="height: 30px;" class="gap">\r\n					</div>\r\n				</div>\r\n\r\n				<div class="row-item col-1_2">\r\n					<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n					<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n					<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n					<h3 class="lined margin-20">Some ROI benefits</h3>\r\n					<div class="element-wrap">					\r\n						<div data-value="90" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">Increase Data Accuracy to upto 90%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line" style="width: 90%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="65" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">WordPress 65%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-4" style="width: 65%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="78" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">Graphic Design 78%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-3" style="width: 78%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="86" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">HTML/CSS 86%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-2" style="width: 86%;"></div>\r\n							</div>\r\n						</div>\r\n						\r\n						\r\n					</div>\r\n					<div style="height: 30px;" class="gap">\r\n					</div>\r\n				</div>', '2014-06-04 03:32:47', '2014-06-05 04:13:23', 1, '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>', '', 'publish', NULL, 'sa'),
(4, 'uuuuuuuuuuuuuuuuuuuu', '', '', '2014-06-10 04:03:10', '2014-06-13 19:22:17', 1, '', '', 'unpublish', NULL, NULL),
(10, 'uuuuuuuuuuuuuuuuuuuuuuuuuuu', 'uuuuuuuuuuuuu', '<p>uuuuuuuuuuuuuuu</p>\r\n', '2014-06-14 00:34:42', '2014-06-14 00:34:42', 1, '', '', 'publish', NULL, NULL),
(11, 'Ullam Corporis Suscipit Laboriosamuuuuuuuuuu', 'uuuuuuuuuuuuuuuuuuuuuuuuuuuuuu', '', '2014-06-14 00:34:57', '2014-06-14 00:34:57', 1, '', 'uuuuuuuuuuuuu', 'publish', NULL, NULL),
(12, 'Ullam Corporis Suscipit Laboriosamuuuuuuuuuu', '', '<p>jjjjjjjjjjjjjjjjjjjjjjjjj</p>\r\n', '2014-06-14 00:38:37', '2014-06-14 00:38:37', 1, '', 'uuuuuuuuuuuuu', 'publish', NULL, NULL),
(13, 'Ullam Corporis Suscipit Laboriosamuuuuuuuuuu', '', '<p>jjjjjjjjjjjjjjjjjjjjjjjjj</p>\r\n', '2014-06-14 00:39:50', '2014-06-14 00:39:50', 1, '', 'uuuuuuuuuuuuu', 'publish', NULL, NULL),
(15, 'LG G3 bất ng', 'llllllllllllllllll', '<p>llllllllllll</p>\r\n', '2014-06-14 00:41:38', '2014-06-14 00:41:38', 1, '', '', 'publish', NULL, NULL),
(16, 'ooooooooooooo', 'oooooooooooooooooooooo', '<p>oooooo</p>\r\n', '2014-06-15 23:23:43', '2014-06-15 23:23:43', 1, '', '', 'publish', NULL, NULL),
(17, 'ooooooooooooo', '', '<p>oooooo</p>\r\n', '2014-06-15 23:25:33', '2014-06-15 23:25:33', 1, '', '', 'publish', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `order` int(11) DEFAULT NULL,
  `status` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `order`, `status`, `created_at`, `updated_at`, `parent`, `permalink`) VALUES
(2, 'SERVICE', '', 0, 'publish', NULL, '2014-06-10 03:06:20', 0, ''),
(9, 'PAGE', '', NULL, 'publish', NULL, '2014-05-29 18:56:28', 0, ''),
(11, 'Features', '', NULL, 'publish', NULL, '2014-05-28 20:51:46', 0, 'features'),
(20, 'Tutorial', NULL, NULL, 'publish', '2014-06-10 02:54:33', '2014-06-10 02:54:33', 0, ''),
(21, 'Video', '', 20, 'publish', '2014-06-10 02:54:49', '2014-06-10 03:05:34', 20, ''),
(23, 'PDF', NULL, 20, 'publish', '2014-06-14 00:49:11', '2014-06-14 00:49:11', 20, '');

-- --------------------------------------------------------

--
-- Table structure for table `categories_articles`
--

CREATE TABLE IF NOT EXISTS `categories_articles` (
  `categories_id` int(11) NOT NULL,
  `articles_id` int(11) NOT NULL,
  PRIMARY KEY (`categories_id`,`articles_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories_moduleData`
--

CREATE TABLE IF NOT EXISTS `categories_moduleData` (
  `categories_id` int(11) NOT NULL,
  `moduleData_id` int(11) NOT NULL,
  PRIMARY KEY (`categories_id`,`moduleData_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `code`, `postcode`, `icon`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', NULL, '', 'publish', NULL, '2014-06-05 10:03:44', '2014-06-05 03:03:44'),
(5, 'العربية', 'sa', NULL, '', 'publish', NULL, '2014-06-05 02:57:09', '2014-06-05 02:57:09'),
(6, 'Việt nam', 'vi', NULL, NULL, 'unpublish', NULL, '2014-06-09 08:41:29', '2014-06-09 01:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `icon` text COLLATE utf8_unicode_ci,
  `class` text COLLATE utf8_unicode_ci,
  `parent` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `lang_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=34 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `link`, `icon`, `class`, `parent`, `order`, `status`, `created_at`, `updated_at`, `page_id`, `lang_id`) VALUES
(10, 'Nokia', '', '', NULL, 30, 12, 'unpublish', '2014-06-05 10:31:06', '2014-06-05 10:31:06', NULL, 'en'),
(12, 'About', 'about', 'icon-folder-open', NULL, 0, 1, 'publish', '2014-06-05 10:31:08', '2014-06-05 10:31:08', 2, 'en'),
(25, 'Features', 'features', 'icon-file-text-alt', NULL, 0, 2, 'publish', '2014-06-05 10:31:08', '2014-06-05 10:31:08', 10, 'en'),
(26, 'Services', 'service', 'icon-random', NULL, 0, 3, 'publish', '2014-06-05 10:31:09', '2014-06-05 10:31:09', 3, 'en'),
(27, 'Support', 'support-packages', 'icon-headphones', NULL, 0, 4, 'publish', '2014-06-05 10:31:09', '2014-06-05 10:31:09', 11, 'en'),
(28, 'Request Demo', 'request-demo', 'icon-time', NULL, 0, 5, 'publish', '2014-06-05 10:31:10', '2014-06-05 10:31:10', 12, 'en'),
(29, 'Contact', 'contact-us', 'icon-envelope', NULL, 0, 7, 'publish', '2014-06-05 10:31:10', '2014-06-05 10:31:10', 4, 'en'),
(30, 'Blog', 'blog', '', NULL, 0, 6, 'publish', '2014-06-05 11:21:02', '2014-06-05 04:21:02', 13, 'en'),
(31, 'منزل', 'home', 'icon-home active', NULL, 0, 0, 'publish', '2014-06-05 10:34:58', '2014-06-05 10:34:58', 1, 'sa'),
(32, 'حول', 'about', 'icon-folder-open', NULL, 0, 1, 'publish', '2014-06-05 10:34:43', '2014-06-05 10:34:43', 2, 'sa'),
(33, 'Home', NULL, 'icon-home', NULL, 0, 0, 'publish', '2014-06-14 07:52:56', '2014-06-14 07:52:56', 1, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_05_23_030403_create_users_table', 1),
('2014_06_16_043712_create_articles_table', 1),
('2014_06_16_043840_create_categories_table', 1),
('2014_06_16_043902_create_categories_articles_table', 1),
('2014_06_16_043959_create_categories_moduledata_table', 1),
('2014_06_16_044015_create_language_table', 1),
('2014_06_16_044029_create_menu_table', 1),
('2014_06_16_044043_create_module_table', 1),
('2014_06_16_044100_create_module_data_table', 1),
('2014_06_16_044115_create_module_intro_table', 1),
('2014_06_16_044134_create_page_module_table', 1),
('2014_06_16_044143_create_pages_table', 1),
('2014_06_16_044154_create_permission_table', 1),
('2014_06_16_044217_create_position_table', 1),
('2014_06_16_044314_create_request_demo_table', 1),
('2014_06_16_044332_create_setting_table', 1),
('2014_06_16_044343_create_status_table', 1),
('2014_06_16_044416_create_uploads_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mod` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `name`, `status`, `position`, `mod`, `created_at`, `updated_at`, `order`, `controller`, `icon`) VALUES
(1, 'Slider', 'publish', 'header', 'mod_Slider', '2014-06-09 04:15:27', '2014-06-08 21:15:27', 2, NULL, 'fontawesome-camera'),
(2, 'Reason', 'publish', 'content', 'mod_Reason', '2014-06-09 04:15:27', '2014-06-08 21:15:27', 4, NULL, 'fontawesome-play'),
(3, 'Feature', 'publish', 'top', 'mod_Feature', '2014-06-09 04:15:27', '2014-06-08 21:15:27', 3, NULL, 'fontawesome-bullhorn'),
(4, 'User Interfaces', 'publish', 'bottom', 'mod_UserInterface', '2014-06-09 04:15:27', '2014-06-08 21:15:27', 5, NULL, 'fontawesome-sitemap'),
(5, 'Contact', 'publish', 'content', 'mod_Contact', '2014-06-09 04:15:27', '2014-06-08 21:15:27', 6, NULL, 'maki-warehouse'),
(6, 'Title Bar', 'publish', 'title_bar', 'mod_TitleBar', '2014-06-09 04:15:27', '2014-06-08 21:15:27', 0, NULL, 'maki-embassy'),
(7, 'Support', 'publish', 'content', 'mod_Support', '2014-06-09 04:15:27', '2014-06-08 21:15:27', 7, NULL, 'maki-hospital'),
(8, 'Service', 'publish', 'content', 'mod_Service', '2014-06-09 04:15:27', '2014-06-08 21:15:27', 8, NULL, 'maki-fuel'),
(9, 'About', 'publish', 'content', 'mod_About', '2014-06-09 04:15:35', '2014-06-08 21:15:35', 9, NULL, 'fontawesome-globe'),
(10, 'Google Map', 'publish', 'top', 'mod_Maps', '2014-06-09 04:15:27', '2014-06-08 21:15:27', 2, NULL, 'fontawesome-pinterest-sign'),
(11, 'Happy Clients', 'publish', 'bottom', 'mod_HappyClient', '2014-06-09 04:15:35', '2014-06-08 21:15:35', 9, NULL, 'fontawesome-hand-up'),
(12, 'Request Demo', 'publish', 'content', 'mod_RequestDemo', '2014-06-09 04:15:27', '2014-06-08 21:15:27', 3, NULL, 'fontawesome-beaker'),
(13, 'Tutorial', 'publish', 'content', 'mod_Tutorial', '2014-06-09 19:06:24', '2014-06-09 19:06:24', 4, NULL, 'fontawesome-film'),
(14, 'SubmitRequestDemo', 'publish', 'content', 'mod_SubmitRequestDemo', '2014-06-10 04:15:50', '2014-06-10 04:15:50', 0, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `module_data`
--

CREATE TABLE IF NOT EXISTS `module_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `sumary` text COLLATE utf8_unicode_ci,
  `icon` text COLLATE utf8_unicode_ci,
  `image` int(11) DEFAULT NULL,
  `group_image` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `lang_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contentHtml` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=103 ;

--
-- Dumping data for table `module_data`
--

INSERT INTO `module_data` (`id`, `title`, `content`, `sumary`, `icon`, `image`, `group_image`, `user_id`, `lang_id`, `module_id`, `created_at`, `updated_at`, `order`, `status`, `contentHtml`, `link`, `target`) VALUES
(12, ' Full Control ', '', 'Recruitment Software with a difference', '', NULL, NULL, 17, 'en', '1', '2014-06-10 01:53:25', '2014-06-09 18:53:25', 0, 'publish', NULL, 'http://completermp.com/marketing/', '_self'),
(28, 'Security', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', NULL, NULL, 1, 'en', '1', '2014-06-07 09:16:56', '2014-06-07 02:16:56', 0, 'publish', NULL, '', '_self'),
(29, 'Security', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', NULL, NULL, 1, 'en', '2', '2014-06-07 02:19:15', '2014-06-07 02:19:15', 0, 'publish', NULL, '', '_self'),
(30, 'Reliability', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', NULL, NULL, 1, 'en', '2', '2014-06-07 02:20:07', '2014-06-07 02:20:07', 0, 'publish', NULL, '', '_self'),
(31, 'Accuracy', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', NULL, NULL, 1, 'en', '2', '2014-06-07 02:21:13', '2014-06-07 02:21:13', 0, 'publish', NULL, '', '_self'),
(32, 'Efficiency', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', NULL, NULL, 1, 'en', '2', '2014-06-07 02:21:50', '2014-06-07 02:21:50', 0, 'publish', NULL, '', '_self'),
(33, 'Productivity', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', NULL, NULL, 1, 'en', '2', '2014-06-07 02:22:29', '2014-06-07 02:22:29', 0, 'publish', NULL, '', '_self'),
(34, 'Convenience', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', NULL, NULL, 1, 'en', '2', '2014-06-07 02:23:11', '2014-06-07 02:23:11', 0, 'publish', NULL, '', '_self'),
(35, 'Extendable', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', NULL, NULL, 1, 'en', '2', '2014-06-07 02:23:39', '2014-06-07 02:23:39', 0, 'publish', NULL, '', '_self'),
(36, 'Simplicity', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', NULL, NULL, 1, 'en', '2', '2014-06-07 02:24:11', '2014-06-07 02:24:11', 0, 'publish', NULL, '', '_self'),
(37, 'أمن', '', 'يمكن للموظ', '', NULL, NULL, 1, 'sa', '2', '2014-06-07 10:41:35', '2014-06-07 03:41:35', 0, 'publish', NULL, '', '_self'),
(38, 'Recruitment software with a difference', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n\r\n					<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client''s don''t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n\r\n\r\n					<div style="height: 30px;" class="gap">\r\n					</div>\r\n				</div>\r\n\r\n				<div class="row-item col-1_2">\r\n					<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n					<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n					<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n					<h3 class="lined margin-20">Some ROI benefits</h3>\r\n					<div class="element-wrap">					\r\n						<div data-value="90" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">Increase Data Accuracy to upto 90%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line" style="width: 90%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="65" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">WordPress 65%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-4" style="width: 65%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="78" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">Graphic Design 78%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-3" style="width: 78%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="86" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">HTML/CSS 86%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-2" style="width: 86%;"></div>\r\n							</div>\r\n						</div>\r\n						\r\n						\r\n					</div>\r\n					<div style="height: 30px;" class="gap">\r\n					</div>\r\n				</div>', '', '', NULL, NULL, 1, 'en', '9', '2014-06-07 10:54:58', '2014-06-07 03:54:58', 0, 'publish', NULL, '', '_self'),
(39, 'برامج التوظي', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n\r\n					<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client''s don''t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n\r\n\r\n					<div style="height: 30px;" class="gap">\r\n					</div>\r\n				</div>\r\n\r\n				<div class="row-item col-1_2">\r\n					<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n					<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n					<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n					<h3 class="lined margin-20">Some ROI benefits</h3>\r\n					<div class="element-wrap">					\r\n						<div data-value="90" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">Increase Data Accuracy to upto 90%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line" style="width: 90%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="65" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">WordPress 65%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-4" style="width: 65%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="78" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">Graphic Design 78%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-3" style="width: 78%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="86" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">HTML/CSS 86%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-2" style="width: 86%;"></div>\r\n							</div>\r\n						</div>\r\n						\r\n						\r\n					</div>\r\n					<div style="height: 30px;" class="gap">\r\n					</div>\r\n				</div>', '', '', NULL, NULL, 1, 'sa', '9', '2014-06-07 03:55:54', '2014-06-07 03:55:54', 0, 'publish', NULL, '', '_self'),
(40, 'ICEAT', '', '', '', NULL, NULL, 1, 'en', '11', '2014-06-09 01:52:46', '2014-06-08 18:52:46', 0, 'publish', NULL, '', '_self'),
(41, 'QEHC', '', '', '', NULL, NULL, 1, 'en', '11', '2014-06-08 18:43:27', '2014-06-08 18:43:27', 0, 'publish', NULL, '', '_self'),
(42, 'Duis Autem Vel Eum', '', 'Adipisci velit, sed quia non numquam eius modi tempora incidunt, ut labore', 'icon-css3 medium colored', NULL, NULL, 1, 'en', '3', '2014-06-09 02:08:20', '2014-06-08 19:08:20', 0, 'publish', NULL, '', '_self'),
(43, 'Qui Blandit Praesent', '', 'Vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil ', 'icon-magic medium colored', NULL, NULL, 1, 'en', '3', '2014-06-09 02:08:19', '2014-06-08 19:08:19', 0, 'publish', NULL, '', '_self'),
(44, 'Tation Dipiscing Elit', '', 'Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium ', 'icon-bullhorn medium colored', NULL, NULL, 1, 'en', '3', '2014-06-09 02:08:19', '2014-06-08 19:08:19', 0, 'publish', NULL, '', '_self'),
(45, 'Applicants ', '', 'Inventore veritatis et quasi architectos beatae vitae dicta sunt explicabo. Nemo enims sadips ipsums un', '', NULL, NULL, 1, 'en', '4', '2014-06-08 19:46:17', '2014-06-08 19:46:17', 0, 'publish', NULL, '', '_self'),
(46, 'Clients', '', '', '', NULL, NULL, 1, 'en', '4', '2014-06-08 19:46:34', '2014-06-08 19:46:34', 0, 'publish', NULL, '', '_self'),
(47, 'Recruiters', '', '', '', NULL, NULL, 1, 'en', '4', '2014-06-08 19:46:44', '2014-06-08 19:46:44', 0, 'publish', NULL, '', '_self'),
(48, 'Agents', '', '', '', NULL, NULL, 1, 'en', '4', '2014-06-08 19:46:54', '2014-06-08 19:46:54', 0, 'publish', NULL, '', '_self'),
(49, 'Data Migration', '<div class="tab active">\r\n<p>We apply several clearly defined stages for implementing CompleteRMP which make the transition from existing systems straightforward. We do this by setting up a &quot;work in progress&quot; system which we continually update &amp; customise until you are completely happy. We can then provide training on this temporary system before you go live to make sure everyone in your organisation is completely happy and ready before you switch over.</p>\r\n\r\n<p>The process starts with requirements gathering and our experienced consultants will advise you on the best way to customise CompleteRMP based on your specific requirements. If you are already using a system of any kind, we will discuss the data with you and in most cases can take a sample of your data and provide a fixed price quotation for data migration.</p>\r\n\r\n<p>We will then begin to customise the temporary system and start working on your data import. Once we have completed the data import, we will update the temporary system with your own data. You can then advise us on the imported data and if you would like to make any changes, for example you may want us to perform some data cleansing, duplicate checking or re-formatting.</p>\r\n\r\n<p>This is an iterative process and we will continue to update the temporary system based on your feedback and re-import the cleansed data until you are completely happy.</p>\r\n\r\n<p>We will then agree a day when you will stop using your existing system, at which time we will take a fresh copy of your existing data with any files and CV&#39;s and run our ready prepared import scripts. The temporary system will be updated once again and will be ready for you to start using as your new recruitment system.</p>\r\n</div>\r\n', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. ', 'icon-exchange', NULL, NULL, 1, 'en', '8', '2014-06-08 20:07:13', '2014-06-08 20:07:13', 0, 'publish', NULL, '', '_self'),
(50, 'Bespoke Programming', '<div class="tab active">\r\n<p>We offer bespoke programming services to our client base to provide additional functionality specific to the way they work and integrate this with their CompleteRMP product. Examples of this type of service would be to provide client specific tools that speed up internal processes such as synchronising with external systems. We can also develop any type of specific report and integrate it with your CompleteRMP system for example to be processed before management meetings and keep track of KPI&#39;s and sales forecasts.</p>\r\n\r\n<p>If suggested functionality would benefit the rest of our client base then this is included in the next product update for everyone so you will also benefit from tools and features suggested by the rest of our client base.</p>\r\n</div>\r\n', 'Feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent ', 'icon-code', NULL, NULL, 1, 'en', '8', '2014-06-08 20:07:49', '2014-06-08 20:07:49', 0, 'publish', NULL, '', '_self'),
(51, 'Data Migration', '<div class="tab active">\r\n<p>The CompleteRMP development team are specialists in carrying out seamless website integrations and as CompleteRMP is completely web based, new and innovative features can easily be integrated into your website without incurring large development costs. Over the years, we have produced a suit of internet recruitment tools that can easily be &quot;plugged in&quot; to any website to provide the latest recruitment functionality.</p>\r\n\r\n<p>You can use our in-house creative design &amp; development team and extensive network of partners or we will work with your own designers to integrate our technology &amp; assist with website creation &amp; company branding. We can quickly build your website already configured with the latest recruitment technology such as candidate area / registration, dynamic vacancy pages, automatic CV data extraction, hiring manager access and intelligent pre-screening at a fraction of the cost for a bespoke development.</p>\r\n\r\n<p>For more information please read the following information about recruitment website Development and internet recruitment software for recruitment consultancies or corporate recruitment.</p>\r\n</div>\r\n', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. ', 'icon-desktop', NULL, NULL, 1, 'en', '8', '2014-06-08 20:08:25', '2014-06-08 20:08:25', 0, 'publish', NULL, '', '_self'),
(52, 'Secure Hosting & Security', '<div class="tab active">\r\n<p>The security of your data is our highest priority and every measure is taken to protect it. In fact, it is usually the case that our client&#39;s data is far more secure on our servers than on their own premises.</p>\r\n\r\n<p>Data security breaches can come from two main areas. First you must establish tight security within your own organisation. The comprehensive administration tools in our online recruitment solution will help with this as you have full control over each user&#39;s access rights and permissions. You can restrict users access to any area of CompleteRMP and even set the times they are allowed access for example to prevent access on evenings and weekends. You can also prevent individual user access from outside your own premises altogether.</p>\r\n\r\n<p>&nbsp;</p>\r\nOur servers are maintained in a state of the art data centre and are monitored 24 x 7. All our servers are configured in the best possible way by professionals to eliminate external threats. They are protected from fire, power outages and theft through stringent security measures that wouldn&#39;t go amiss in an airport and are connected with multiple internet connections to eliminate down time. We use the latest corporate Anti Virus software and our hardware and software firewalls stop unauthorised access.\r\n\r\n<p>As a final precaution, our entire client&#39;s data is backed up daily and stored in a separate location.</p>\r\n</div>\r\n', 'Feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent ', 'icon-lock', NULL, NULL, 1, 'en', '8', '2014-06-08 20:08:57', '2014-06-08 20:08:57', 0, 'publish', NULL, '', '_self'),
(53, 'Premium Bronze Support', '<div class="row-item col-1_3">\r\n<div class="b-tariff m-popular">\r\n<div class="popular-title m-turquoise">Premium Bronze Support</div>\r\n\r\n<div class="tariff-head">\r\n<div class="tariff-title">Bronze Package</div>\r\n\r\n<div class="tariff-price"><span class="tariff-cy">$</span> <span class="tariff-cost">25</span> <span class="tariff-period">/mo</span></div>\r\n\r\n<p class="tariff-description">Sed ut perspiciatis unde omnis iste natus.</p>\r\n</div>\r\n\r\n<ul class="tariff-meta">\r\n	<li><mark class="green strong">FREE</mark> Setup</li>\r\n	<li>3 Active Users</li>\r\n	<li>Additional User is $5/mo</li>\r\n	<li>Unlimited Questions</li>\r\n	<li>Full Data Security</li>\r\n</ul>\r\n<a class="btn green tariff-btn" href="#">Start Now!</a></div>\r\n</div>', '', '', NULL, NULL, 1, 'en', '7', '2014-06-09 03:20:15', '2014-06-08 20:20:15', 0, 'publish', NULL, '', '_self'),
(54, 'Premium Silver Support', '<div class="row-item col-1_3">\r\n<div class="b-tariff m-popular">\r\n<div class="popular-title m-turquoise">Premium Silver Support</div>\r\n\r\n<div class="tariff-head">\r\n<div class="tariff-title">Silver Package</div>\r\n\r\n<div class="tariff-price"><span class="tariff-cy">$</span> <span class="tariff-cost">50</span> <span class="tariff-period">/mo</span></div>\r\n\r\n<p class="tariff-description">Nemo enim ipsam voluptas.</p>\r\n</div>\r\n\r\n<ul class="tariff-meta">\r\n	<li><mark class="green strong">FREE</mark> Setup</li>\r\n	<li>3 Active Users</li>\r\n	<li>Additional User is $5/mo</li>\r\n	<li>Unlimited Questions</li>\r\n	<li>Full Data Security</li>\r\n</ul>\r\n<a class="btn turquoise tariff-btn" href="#">Start Now!</a></div>\r\n</div>', '', '', NULL, NULL, 1, 'en', '7', '2014-06-09 03:20:01', '2014-06-08 20:20:01', 0, 'publish', NULL, '', '_self'),
(55, 'Premium Gold Support', '<div class="row-item col-1_3">\r\n					\r\n					<div class="b-tariff m-popular">\r\n						<div class="popular-title m-turquoise">Premium Gold Support</div>\r\n\r\n						<div class="tariff-head">\r\n							<div class="tariff-title">Gold Package</div>\r\n\r\n							<div class="tariff-price">\r\n								<span class="tariff-cy">$</span>\r\n								<span class="tariff-cost">75</span>\r\n								<span class="tariff-period">/mo</span>\r\n							</div>\r\n\r\n							<p class="tariff-description">Neque porro quisquam ipsum.</p>\r\n						</div>\r\n						<ul class="tariff-meta">\r\n							<li><mark class="green strong">FREE</mark> Setup</li>\r\n							<li><i style="color: #73ca3f;" class="icon-user"></i> 3 Active Users</li>\r\n							<li><i style="color: #73ca3f;" class="icon-plus"></i> Additional User is $5/mo</li>\r\n							<li><i style="color: #73ca3f;" class="icon-lock"></i> Unlimited Questions</li>\r\n							<li><i style="color: #73ca3f;" class="icon-ok"></i> Full Data Security</li>\r\n						</ul>\r\n\r\n						<a href="#" class="btn blue tariff-btn">Start Now!</a>\r\n					</div>\r\n\r\n				</div>', '', '', NULL, NULL, 1, 'en', '7', '2014-06-08 20:19:29', '2014-06-08 20:19:29', 0, 'publish', NULL, '', '_self'),
(56, 'test video', '<p><iframe allowfullscreen="" frameborder="0" height="315" src="//www.youtube.com/embed/HkMNOlYcpHg" width="420"></iframe></p>\r\n', '', '', NULL, NULL, 1, 'en', '13', '2014-06-10 09:24:32', '2014-06-10 02:24:32', 0, 'publish', NULL, '', '_self'),
(74, 'Laravel Tutorial Part 1 - Installation and Configuration ', '<p><iframe allowfullscreen="" frameborder="0" height="315" src="//www.youtube.com/embed/m5Jmh9JKnyQ" width="420"></iframe></p>\r\n', '', '', NULL, NULL, 1, 'en', '13', '2014-06-09 21:48:12', '2014-06-09 21:48:12', 0, 'publish', NULL, '', '_self'),
(75, 'Learn HTML in 12 Minutes ', '<p><iframe allowfullscreen="" frameborder="0" height="315" src="//www.youtube.com/embed/bWPMSSsVdPk" width="420"></iframe></p>\r\n', '', '', NULL, NULL, 1, 'en', '13', '2014-06-10 09:23:48', '2014-06-10 02:23:48', 0, 'publish', NULL, '', '_self'),
(76, 'Top Google SEO Tips, Secrets, and Tricks', '<p><iframe allowfullscreen="" frameborder="0" height="315" src="//www.youtube.com/embed/j-kpz_DKVw8" width="420"></iframe></p>\r\n', '', '', NULL, NULL, 1, 'en', '13', '2014-06-10 02:22:39', '2014-06-10 02:22:39', 0, 'publish', NULL, '', '_self'),
(82, 'INTEL', '', '', '', NULL, NULL, 1, 'en', '11', '2014-06-10 04:34:51', '2014-06-10 04:34:51', 0, 'publish', NULL, '', '_self'),
(101, 'eeeeeeeeeeeeee', '<div class="row-item col-1_3">\r\n<div class="b-tariff m-popular">\r\n<div class="popular-title m-turquoise">Premium Gold Support</div>\r\n\r\n<div class="tariff-head">\r\n<div class="tariff-title">Gold Package</div>\r\n\r\n<div class="tariff-price"><span class="tariff-cy">$</span> <span class="tariff-cost">75</span> <span class="tariff-period">/mo</span></div>\r\n\r\n<p class="tariff-description">Neque porro quisquam ipsum.</p>\r\n</div>\r\n\r\n<ul class="tariff-meta">\r\n	<li><mark class="green strong">FREE</mark> Setup</li>\r\n	<li>3 Active Users</li>\r\n	<li>Additional User is $5/mo</li>\r\n	<li>Unlimited Questions</li>\r\n	<li>Full Data Security</li>\r\n</ul>\r\n<a class="btn blue tariff-btn" href="#">Start Now!</a></div>\r\n</div>\r\n', 'bbbbbbbbbbbb', '', NULL, NULL, 1, 'en', '7', '2014-06-16 01:46:37', '2014-06-15 18:46:37', 0, 'unpublish', NULL, '', '_self'),
(102, 'ssssssssssss', '<p>ssssssssssss</p>\r\n', '', '', NULL, NULL, 1, 'en', '5', '2014-06-16 13:45:34', '2014-06-16 13:45:34', 0, 'publish', NULL, '', '_self');

-- --------------------------------------------------------

--
-- Table structure for table `module_intro`
--

CREATE TABLE IF NOT EXISTS `module_intro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `sumary` text COLLATE utf8_unicode_ci,
  `lang_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `module_intro`
--

INSERT INTO `module_intro` (`id`, `title`, `content`, `sumary`, `lang_id`, `created_at`, `updated_at`, `status`, `module_id`, `user_id`) VALUES
(2, 'Need more reasons to choose CompleteRMP!', '', '9', 'en', '2014-06-09 03:03:55', '2014-06-08 20:03:55', 'publish', 2, 1),
(3, 'بحاجة الى مزيد من الأسباب لاختيار CompleteRMP!', '', '0', 'sa', '2014-06-07 03:15:02', '2014-06-07 03:15:02', 'publish', 2, 1),
(4, 'Our Happy Clients', '', '', 'en', '2014-06-08 18:43:58', '2014-06-08 18:43:58', 'publish', 11, 1),
(5, 'Ullam Corporis Suscipit Laboriosam', '', 'Aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt ', 'en', '2014-06-09 02:02:35', '2014-06-08 19:02:35', 'publish', 12, 1),
(6, 'Dedicated User Interfaces', '', '', 'en', '2014-06-09 02:49:52', '2014-06-08 19:49:52', 'publish', 4, 1),
(7, 'Available Support Packages.', '', 'We provide 24/7 support to all of our customers via our Knowledge Base, Online Resources ( video tutorials ) and Support Tickets. For three months we provide free limited telephone support in addition to the previously mentioned methods. After the 3 months ?? period clients can purchase one of three premium support packages.', 'en', '2014-06-08 20:15:37', '2014-06-08 20:15:37', 'publish', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `link`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Home', 'home', '2014-06-10 08:42:54', '2014-06-10 01:42:54', 'publish'),
(2, 'About us', 'about', '2014-06-03 07:28:27', '2014-06-03 07:28:27', 'publish'),
(3, 'Our Services ', 'service', '2014-06-03 07:28:27', '2014-06-03 07:28:27', 'publish'),
(4, 'Contact Us', 'contact-us', '2014-06-03 07:28:31', '2014-06-03 07:28:31', 'publish'),
(10, 'RMP Features ', 'features', '2014-06-03 07:28:30', '2014-06-03 07:28:30', 'publish'),
(11, 'Support Packages ', 'support-packages', '2014-06-03 07:28:30', '2014-06-03 07:28:30', 'publish'),
(12, 'Request Demo', 'request-demo', '2014-06-03 07:28:29', '2014-06-03 07:28:29', 'publish'),
(13, 'Tutorial', 'blog', '2014-06-10 09:40:06', '2014-06-10 02:40:06', 'publish');

-- --------------------------------------------------------

--
-- Table structure for table `page_module`
--

CREATE TABLE IF NOT EXISTS `page_module` (
  `page_id` int(11) NOT NULL DEFAULT '0',
  `module_id` int(11) NOT NULL DEFAULT '0',
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`page_id`,`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_module`
--

INSERT INTO `page_module` (`page_id`, `module_id`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '2014-06-10 01:42:55', '2014-06-10 01:42:55'),
(1, 2, NULL, '2014-06-10 01:42:55', '2014-06-10 01:42:55'),
(1, 3, NULL, '2014-06-10 01:42:55', '2014-06-10 01:42:55'),
(1, 11, NULL, '2014-06-10 01:42:55', '2014-06-10 01:42:55'),
(1, 12, NULL, '2014-06-10 01:42:55', '2014-06-10 01:42:55'),
(2, 4, NULL, '2014-06-08 19:49:28', '2014-06-08 19:49:28'),
(2, 6, NULL, '2014-06-08 19:49:28', '2014-06-08 19:49:28'),
(2, 9, NULL, '2014-06-08 19:49:28', '2014-06-08 19:49:28'),
(3, 6, NULL, '2014-06-08 20:06:03', '2014-06-08 20:06:03'),
(3, 8, NULL, '2014-06-08 20:06:03', '2014-06-08 20:06:03'),
(4, 5, NULL, '2014-06-08 20:27:00', '2014-06-08 20:27:00'),
(4, 6, NULL, '2014-06-08 20:27:00', '2014-06-08 20:27:00'),
(4, 10, NULL, '2014-06-08 20:27:00', '2014-06-08 20:27:00'),
(10, 3, NULL, '2014-06-13 20:58:53', '2014-06-13 20:58:53'),
(10, 6, NULL, '2014-06-13 20:58:52', '2014-06-13 20:58:52'),
(11, 6, NULL, '2014-06-08 20:14:23', '2014-06-08 20:14:23'),
(11, 7, NULL, '2014-06-08 20:14:23', '2014-06-08 20:14:23'),
(12, 6, NULL, '2014-06-10 04:16:04', '2014-06-10 04:16:04'),
(12, 14, NULL, '2014-06-10 04:16:04', '2014-06-10 04:16:04'),
(13, 6, NULL, '2014-06-10 02:40:06', '2014-06-10 02:40:06'),
(13, 13, NULL, '2014-06-10 02:40:06', '2014-06-10 02:40:06');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'MANAGER', NULL, NULL),
(2, 'ADMIN', NULL, NULL),
(3, 'SUPPER', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE IF NOT EXISTS `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'title_bar', NULL, NULL, NULL, NULL),
(2, 'header', NULL, NULL, NULL, NULL),
(3, 'top', NULL, NULL, NULL, NULL),
(4, 'content', NULL, NULL, NULL, NULL),
(5, 'bottom', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `request_demo`
--

CREATE TABLE IF NOT EXISTS `request_demo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` text COLLATE utf8_unicode_ci,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`name`, `description`, `value`, `created_at`, `updated_at`) VALUES
('address', 'Address', 'vietnam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('business_hours', 'Businness Hours', '<br> Monday-Friday: 9: <sup>00</sup> — 18: <sup>00</sup> <br> Saturday: 10: <sup>00</sup> — 17: <sup>00</sup> <br> Sunday: closed', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('email_contact', 'E-mail', 'info@completermp.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('email_encryption', 'Email Encryption', 'tls', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('email_host', 'Email Host', 'smtp.gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('email_password', 'Email Password', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('email_port', 'Email Port', '587', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('email_username', 'Email Username', 'ltt.develop@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('facebook', 'Facebook', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('footer_text', 'Footer', ' © 2014 All Right Reserved, ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('google', 'Google', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('phone', 'Phone', '+1 (229) 991-22-11', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('slogan', 'Slogan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('twitter', 'Twitter', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('website_name', 'Website Name', 'RMP MARKETING', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `description`) VALUES
('publish', 'Publish', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE IF NOT EXISTS `uploads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `modData_id` int(11) DEFAULT NULL,
  `modIntro_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `type_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=147 ;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `name`, `path`, `type`, `size`, `created_at`, `updated_at`, `status`, `article_id`, `modData_id`, `modIntro_id`, `group_id`, `type_file`) VALUES
(35, '06-07-2014_Slider-1.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-07 02:01:04', '2014-06-10 03:08:12', NULL, NULL, 28, NULL, NULL, 'image'),
(36, '06-07-2014_security.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-07 02:19:15', '2014-06-10 03:08:12', NULL, NULL, 29, NULL, NULL, 'image'),
(37, '06-07-2014_reliability.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-07 02:20:07', '2014-06-10 03:08:12', NULL, NULL, 30, NULL, NULL, 'image'),
(38, '06-07-2014_accuracy.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-07 02:21:13', '2014-06-10 03:08:35', NULL, NULL, 31, NULL, NULL, 'image'),
(39, '06-07-2014_efficiency.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-07 02:21:50', '2014-06-10 03:08:28', NULL, NULL, 32, NULL, NULL, 'image'),
(40, '06-07-2014_productivity.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-07 02:22:29', '2014-06-10 03:08:27', NULL, NULL, 33, NULL, NULL, 'image'),
(41, '06-07-2014_convenience.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-07 02:23:11', '2014-06-10 03:08:27', NULL, NULL, 34, NULL, NULL, 'image'),
(42, '06-07-2014_extendable.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-07 02:23:39', '2014-06-10 03:08:26', NULL, NULL, 35, NULL, NULL, 'image'),
(43, '06-07-2014_simplicity.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-07 02:24:11', '2014-06-10 03:08:26', NULL, NULL, 36, NULL, NULL, 'image'),
(44, '06-07-2014_security.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-07 03:41:35', '2014-06-10 03:08:25', NULL, NULL, 37, NULL, NULL, 'image'),
(45, '06-07-2014_nokia_announced_meego_smart_phone_n9_1.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-07 03:44:32', '2014-06-10 03:08:25', NULL, NULL, 38, NULL, NULL, 'image'),
(46, '06-07-2014_smart_phone_data_recovery.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-07 03:44:32', '2014-06-10 03:08:24', NULL, NULL, 38, NULL, NULL, 'image'),
(47, '06-07-2014_Smart-phone1.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-07 03:44:32', '2014-06-10 03:08:24', NULL, NULL, 38, NULL, NULL, 'image'),
(48, '06-07-2014_nokia_announced_meego_smart_phone_n9_1.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-07 03:55:54', '2014-06-10 03:08:23', NULL, NULL, 39, NULL, NULL, 'image'),
(49, '06-07-2014_smart_phone_data_recovery.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-07 03:55:55', '2014-06-10 03:08:23', NULL, NULL, 39, NULL, NULL, 'image'),
(50, '06-07-2014_Smart-phone1.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-07 03:55:55', '2014-06-10 03:08:22', NULL, NULL, 39, NULL, NULL, 'image'),
(52, '06-09-2014_iceat.png', 'asset/share/uploads/images', 'image/png', NULL, '2014-06-08 18:39:59', '2014-06-10 03:08:22', NULL, NULL, 40, NULL, NULL, 'image'),
(53, '06-09-2014_qehc.png', 'asset/share/uploads/images', 'image/png', NULL, '2014-06-08 18:43:27', '2014-06-10 03:08:22', NULL, NULL, 41, NULL, NULL, 'image'),
(57, '06-09-2014_digital-art.png', 'asset/share/uploads/images', 'image/png', NULL, '2014-06-08 20:01:47', '2014-06-10 03:08:21', NULL, NULL, 47, NULL, NULL, 'image'),
(58, '06-09-2014_industrial-design.png', 'asset/share/uploads/images', 'image/png', NULL, '2014-06-08 20:01:56', '2014-06-10 03:08:21', NULL, NULL, 48, NULL, NULL, 'image'),
(59, '06-09-2014_vector-art.png', 'asset/share/uploads/images', 'image/png', NULL, '2014-06-08 20:02:07', '2014-06-10 03:08:20', NULL, NULL, 46, NULL, NULL, 'image'),
(60, '06-09-2014_programming.png', 'asset/share/uploads/images', 'image/png', NULL, '2014-06-08 20:02:18', '2014-06-10 03:08:19', NULL, NULL, 45, NULL, NULL, 'image'),
(121, '06-10-2014_61_cycle_eight_24.gif', 'asset/share/uploads/images', 'image/gif', NULL, '2014-06-09 21:45:25', '2014-06-09 21:45:25', NULL, NULL, 56, NULL, NULL, 'image'),
(122, '06-10-2014_Thong_Tin_Cap_hoc_bong_SV_nam_4_5.pdf', 'asset/share/uploads/document', 'application/pdf', NULL, '2014-06-09 21:45:25', '2014-06-09 21:45:25', NULL, NULL, 56, NULL, NULL, 'file'),
(123, '06-10-2014_test1.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-09 23:43:53', '2014-06-09 23:43:53', NULL, NULL, NULL, NULL, NULL, 'image'),
(124, '06-10-2014_test1.jpg', 'public/asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-10 00:09:21', '2014-06-10 00:09:21', NULL, NULL, NULL, NULL, NULL, NULL),
(125, '06-10-2014_test1.jpg', 'public/asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-10 00:10:58', '2014-06-10 00:10:58', NULL, NULL, NULL, NULL, NULL, NULL),
(126, '06-10-2014_microsoft-linux.jpg', 'public/asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-10 00:11:12', '2014-06-10 00:11:12', NULL, NULL, NULL, NULL, NULL, NULL),
(127, '06-10-2014_microsoft-linux.jpg', 'public/asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-10 00:12:07', '2014-06-10 00:12:07', NULL, NULL, NULL, NULL, NULL, 'image'),
(128, '06-10-2014_cal.gif', 'asset/share/uploads/images', 'image/gif', NULL, '2014-06-10 04:34:51', '2014-06-10 04:34:51', NULL, NULL, 82, NULL, NULL, 'image'),
(141, '06-14-2014_Portrait_Gandhi.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-14 00:29:13', '2014-06-14 00:29:13', NULL, NULL, 101, NULL, NULL, 'image'),
(143, '06-16-2014_manh.jpg', 'public/asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-16 14:31:35', '2014-06-16 14:31:35', NULL, NULL, NULL, NULL, NULL, 'image'),
(144, '06-23-2014_JaneSmith.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-23 17:37:48', '2014-06-23 17:37:48', NULL, NULL, 44, NULL, NULL, 'image'),
(145, '06-23-2014_John_Doe2.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-23 17:37:48', '2014-06-23 17:37:48', NULL, NULL, 44, NULL, NULL, 'image'),
(146, '06-23-2014_john-doe.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-23 17:37:48', '2014-06-23 17:37:48', NULL, NULL, 44, NULL, NULL, 'image');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permission` int(11) NOT NULL,
  `country` int(11) DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `count_login` int(11) DEFAULT NULL,
  `status` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `company` text COLLATE utf8_unicode_ci,
  `avatar` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `phone`, `address`, `permission`, `country`, `postcode`, `sex`, `first_name`, `last_name`, `created_at`, `updated_at`, `count_login`, `status`, `company`, `avatar`) VALUES
(1, 'admin', '$2y$10$a4dduFKi0PKnoXeN1vEyEuLSU55a3LkOszloiBBK.8EcJYue7IVZ2', '', '5555555555', 'vietnam', 3, 12, '344', '', 'luong', 'truyen', NULL, '2014-06-10 06:43:53', 1, NULL, 'TNHH MTV SFR SOFTWARE', 123),
(15, 'username  ', '$2y$10$JE.6zQG/PnD89wa4o1TmkO6MxXrJTF2Nj7sT7qwg48TKlYNhRiYwa', 'test@gmail.com', '012365478', 'VIETNAMESE', 1, NULL, NULL, 'female', 'TEST', 'MR', '2014-06-03 10:38:27', '2014-06-09 11:06:52', NULL, 'publish', '', 83),
(17, 'ltt.develop@gmail.com', '$2y$10$Yvf1fa3vASOskoIH5/afBORzJ4NQCekpwCh.vfxVxeSBiaptjaeYe', 'ltt.develop@gmail.com', '', '', 2, NULL, NULL, 'male', '', '', '2014-06-04 09:24:35', '2014-06-09 11:07:54', NULL, 'publish', '', 84),
(18, 'luong@email.com', '$2y$10$aD98BXA5k24yqW2xqtLfIOnFMsp76N9/w.XTL3qcG7suSgM9/PCoC', 'luong@email.com', '', '', 3, NULL, NULL, 'male', '', '', '2014-06-05 11:27:51', '2014-06-05 11:27:51', NULL, 'publish', NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
