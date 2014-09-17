/*
Navicat MySQL Data Transfer

Source Server         : LTT
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : rmp_marketing_new

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2014-08-19 13:46:13
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `articles`
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('35', 'Laravel provides a variety of helpful validation rule', 'laravel-provides-a-variety-of-helpful-validation-rule', '<p>Laravel provides a variety of helpful validation rule</p>\r\n', '2014-06-28 04:10:00', '2014-06-28 04:10:00', '1', '', '', 'publish', null, null);

-- ----------------------------
-- Table structure for `blog_categories`
-- ----------------------------
DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of blog_categories
-- ----------------------------
INSERT INTO `blog_categories` VALUES ('1', 'Applicant', null, '2014-06-24 03:26:47', '2014-06-24 03:26:47', 'publish');
INSERT INTO `blog_categories` VALUES ('2', 'Client', null, '2014-06-24 04:04:00', '2014-06-24 04:04:00', 'publish');
INSERT INTO `blog_categories` VALUES ('6', 'Agents ', '', null, null, 'publish');
INSERT INTO `blog_categories` VALUES ('7', 'Recruiters ', '', '2014-06-25 01:58:53', '2014-06-24 18:58:53', 'unpublish');

-- ----------------------------
-- Table structure for `blog_comments`
-- ----------------------------
DROP TABLE IF EXISTS `blog_comments`;
CREATE TABLE `blog_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `website` text COLLATE utf8_unicode_ci,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` text COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of blog_comments
-- ----------------------------
INSERT INTO `blog_comments` VALUES ('18', ';sldksdf;l', '21', null, '2014-06-25 03:25:59', '2014-06-24 20:25:59', '', 'ltt.develop@gmail.com', 'truyen', '::1', 'publish');
INSERT INTO `blog_comments` VALUES ('20', 'lk\'k\'dddddd', '20', null, '2014-06-25 03:25:54', '2014-06-24 20:25:54', '', 'lksdfjk@s.com', 'mr tronglk', '::1', 'publish');
INSERT INTO `blog_comments` VALUES ('21', 'ljksdklfjdkljfklsdfsss', '18', null, '2014-06-25 03:32:36', '2014-06-24 20:32:36', '', 'k@s.com', 'ltuok', '::1', 'publish');
INSERT INTO `blog_comments` VALUES ('22', ' this article very well .  thank you ', '28', null, '2014-06-25 14:19:45', '2014-06-25 14:20:02', '', 'ltt.develop@gmail.com', 'mr truyen', '::1', 'publish');
INSERT INTO `blog_comments` VALUES ('23', 'teps to install and setup Laravel 4:\r\n\r\n    Install Laravel 4 by following instructions provided here.\r\n    Create a database using the MySQL terminal client: ', '28', null, '2014-06-25 14:26:20', '2014-06-25 14:26:55', '', 'luanth@gmail.com', 'mr tienq', '::1', 'publish');
INSERT INTO `blog_comments` VALUES ('26', 'ssa a sd alert()', '29', null, '2014-06-25 21:15:32', '2014-06-25 21:15:32', '', 'sssss@gmail.com', 'sssssssss', '::1', 'unpublish');

-- ----------------------------
-- Table structure for `blog_post_category`
-- ----------------------------
DROP TABLE IF EXISTS `blog_post_category`;
CREATE TABLE `blog_post_category` (
  `post_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of blog_post_category
-- ----------------------------
INSERT INTO `blog_post_category` VALUES ('25', '1');
INSERT INTO `blog_post_category` VALUES ('26', '2');
INSERT INTO `blog_post_category` VALUES ('27', '6');
INSERT INTO `blog_post_category` VALUES ('28', '1');
INSERT INTO `blog_post_category` VALUES ('29', '1');
INSERT INTO `blog_post_category` VALUES ('29', '2');
INSERT INTO `blog_post_category` VALUES ('30', '1');

-- ----------------------------
-- Table structure for `blog_posts`
-- ----------------------------
DROP TABLE IF EXISTS `blog_posts`;
CREATE TABLE `blog_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `sumary` text COLLATE utf8_unicode_ci,
  `image` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permalink` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of blog_posts
-- ----------------------------
INSERT INTO `blog_posts` VALUES ('25', 'The platform built to perform.', '<p class=\"left-p introP no-margin\">Cloud is not a commodity. Because no matter what you call it, computing doesn&rsquo;t come out of the sky. It comes from physical hardware inside brick and mortar facilities connected by hundreds of miles of networking cable. And no two clouds are built the same way.<br />\r\n<br />\r\nSoftLayer is built to give you the highest performing cloud infrastructure available. One platform that takes data centers around the world that are full of the widest range</p>\r\n\r\n<p class=\"left-p last introP no-margin\">of cloud computing options, and then integrates and automates everything, all through a private network and advanced management system. All API driven, deployed on demand, and billed hour-to-hour or month-to-month.<br />\r\n<br />\r\nSo you can have a more options, greater flexibility, and total control. Because that&rsquo;s what you need if you&rsquo;re going to build the future.</p>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<hr />', 'Cloud is not a commodity. Because no matter what you call it, computing doesn’t come out of the sky. It comes from physical hardware inside brick and mortar facilities connected by hundreds of miles of networking cable. And no two clouds are built the same way.', null, '1', '2014-06-25 13:52:09', '2014-06-25 13:52:09', null, 'publish', null, 'the-platform-built-to-perform--25');
INSERT INTO `blog_posts` VALUES ('26', 'Recruiters Developer ', '<p>nventore veritatis et quasi architectos beatae vitae dicta sunt explicabo. Nemo enims sadips ipsums un</p>\r\n', 'nventore veritatis et quasi architectos beatae vitae dicta sunt explicabo. Nemo enims sadips ipsums un', null, '1', '2014-06-25 14:00:16', '2014-06-25 14:00:16', null, 'publish', null, 'recruiters-developer--26');
INSERT INTO `blog_posts` VALUES ('27', 'Laravel Quick Installation and Setup', '<p>teps to install and setup Laravel 4:</p>\r\n\r\n<ul>\r\n	<li>Install Laravel 4 by following instructions provided <a href=\"http://laravel.com/docs/installation\" target=\"_blank\">here</a>.</li>\r\n	<li>Create a database using the MySQL terminal client:\r\n	<pre class=\"bash\">\r\n┌─[usm4n@usm4n-desktop]―[~]\r\n└─&bull;mysql -u root -p\r\nEnter password: \r\nmysql&gt; create database laravel;\r\nQuery OK, 1 row affected (0.00 sec)</pre>\r\n	</li>\r\n	<li>Configure database in /app/config/database.php:\r\n	<pre class=\"prettyprint linenums\">\r\n\r\n&nbsp;</pre>\r\n\r\n	<ol class=\"linenums\">\r\n		<li class=\"L0\"><span class=\"str\">&#39;mysql&#39;</span><span class=\"pln\"> </span><span class=\"pun\">=&gt;</span><span class=\"pln\"> array</span><span class=\"pun\">(</span></li>\r\n		<li class=\"L1\"><span class=\"str\">&#39;driver&#39;</span><span class=\"pln\"> </span><span class=\"pun\">=&gt;</span><span class=\"pln\"> </span><span class=\"str\">&#39;mysql&#39;</span><span class=\"pun\">,</span></li>\r\n		<li class=\"L2\"><span class=\"str\">&#39;host&#39;</span><span class=\"pln\"> </span><span class=\"pun\">=&gt;</span><span class=\"pln\"> </span><span class=\"str\">&#39;localhost&#39;</span><span class=\"pun\">,</span></li>\r\n		<li class=\"L3\"><span class=\"str\">&#39;database&#39;</span><span class=\"pln\"> </span><span class=\"pun\">=&gt;</span><span class=\"pln\"> </span><span class=\"str\">&#39;laravel&#39;</span><span class=\"pun\">,</span></li>\r\n		<li class=\"L4\"><span class=\"str\">&#39;username&#39;</span><span class=\"pln\"> </span><span class=\"pun\">=&gt;</span><span class=\"pln\"> </span><span class=\"str\">&#39;root&#39;</span><span class=\"pun\">,</span></li>\r\n		<li class=\"L5\"><span class=\"str\">&#39;password&#39;</span><span class=\"pln\"> </span><span class=\"pun\">=&gt;</span><span class=\"pln\"> </span><span class=\"str\">&#39;very_secret_password&#39;</span><span class=\"pun\">,</span></li>\r\n		<li class=\"L6\"><span class=\"str\">&#39;charset&#39;</span><span class=\"pln\"> </span><span class=\"pun\">=&gt;</span><span class=\"pln\"> </span><span class=\"str\">&#39;utf8&#39;</span><span class=\"pun\">,</span></li>\r\n		<li class=\"L7\"><span class=\"str\">&#39;collation&#39;</span><span class=\"pln\"> </span><span class=\"pun\">=&gt;</span><span class=\"pln\"> </span><span class=\"str\">&#39;utf8_unicode_ci&#39;</span><span class=\"pun\">,</span></li>\r\n		<li class=\"L8\"><span class=\"str\">&#39;prefix&#39;</span><span class=\"pln\"> </span><span class=\"pun\">=&gt;</span><span class=\"pln\"> </span><span class=\"str\">&#39;&#39;</span><span class=\"pun\">,</span></li>\r\n		<li class=\"L9\"><span class=\"pun\">),</span></li>\r\n	</ol>\r\n	</li>\r\n</ul>\r\n', 'n this section, we will create database tables for our blog application using Laravel Database Migrations. Our application will be utilizing posts and comments tables to store articles and user comments respectively. (Read more on migrations here) ', null, '1', '2014-06-25 14:00:40', '2014-06-25 14:00:40', null, 'publish', null, 'laravel-quick-installation-and-setup-27');
INSERT INTO `blog_posts` VALUES ('28', 'Data Centers', '<p class=\"left-p introP no-margin\">There is much more to building and operating a data center than filling a room up with servers. Every aspect of a SoftLayer data center&mdash;from power density and redundancy, to capacity and cooling, and location and accessibility&mdash;is designed to guarantee its security, resiliency, and efficiency.</p>\r\n\r\n<p class=\"left-p last introP no-margin\">We build each center to the same spec, and equip it to provide the full SoftLayer catalog of services. Staffed 24x7 with SoftLayer experts to troubleshoot and address the rare issues that can&rsquo;t be directly resolved through our automated management system.</p>\r\n\r\n<div class=\"clear\">\r\n<h3 class=\"remove-bottom-margin\">Standardized pod design.</h3>\r\n\r\n<h5 class=\"remove-top-margin\">Standardized, best-practices-based facilities.</h5>\r\n\r\n<p>Each data center facility features one or more pods, each built to the same specifications with best-in-class methodologies to support up to 5,000 servers. Leveraging this standardization across all geographic locations, we optimize key data center performance variables including: space, power, network, personnel, and internal infrastructure.</p>\r\n\r\n<p class=\"poddiagramenlarge\"><a class=\"pod-dia featuredLink linkArrow cboxElement\" href=\"http://www.softlayer.com/data-centers\">Enlarge diagram</a></p>\r\n\r\n<hr class=\"thirty-bottom\" />\r\n<div class=\"rackdiagram-icon largeimagebox\">&nbsp;\r\n<h3 class=\"remove-bottom-margin\">High performance rack architecture.</h3>\r\n\r\n<h5 class=\"remove-top-margin\">Better power, bandwidth, and support for each server.</h5>\r\n\r\n<p>We&rsquo;ve designed our racks to provide high bandwidth, ample power, simplified system deployment, and faster issue resolution. Each rack has 40Gbps of connectivity right to it&mdash;20Gbps to the private network, 20Gbps to the public network&mdash;for exceptional and consistent network performance for every system.</p>\r\n\r\n<p class=\"rackdiagramenlarge\"><a class=\"perf-dia featuredLink linkArrow cboxElement\" href=\"http://www.softlayer.com/data-centers\">Enlarge diagram</a></p>\r\n</div>\r\n\r\n<hr class=\"thirty-top\" />\r\n<div class=\"thinline-bottom pipesandwheels-icon largeimagebox\">&nbsp;\r\n<h3 class=\"remove-bottom-margin\">Redundant, best-in-class infrastructure.</h3>\r\n\r\n<h5 class=\"remove-top-margin\">Redundant power, cooling, and network carriers.</h5>\r\n\r\n<p>All SoftLayer data centers maintain multiple power feeds, fiber links, dedicated generators, and battery backup. They are built from industry-leading hardware and equipment, ensuring the highest level of performance, reliability, and interoperability.</p>\r\n</div>\r\n\r\n<div class=\"settrap-icon largeimagebox\">&nbsp;\r\n<h3 class=\"remove-bottom-margin\">Audited physical security.</h3>\r\n\r\n<h5 class=\"remove-top-margin\">24x7 onsite security, SOC II report compliance.</h5>\r\n\r\n<p>Through automation, rigorous and audited controls, around the clock security, and server room access limited to certified employees, every location is hardened against physical intrusion.</p>\r\n</div>\r\n</div>\r\n', 'There is much more to building and operating a data center than filling a room up with servers. Every aspect of a SoftLayer data center—from power density and redundancy, to capacity and cooling, and location and accessibility—is designed to guarantee its security, resiliency, and efficiency.', null, '1', '2014-06-25 14:03:54', '2014-06-25 14:03:54', null, 'publish', null, 'data-centers-28');
INSERT INTO `blog_posts` VALUES ('29', 'Retrieving Records', '<p><strong>Note:</strong> The <strong>get</strong> method returns an array of objects with properties corresponding to the column on the table.</p>\r\n', 'Note: The get method returns an array of objects with properties corresponding to the column on the table.', '160', '1', '2014-06-25 14:44:42', '2014-06-25 14:50:26', null, 'publish', null, 'retrieving-records-29');
INSERT INTO `blog_posts` VALUES ('30', 'David Geary - HTML5 Game Development', '', 'Video games are fun to play, but they are much more fun to develop. Taking an idea for a game to fruition in the browser is one of the most gratifying experiences for a software developer. And it makes testing the best part of your day.\r\nIn this talk, you\'ll see how to implement a game using HTML5 APIs such as Canvas, Audio, and Local Storage. With the Canvas API you can implement static games, such as board games or puzzles, with relative ease. But in this talk, we\'ll tackle the more difficult realm of the game spectrum by looking at the implementation of a full-blown arcade game, complete with smooth animation, sprites, and yes, explosions.', '231', '1', '2014-06-25 21:45:32', '2014-06-28 09:17:32', null, 'publish', null, 'david-geary---html5-game-development-30');

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('2', 'SERVICE', '', '0', 'publish', null, '2014-06-10 22:06:20', '0', '');
INSERT INTO `categories` VALUES ('9', 'PAGE', '', null, 'publish', null, '2014-05-30 13:56:28', '0', '');
INSERT INTO `categories` VALUES ('11', 'Features', '', null, 'publish', null, '2014-05-29 15:51:46', '0', 'features');
INSERT INTO `categories` VALUES ('20', 'Tutorial', null, null, 'publish', '2014-06-10 21:54:33', '2014-06-10 21:54:33', '0', '');
INSERT INTO `categories` VALUES ('21', 'Video', '', '20', 'publish', '2014-06-10 21:54:49', '2014-06-10 22:05:34', '20', '');
INSERT INTO `categories` VALUES ('23', 'PDF', null, '20', 'publish', '2014-06-14 19:49:11', '2014-06-14 19:49:11', '20', '');

-- ----------------------------
-- Table structure for `categories_articles`
-- ----------------------------
DROP TABLE IF EXISTS `categories_articles`;
CREATE TABLE `categories_articles` (
  `categories_id` int(11) NOT NULL,
  `articles_id` int(11) NOT NULL,
  PRIMARY KEY (`categories_id`,`articles_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of categories_articles
-- ----------------------------
INSERT INTO `categories_articles` VALUES ('9', '35');

-- ----------------------------
-- Table structure for `categories_moduledata`
-- ----------------------------
DROP TABLE IF EXISTS `categories_moduledata`;
CREATE TABLE `categories_moduledata` (
  `categories_id` int(11) NOT NULL,
  `moduleData_id` int(11) NOT NULL,
  PRIMARY KEY (`categories_id`,`moduleData_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of categories_moduledata
-- ----------------------------

-- ----------------------------
-- Table structure for `language`
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of language
-- ----------------------------
INSERT INTO `language` VALUES ('1', 'English', 'en', null, '', 'publish', null, '2014-06-06 05:03:44', '2014-06-05 22:03:44');
INSERT INTO `language` VALUES ('5', 'العربية', 'sa', null, '', 'publish', null, '2014-06-05 21:57:09', '2014-06-05 21:57:09');
INSERT INTO `language` VALUES ('6', 'Việt nam', 'vi', null, null, 'unpublish', null, '2014-06-10 03:41:29', '2014-06-09 20:41:29');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('10', 'Nokia', '', '', null, '30', '12', 'unpublish', '2014-06-20 03:38:47', '2014-06-19 20:38:47', '1', 'en');
INSERT INTO `menu` VALUES ('12', 'About', 'about', 'icon-folder-open', null, '0', '1', 'publish', '2014-06-06 05:31:08', '2014-06-06 05:31:08', '2', 'en');
INSERT INTO `menu` VALUES ('25', 'Features', 'features', 'icon-file-text-alt', null, '0', '2', 'publish', '2014-06-06 05:31:08', '2014-06-06 05:31:08', '10', 'en');
INSERT INTO `menu` VALUES ('26', 'Services', 'service', 'icon-random', null, '0', '3', 'publish', '2014-06-06 05:31:09', '2014-06-06 05:31:09', '3', 'en');
INSERT INTO `menu` VALUES ('27', 'Support', 'support-packages', 'icon-headphones', null, '0', '4', 'publish', '2014-06-06 05:31:09', '2014-06-06 05:31:09', '11', 'en');
INSERT INTO `menu` VALUES ('28', 'Request Demo', 'request-demo', 'icon-time', null, '0', '5', 'publish', '2014-06-06 05:31:10', '2014-06-06 05:31:10', '12', 'en');
INSERT INTO `menu` VALUES ('29', 'Contact', 'contact-us', 'icon-envelope', null, '0', '7', 'publish', '2014-06-06 05:31:10', '2014-06-06 05:31:10', '4', 'en');
INSERT INTO `menu` VALUES ('30', 'Blog', 'blog', 'icon-meh', null, '0', '6', 'publish', '2014-06-20 20:53:26', '2014-06-20 13:53:26', '14', 'en');
INSERT INTO `menu` VALUES ('31', 'منزل', 'home', 'icon-home active', null, '0', '9', 'publish', '2014-06-20 21:10:04', '2014-06-20 14:10:04', '1', 'sa');
INSERT INTO `menu` VALUES ('32', 'حول', 'about', 'icon-folder-open', null, '0', '1', 'publish', '2014-06-06 05:34:43', '2014-06-06 05:34:43', '2', 'sa');
INSERT INTO `menu` VALUES ('33', 'Home', null, 'icon-home', null, '0', '0', 'publish', '2014-06-15 02:52:56', '2014-06-15 02:52:56', '1', 'en');
INSERT INTO `menu` VALUES ('34', 'Tutorial', null, 'icon-book', null, '0', '6', 'unpublish', '2014-06-20 20:54:34', '2014-06-20 13:54:34', '13', 'en');
INSERT INTO `menu` VALUES ('35', 'اتصال', null, 'icon-envelope', null, '0', '0', 'publish', '2014-06-20 14:08:30', '2014-06-20 14:08:30', '4', 'sa');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_05_23_030403_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2014_06_16_043712_create_articles_table', '1');
INSERT INTO `migrations` VALUES ('2014_06_16_043840_create_categories_table', '1');
INSERT INTO `migrations` VALUES ('2014_06_16_043902_create_categories_articles_table', '1');
INSERT INTO `migrations` VALUES ('2014_06_16_043959_create_categories_moduledata_table', '1');
INSERT INTO `migrations` VALUES ('2014_06_16_044015_create_language_table', '1');
INSERT INTO `migrations` VALUES ('2014_06_16_044029_create_menu_table', '1');
INSERT INTO `migrations` VALUES ('2014_06_16_044043_create_module_table', '1');
INSERT INTO `migrations` VALUES ('2014_06_16_044100_create_module_data_table', '1');
INSERT INTO `migrations` VALUES ('2014_06_16_044115_create_module_intro_table', '1');
INSERT INTO `migrations` VALUES ('2014_06_16_044134_create_page_module_table', '1');
INSERT INTO `migrations` VALUES ('2014_06_16_044143_create_pages_table', '1');
INSERT INTO `migrations` VALUES ('2014_06_16_044154_create_permission_table', '1');
INSERT INTO `migrations` VALUES ('2014_06_16_044217_create_position_table', '1');
INSERT INTO `migrations` VALUES ('2014_06_16_044314_create_request_demo_table', '1');
INSERT INTO `migrations` VALUES ('2014_06_16_044332_create_setting_table', '1');
INSERT INTO `migrations` VALUES ('2014_06_16_044343_create_status_table', '1');
INSERT INTO `migrations` VALUES ('2014_06_16_044416_create_uploads_table', '1');

-- ----------------------------
-- Table structure for `module`
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES ('1', 'Slider', 'publish', 'header', 'mod_Slider', '2014-06-09 23:15:27', '2014-06-09 16:15:27', '2', null, 'fontawesome-camera');
INSERT INTO `module` VALUES ('2', 'Reason', 'publish', 'content', 'mod_Reason', '2014-06-09 23:15:27', '2014-06-09 16:15:27', '4', null, 'fontawesome-play');
INSERT INTO `module` VALUES ('3', 'Feature', 'publish', 'top', 'mod_Feature', '2014-06-09 23:15:27', '2014-06-09 16:15:27', '3', null, 'fontawesome-bullhorn');
INSERT INTO `module` VALUES ('4', 'User Interfaces', 'publish', 'bottom', 'mod_UserInterface', '2014-06-09 23:15:27', '2014-06-09 16:15:27', '5', null, 'fontawesome-sitemap');
INSERT INTO `module` VALUES ('5', 'Contact', 'publish', 'content', 'mod_Contact', '2014-06-09 23:15:27', '2014-06-09 16:15:27', '6', null, 'maki-warehouse');
INSERT INTO `module` VALUES ('6', 'Title Bar', 'publish', 'title_bar', 'mod_TitleBar', '2014-06-09 23:15:27', '2014-06-09 16:15:27', '0', null, 'maki-embassy');
INSERT INTO `module` VALUES ('7', 'Support', 'publish', 'content', 'mod_Support', '2014-06-09 23:15:27', '2014-06-09 16:15:27', '7', null, 'maki-hospital');
INSERT INTO `module` VALUES ('8', 'Service', 'publish', 'content', 'mod_Service', '2014-06-09 23:15:27', '2014-06-09 16:15:27', '8', null, 'maki-fuel');
INSERT INTO `module` VALUES ('9', 'About', 'publish', 'content', 'mod_About', '2014-06-09 23:15:35', '2014-06-09 16:15:35', '9', null, 'fontawesome-globe');
INSERT INTO `module` VALUES ('10', 'Google Map', 'publish', 'top', 'mod_Maps', '2014-06-09 23:15:27', '2014-06-09 16:15:27', '2', null, 'fontawesome-pinterest-sign');
INSERT INTO `module` VALUES ('11', 'Happy Clients', 'publish', 'bottom', 'mod_HappyClient', '2014-06-09 23:15:35', '2014-06-09 16:15:35', '9', null, 'fontawesome-hand-up');
INSERT INTO `module` VALUES ('12', 'Link to Request Demo', 'publish', 'content', 'mod_RequestDemo', '2014-06-20 20:28:06', '2014-06-20 13:28:06', '3', null, 'fontawesome-beaker');
INSERT INTO `module` VALUES ('13', 'Tutorial', 'publish', 'content', 'mod_Tutorial', '2014-06-10 14:06:24', '2014-06-10 14:06:24', '4', null, 'fontawesome-film');
INSERT INTO `module` VALUES ('14', 'Request Demo', 'publish', 'content', 'mod_SubmitRequestDemo', '2014-06-20 20:27:45', '2014-06-20 13:27:45', '0', null, '');

-- ----------------------------
-- Table structure for `module_data`
-- ----------------------------
DROP TABLE IF EXISTS `module_data`;
CREATE TABLE `module_data` (
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of module_data
-- ----------------------------
INSERT INTO `module_data` VALUES ('12', ' Full Control ', '', 'Recruitment Software with a difference', '', null, null, '1', 'en', '1', '2014-06-20 03:21:42', '2014-06-19 20:21:42', '0', 'publish', null, 'http://completermp.com/marketing/', '_self');
INSERT INTO `module_data` VALUES ('28', 'Security', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', null, null, '1', 'en', '1', '2014-06-08 04:16:56', '2014-06-07 21:16:56', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('29', 'Security', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', null, null, '1', 'en', '2', '2014-06-07 21:19:15', '2014-06-07 21:19:15', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('30', 'Reliability', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', null, null, '1', 'en', '2', '2014-06-07 21:20:07', '2014-06-07 21:20:07', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('31', 'Accuracy', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', null, null, '1', 'en', '2', '2014-06-07 21:21:13', '2014-06-07 21:21:13', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('32', 'Efficiency', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', null, null, '1', 'en', '2', '2014-06-07 21:21:50', '2014-06-07 21:21:50', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('33', 'Productivity', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', null, null, '1', 'en', '2', '2014-06-07 21:22:29', '2014-06-07 21:22:29', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('34', 'Convenience', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', null, null, '1', 'en', '2', '2014-06-07 21:23:11', '2014-06-07 21:23:11', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('35', 'Extendable', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', null, null, '1', 'en', '2', '2014-06-07 21:23:39', '2014-06-07 21:23:39', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('36', 'Simplicity', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', null, null, '1', 'en', '2', '2014-06-07 21:24:11', '2014-06-07 21:24:11', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('37', 'أمن', '', 'يمكن للموظفين الوصول إلى المعلومات على الفور في أي وقت ومن أي مكان لديه وصول إلى الشبكة.', '', null, null, '1', 'sa', '2', '2014-06-08 05:41:35', '2014-06-07 22:41:35', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('38', 'Recruitment software with a difference', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n\r\n					<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client\'s don\'t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n\r\n\r\n					<div style=\"height: 30px;\" class=\"gap\">\r\n					</div>\r\n				</div>\r\n\r\n				<div class=\"row-item col-1_2\">\r\n					<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n					<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n					<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n					<h3 class=\"lined margin-20\">Some ROI benefits</h3>\r\n					<div class=\"element-wrap\">					\r\n						<div data-value=\"90\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">Increase Data Accuracy to upto 90%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line\" style=\"width: 90%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"65\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">WordPress 65%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-4\" style=\"width: 65%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"78\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">Graphic Design 78%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-3\" style=\"width: 78%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"86\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">HTML/CSS 86%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-2\" style=\"width: 86%;\"></div>\r\n							</div>\r\n						</div>\r\n						\r\n						\r\n					</div>\r\n					<div style=\"height: 30px;\" class=\"gap\">\r\n					</div>\r\n				</div>', '', '', null, null, '1', 'en', '9', '2014-06-08 05:54:58', '2014-06-07 22:54:58', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('39', 'برامج التوظيف مع الفارق', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n\r\n					<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client\'s don\'t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n\r\n\r\n					<div style=\"height: 30px;\" class=\"gap\">\r\n					</div>\r\n				</div>\r\n\r\n				<div class=\"row-item col-1_2\">\r\n					<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n					<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n					<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n					<h3 class=\"lined margin-20\">Some ROI benefits</h3>\r\n					<div class=\"element-wrap\">					\r\n						<div data-value=\"90\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">Increase Data Accuracy to upto 90%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line\" style=\"width: 90%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"65\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">WordPress 65%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-4\" style=\"width: 65%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"78\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">Graphic Design 78%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-3\" style=\"width: 78%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"86\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">HTML/CSS 86%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-2\" style=\"width: 86%;\"></div>\r\n							</div>\r\n						</div>\r\n						\r\n						\r\n					</div>\r\n					<div style=\"height: 30px;\" class=\"gap\">\r\n					</div>\r\n				</div>', '', '', null, null, '1', 'sa', '9', '2014-06-07 22:55:54', '2014-06-07 22:55:54', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('40', 'ICEAT', '', '', '', null, null, '1', 'en', '11', '2014-06-09 20:52:46', '2014-06-09 13:52:46', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('41', 'QEHC', '', '', '', null, null, '1', 'en', '11', '2014-06-09 13:43:27', '2014-06-09 13:43:27', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('43', 'Feature recruiter\'s', '', 'Vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil ', 'icon-magic medium colored', null, null, '1', 'en', '3', '2014-06-19 22:57:29', '2014-06-28 08:46:35', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('44', 'Feature client\'s', '', 'Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium ', 'icon-bullhorn medium colored', null, null, '1', 'en', '3', '2014-06-19 22:57:29', '2014-06-28 08:39:10', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('45', 'Applicants ', '', 'Inventore veritatis et quasi architectos beatae vitae dicta sunt explicabo. Nemo enims sadips ipsums un', '', null, null, '1', 'en', '4', '2014-06-09 14:46:17', '2014-06-09 14:46:17', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('46', 'Clients', '', '', '', null, null, '1', 'en', '4', '2014-06-09 14:46:34', '2014-06-09 14:46:34', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('47', 'Recruiters', '', '', '', null, null, '1', 'en', '4', '2014-06-09 14:46:44', '2014-06-09 14:46:44', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('48', 'Agents', '', '', '', null, null, '1', 'en', '4', '2014-06-09 14:46:54', '2014-06-09 14:46:54', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('49', 'Data Migration', '<div class=\"tab active\">\r\n<p>We apply several clearly defined stages for implementing CompleteRMP which make the transition from existing systems straightforward. We do this by setting up a &quot;work in progress&quot; system which we continually update &amp; customise until you are completely happy. We can then provide training on this temporary system before you go live to make sure everyone in your organisation is completely happy and ready before you switch over.</p>\r\n\r\n<p>The process starts with requirements gathering and our experienced consultants will advise you on the best way to customise CompleteRMP based on your specific requirements. If you are already using a system of any kind, we will discuss the data with you and in most cases can take a sample of your data and provide a fixed price quotation for data migration.</p>\r\n\r\n<p>We will then begin to customise the temporary system and start working on your data import. Once we have completed the data import, we will update the temporary system with your own data. You can then advise us on the imported data and if you would like to make any changes, for example you may want us to perform some data cleansing, duplicate checking or re-formatting.</p>\r\n\r\n<p>This is an iterative process and we will continue to update the temporary system based on your feedback and re-import the cleansed data until you are completely happy.</p>\r\n\r\n<p>We will then agree a day when you will stop using your existing system, at which time we will take a fresh copy of your existing data with any files and CV&#39;s and run our ready prepared import scripts. The temporary system will be updated once again and will be ready for you to start using as your new recruitment system.</p>\r\n</div>\r\n', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. ', 'icon-exchange', null, null, '1', 'en', '8', '2014-06-09 15:07:13', '2014-06-09 15:07:13', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('50', 'Bespoke Programming', '<div class=\"tab active\">\r\n<p>We offer bespoke programming services to our client base to provide additional functionality specific to the way they work and integrate this with their CompleteRMP product. Examples of this type of service would be to provide client specific tools that speed up internal processes such as synchronising with external systems. We can also develop any type of specific report and integrate it with your CompleteRMP system for example to be processed before management meetings and keep track of KPI&#39;s and sales forecasts.</p>\r\n\r\n<p>If suggested functionality would benefit the rest of our client base then this is included in the next product update for everyone so you will also benefit from tools and features suggested by the rest of our client base.</p>\r\n</div>\r\n', 'Feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent ', 'icon-code', null, null, '1', 'en', '8', '2014-06-09 15:07:49', '2014-06-09 15:07:49', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('51', 'Data Migration', '<div class=\"tab active\">\r\n<p>The CompleteRMP development team are specialists in carrying out seamless website integrations and as CompleteRMP is completely web based, new and innovative features can easily be integrated into your website without incurring large development costs. Over the years, we have produced a suit of internet recruitment tools that can easily be &quot;plugged in&quot; to any website to provide the latest recruitment functionality.</p>\r\n\r\n<p>You can use our in-house creative design &amp; development team and extensive network of partners or we will work with your own designers to integrate our technology &amp; assist with website creation &amp; company branding. We can quickly build your website already configured with the latest recruitment technology such as candidate area / registration, dynamic vacancy pages, automatic CV data extraction, hiring manager access and intelligent pre-screening at a fraction of the cost for a bespoke development.</p>\r\n\r\n<p>For more information please read the following information about recruitment website Development and internet recruitment software for recruitment consultancies or corporate recruitment.</p>\r\n</div>\r\n', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. ', 'icon-desktop', null, null, '1', 'en', '8', '2014-06-09 15:08:25', '2014-06-09 15:08:25', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('52', 'Secure Hosting & Security', '<div class=\"tab active\">\r\n<p>The security of your data is our highest priority and every measure is taken to protect it. In fact, it is usually the case that our client&#39;s data is far more secure on our servers than on their own premises.</p>\r\n\r\n<p>Data security breaches can come from two main areas. First you must establish tight security within your own organisation. The comprehensive administration tools in our online recruitment solution will help with this as you have full control over each user&#39;s access rights and permissions. You can restrict users access to any area of CompleteRMP and even set the times they are allowed access for example to prevent access on evenings and weekends. You can also prevent individual user access from outside your own premises altogether.</p>\r\n\r\n<p>&nbsp;</p>\r\nOur servers are maintained in a state of the art data centre and are monitored 24 x 7. All our servers are configured in the best possible way by professionals to eliminate external threats. They are protected from fire, power outages and theft through stringent security measures that wouldn&#39;t go amiss in an airport and are connected with multiple internet connections to eliminate down time. We use the latest corporate Anti Virus software and our hardware and software firewalls stop unauthorised access.\r\n\r\n<p>As a final precaution, our entire client&#39;s data is backed up daily and stored in a separate location.</p>\r\n</div>\r\n', 'Feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent ', 'icon-lock', null, null, '1', 'en', '8', '2014-06-09 15:08:57', '2014-06-09 15:08:57', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('53', 'Premium Bronze Support', '<div class=\"row-item col-1_3\">\r\n<div class=\"b-tariff m-popular\">\r\n<div class=\"popular-title m-turquoise\">Premium Bronze Support</div>\r\n\r\n<div class=\"tariff-head\">\r\n<div class=\"tariff-title\">Bronze Package</div>\r\n\r\n<div class=\"tariff-price\"><span class=\"tariff-cy\">$</span> <span class=\"tariff-cost\">25</span> <span class=\"tariff-period\">/mo</span></div>\r\n\r\n<p class=\"tariff-description\">Sed ut perspiciatis unde omnis iste natus.</p>\r\n</div>\r\n\r\n<ul class=\"tariff-meta\">\r\n	<li><mark class=\"green strong\">FREE</mark> Setup</li>\r\n	<li>3 Active Users</li>\r\n	<li>Additional User is $5/mo</li>\r\n	<li>Unlimited Questions</li>\r\n	<li>Full Data Security</li>\r\n</ul>\r\n<a class=\"btn green tariff-btn\" href=\"#\">Start Now!</a></div>\r\n</div>', '', '', null, null, '1', 'en', '7', '2014-06-09 22:20:15', '2014-06-09 15:20:15', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('54', 'Premium Silver Support', '<div class=\"row-item col-1_3\">\r\n<div class=\"b-tariff m-popular\">\r\n<div class=\"popular-title m-turquoise\">Premium Silver Support</div>\r\n\r\n<div class=\"tariff-head\">\r\n<div class=\"tariff-title\">Silver Package</div>\r\n\r\n<div class=\"tariff-price\"><span class=\"tariff-cy\">$</span> <span class=\"tariff-cost\">50</span> <span class=\"tariff-period\">/mo</span></div>\r\n\r\n<p class=\"tariff-description\">Nemo enim ipsam voluptas.</p>\r\n</div>\r\n\r\n<ul class=\"tariff-meta\">\r\n	<li><mark class=\"green strong\">FREE</mark> Setup</li>\r\n	<li>3 Active Users</li>\r\n	<li>Additional User is $5/mo</li>\r\n	<li>Unlimited Questions</li>\r\n	<li>Full Data Security</li>\r\n</ul>\r\n<a class=\"btn turquoise tariff-btn\" href=\"#\">Start Now!</a></div>\r\n</div>', '', '', null, null, '1', 'en', '7', '2014-06-09 22:20:01', '2014-06-09 15:20:01', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('55', 'Premium Gold Support', '<div class=\"row-item col-1_3\">\r\n					\r\n					<div class=\"b-tariff m-popular\">\r\n						<div class=\"popular-title m-turquoise\">Premium Gold Support</div>\r\n\r\n						<div class=\"tariff-head\">\r\n							<div class=\"tariff-title\">Gold Package</div>\r\n\r\n							<div class=\"tariff-price\">\r\n								<span class=\"tariff-cy\">$</span>\r\n								<span class=\"tariff-cost\">75</span>\r\n								<span class=\"tariff-period\">/mo</span>\r\n							</div>\r\n\r\n							<p class=\"tariff-description\">Neque porro quisquam ipsum.</p>\r\n						</div>\r\n						<ul class=\"tariff-meta\">\r\n							<li><mark class=\"green strong\">FREE</mark> Setup</li>\r\n							<li><i style=\"color: #73ca3f;\" class=\"icon-user\"></i> 3 Active Users</li>\r\n							<li><i style=\"color: #73ca3f;\" class=\"icon-plus\"></i> Additional User is $5/mo</li>\r\n							<li><i style=\"color: #73ca3f;\" class=\"icon-lock\"></i> Unlimited Questions</li>\r\n							<li><i style=\"color: #73ca3f;\" class=\"icon-ok\"></i> Full Data Security</li>\r\n						</ul>\r\n\r\n						<a href=\"#\" class=\"btn blue tariff-btn\">Start Now!</a>\r\n					</div>\r\n\r\n				</div>', '', '', null, null, '1', 'en', '7', '2014-06-09 15:19:29', '2014-06-09 15:19:29', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('56', 'test video', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"//www.youtube.com/embed/HkMNOlYcpHg\" width=\"420\"></iframe></p>\r\n', '', '', null, null, '1', 'en', '13', '2014-06-11 04:24:32', '2014-06-10 21:24:32', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('74', 'Laravel Tutorial Part 1 - Installation and Configuration ', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"//www.youtube.com/embed/m5Jmh9JKnyQ\" width=\"420\"></iframe></p>\r\n', '', '', null, null, '1', 'en', '13', '2014-06-10 16:48:12', '2014-06-10 16:48:12', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('75', 'Learn HTML in 12 Minutes ', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"//www.youtube.com/embed/bWPMSSsVdPk\" width=\"420\"></iframe></p>\r\n', '', '', null, null, '1', 'en', '13', '2014-06-11 04:23:48', '2014-06-10 21:23:48', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('76', 'Top Google SEO Tips, Secrets, and Tricks', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"//www.youtube.com/embed/j-kpz_DKVw8\" width=\"420\"></iframe></p>\r\n', '', '', null, null, '1', 'en', '13', '2014-06-10 21:22:39', '2014-06-10 21:22:39', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('82', 'INTEL', '', '', '', null, null, '1', 'en', '11', '2014-06-10 23:34:51', '2014-06-10 23:34:51', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('101', 'eeeeeeeeeeeeee', '<div class=\"row-item col-1_3\">\r\n<div class=\"b-tariff m-popular\">\r\n<div class=\"popular-title m-turquoise\">Premium Gold Support</div>\r\n\r\n<div class=\"tariff-head\">\r\n<div class=\"tariff-title\">Gold Package</div>\r\n\r\n<div class=\"tariff-price\"><span class=\"tariff-cy\">$</span> <span class=\"tariff-cost\">75</span> <span class=\"tariff-period\">/mo</span></div>\r\n\r\n<p class=\"tariff-description\">Neque porro quisquam ipsum.</p>\r\n</div>\r\n\r\n<ul class=\"tariff-meta\">\r\n	<li><mark class=\"green strong\">FREE</mark> Setup</li>\r\n	<li>3 Active Users</li>\r\n	<li>Additional User is $5/mo</li>\r\n	<li>Unlimited Questions</li>\r\n	<li>Full Data Security</li>\r\n</ul>\r\n<a class=\"btn blue tariff-btn\" href=\"#\">Start Now!</a></div>\r\n</div>\r\n', 'bbbbbbbbbbbb', '', null, null, '1', 'en', '7', '2014-06-16 20:46:37', '2014-06-16 13:46:37', '0', 'unpublish', null, '', '_self');
INSERT INTO `module_data` VALUES ('102', 'أمن', '', 'برامج التوظيف مع الفارق', '', null, null, '1', 'sa', '1', '2014-06-21 05:15:16', '2014-06-20 22:15:16', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('108', 'Applicant\'s full profile ', '<p>feature applicant&#39;s</p>\r\n', 'feature applicant\'s', '', null, null, '1', 'en', '3', '2014-06-28 08:28:13', '2014-06-28 08:34:14', '0', 'publish', null, '', '_self');

-- ----------------------------
-- Table structure for `module_intro`
-- ----------------------------
DROP TABLE IF EXISTS `module_intro`;
CREATE TABLE `module_intro` (
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of module_intro
-- ----------------------------
INSERT INTO `module_intro` VALUES ('2', 'Need more reasons to choose CompleteRMP!', '', '9', 'en', '2014-06-09 22:03:55', '2014-06-09 15:03:55', 'publish', '2', '1');
INSERT INTO `module_intro` VALUES ('3', 'بحاجة الى مزيد من الأسباب لاختيار CompleteRMP!', '', '0', 'sa', '2014-06-07 22:15:02', '2014-06-07 22:15:02', 'publish', '2', '1');
INSERT INTO `module_intro` VALUES ('4', 'Our Happy Clients', '', '', 'en', '2014-06-09 13:43:58', '2014-06-09 13:43:58', 'publish', '11', '1');
INSERT INTO `module_intro` VALUES ('5', 'Ullam Corporis Suscipit Laboriosam', '', 'Aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt ', 'en', '2014-06-09 21:02:35', '2014-06-09 14:02:35', 'publish', '12', '1');
INSERT INTO `module_intro` VALUES ('6', 'Dedicated User Interfaces', '', '', 'en', '2014-06-09 21:49:52', '2014-06-09 14:49:52', 'publish', '4', '1');
INSERT INTO `module_intro` VALUES ('7', 'Available Support Packages.', '', 'We provide 24/7 support to all of our customers via our Knowledge Base, Online Resources ( video tutorials ) and Support Tickets. For three months we provide free limited telephone support in addition to the previously mentioned methods. After the 3 months ?? period clients can purchase one of three premium support packages.', 'en', '2014-06-09 15:15:37', '2014-06-09 15:15:37', 'publish', '7', '1');

-- ----------------------------
-- Table structure for `page_module`
-- ----------------------------
DROP TABLE IF EXISTS `page_module`;
CREATE TABLE `page_module` (
  `page_id` int(11) NOT NULL DEFAULT '0',
  `module_id` int(11) NOT NULL DEFAULT '0',
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`page_id`,`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of page_module
-- ----------------------------
INSERT INTO `page_module` VALUES ('1', '1', null, '2014-06-19 20:58:01', '2014-06-19 20:58:01');
INSERT INTO `page_module` VALUES ('1', '2', null, '2014-06-19 20:58:01', '2014-06-19 20:58:01');
INSERT INTO `page_module` VALUES ('1', '3', null, '2014-06-19 20:58:01', '2014-06-19 20:58:01');
INSERT INTO `page_module` VALUES ('1', '11', null, '2014-06-19 20:58:01', '2014-06-19 20:58:01');
INSERT INTO `page_module` VALUES ('1', '12', null, '2014-06-19 20:58:01', '2014-06-19 20:58:01');
INSERT INTO `page_module` VALUES ('2', '4', null, '2014-06-09 14:49:28', '2014-06-09 14:49:28');
INSERT INTO `page_module` VALUES ('2', '6', null, '2014-06-09 14:49:28', '2014-06-09 14:49:28');
INSERT INTO `page_module` VALUES ('2', '9', null, '2014-06-09 14:49:28', '2014-06-09 14:49:28');
INSERT INTO `page_module` VALUES ('3', '6', null, '2014-06-09 15:06:03', '2014-06-09 15:06:03');
INSERT INTO `page_module` VALUES ('3', '8', null, '2014-06-09 15:06:03', '2014-06-09 15:06:03');
INSERT INTO `page_module` VALUES ('4', '5', null, '2014-06-09 15:27:00', '2014-06-09 15:27:00');
INSERT INTO `page_module` VALUES ('4', '6', null, '2014-06-09 15:27:00', '2014-06-09 15:27:00');
INSERT INTO `page_module` VALUES ('4', '10', null, '2014-06-09 15:27:00', '2014-06-09 15:27:00');
INSERT INTO `page_module` VALUES ('10', '6', null, '2014-06-19 18:51:08', '2014-06-19 18:51:08');
INSERT INTO `page_module` VALUES ('11', '6', null, '2014-06-09 15:14:23', '2014-06-09 15:14:23');
INSERT INTO `page_module` VALUES ('11', '7', null, '2014-06-09 15:14:23', '2014-06-09 15:14:23');
INSERT INTO `page_module` VALUES ('12', '6', null, '2014-06-10 23:16:04', '2014-06-10 23:16:04');
INSERT INTO `page_module` VALUES ('12', '14', null, '2014-06-10 23:16:04', '2014-06-10 23:16:04');
INSERT INTO `page_module` VALUES ('13', '6', null, '2014-06-19 19:48:31', '2014-06-19 19:48:31');
INSERT INTO `page_module` VALUES ('13', '13', null, '2014-06-19 19:48:31', '2014-06-19 19:48:31');

-- ----------------------------
-- Table structure for `pages`
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', 'Home', 'home', '2014-06-20 03:58:01', '2014-06-19 20:58:01', 'publish');
INSERT INTO `pages` VALUES ('2', 'About us', 'about', '2014-06-04 02:28:27', '2014-06-04 02:28:27', 'publish');
INSERT INTO `pages` VALUES ('3', 'Our Services ', 'service', '2014-06-04 02:28:27', '2014-06-04 02:28:27', 'publish');
INSERT INTO `pages` VALUES ('4', 'Contact Us', 'contact-us', '2014-06-04 02:28:31', '2014-06-04 02:28:31', 'publish');
INSERT INTO `pages` VALUES ('10', 'RMP Features ', 'features', '2014-06-04 02:28:30', '2014-06-04 02:28:30', 'publish');
INSERT INTO `pages` VALUES ('11', 'Support Packages ', 'support-packages', '2014-06-04 02:28:30', '2014-06-04 02:28:30', 'publish');
INSERT INTO `pages` VALUES ('12', 'Request Demo', 'request-demo', '2014-06-04 02:28:29', '2014-06-04 02:28:29', 'publish');
INSERT INTO `pages` VALUES ('13', 'Tutorial', 'tutorial', '2014-06-20 02:48:31', '2014-06-19 19:48:31', 'publish');
INSERT INTO `pages` VALUES ('14', 'Blog', 'blog', '2014-06-20 13:53:11', '2014-06-20 13:53:11', 'publish');
INSERT INTO `pages` VALUES ('15', 'eeeee', 'eeeeeeeeee', '2014-06-21 13:41:17', '2014-06-21 13:41:17', 'publish');
INSERT INTO `pages` VALUES ('16', 'r', 'a', '2014-06-21 13:41:22', '2014-06-21 13:41:22', 'publish');
INSERT INTO `pages` VALUES ('17', 'rrrrrrrrrrrr', 'rrrrrrrrrrrr', '2014-06-21 13:41:26', '2014-06-21 13:41:26', 'publish');

-- ----------------------------
-- Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', 'MANAGER', null, null);
INSERT INTO `permission` VALUES ('2', 'ADMIN', null, null);
INSERT INTO `permission` VALUES ('3', 'SUPPER', null, null);

-- ----------------------------
-- Table structure for `position`
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES ('1', 'title_bar', null, null, null, null);
INSERT INTO `position` VALUES ('2', 'header', null, null, null, null);
INSERT INTO `position` VALUES ('3', 'top', null, null, null, null);
INSERT INTO `position` VALUES ('4', 'content', null, null, null, null);
INSERT INTO `position` VALUES ('5', 'bottom', null, null, null, null);

-- ----------------------------
-- Table structure for `request_demo`
-- ----------------------------
DROP TABLE IF EXISTS `request_demo`;
CREATE TABLE `request_demo` (
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of request_demo
-- ----------------------------
INSERT INTO `request_demo` VALUES ('41', 'ddđ', 'd', 'aaaaaa', 'aaaaaaaa', '2014-06-20 18:19:36', '2014-06-20 18:19:36', 'unpublish', null, 'add@s.com');
INSERT INTO `request_demo` VALUES ('42', 'ddđ', 'd', 'aaaaaa', 'aaaaaaaa', '2014-06-20 18:28:00', '2014-06-20 18:28:00', 'unpublish', null, 'add@s.com');
INSERT INTO `request_demo` VALUES ('43', 'ddđ', 'cntt', 'sdfk', 'ssldkfl;f\r\n', '2014-06-20 20:35:43', '2014-06-20 20:35:43', 'unpublish', null, 'cn@gmail.copm');
INSERT INTO `request_demo` VALUES ('44', 'ddđ', 'cntt', 'sdfk', 'ssldkfl;f\r\n', '2014-06-21 20:46:07', '2014-06-21 13:46:07', 'publish', null, 'cn@gmail.copm');
INSERT INTO `request_demo` VALUES ('45', 'hello', 'sjdfklj', 'lsdjkf', 'jkl\r\n', '2014-06-23 13:43:26', '2014-06-28 09:13:07', 'publish', null, 'lksdfjk@s.com');
INSERT INTO `request_demo` VALUES ('46', 'test tieo', 'cntt', 'vi dui thoi na', 'pf ldldllđlldld\r\n', '2014-06-25 22:42:38', '2014-06-25 22:50:00', 'publish', null, 'thanhthong.dt@gmail.com');
INSERT INTO `request_demo` VALUES ('47', 'mr bin', 'SSS', 'i need 1 table demo applicant\'s', 'i need 1 table demo applicant\'s', '2014-06-28 09:08:29', '2014-06-28 09:11:13', 'publish', null, 'thanhtruyen@s.com');
INSERT INTO `request_demo` VALUES ('48', 'mr bin', 'SSS', 'i need 1 table demo applicant\'s', 'i need 1 table demo applicant\'s \r\nTrôi miên man về đâu một nhành hoa mới nở\r\nHoa vàng che lấp những con đuờng,\r\nTìm cho ta một cảm giác bình yên.\r\nNgày ấy tinh khôi và hồn nhiên\r\nNgày em ngủ trong trái tim, êm đềm quá\r\n\r\nEm yêu anh ngả nghiêng bồng bềnh niềm kiêu hãnh.\r\nThiên đuờng xanh mướt gió trong lành.\r\nCuốn vào đời anh là em bất tận.\r\nVô tình chúng ta thuộc về nhau, ngàn kiếp sau\r\n\r\nTiếng dương cầm lãng du môi mềm xinh xắn\r\nLà anh như mùa đông được sưởi ấm\r\nLà anh như tình yêu vĩnh hằng\r\n\r\nSẽ ko bao giờ chìm khuất\r\nGiấc mơ được có em thiên đường gọi tên\r\nGiấc mơ chúng mình cùng ước nguyện', '2014-06-28 09:13:30', '2014-06-28 09:13:57', 'publish', null, 'thanhtruyen@s.com');
INSERT INTO `request_demo` VALUES ('49', 'sssssssssssssssss', 'sssssssssssssssss', 'ssssssssssssss', 'ssssssssss', '2014-07-04 01:27:17', '2014-07-04 01:27:17', 'unpublish', null, 'sssssssssssss!s!@s.com');

-- ----------------------------
-- Table structure for `setting`
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES ('address', 'Address', 'Columbia', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('business_hours', 'Businness Hours', '<br> Monday-Friday: 9: <sup>00</sup> — 18: <sup>00</sup> <br> Saturday: 10: <sup>00</sup> — 17: <sup>00</sup> <br> Sunday: closed', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('email_contact', 'E-mail', 'info@completermp.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('email_encryption', 'Email Encryption', 'tls', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('email_host', 'Email Host', 'gator3228.hostgator.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('email_password', 'Email Password', 'Xqi1llvM:nx8', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('email_port', 'Email Port', '587', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('email_username', 'Email Username', 'abulayla', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('facebook', 'Facebook', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('footer_text', 'Footer', ' © 2014 All Right Reserved, ', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('google', 'Google', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('phone', 'Phone', '+1 (229) 991-22-11', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('slogan', 'Slogan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('twitter', 'Twitter', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('website_name', 'Website Name', 'RMP MARKETING', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `status`
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES ('publish', 'Publish', null);

-- ----------------------------
-- Table structure for `uploads`
-- ----------------------------
DROP TABLE IF EXISTS `uploads`;
CREATE TABLE `uploads` (
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
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of uploads
-- ----------------------------
INSERT INTO `uploads` VALUES ('0', '06-28-2014_images.jpg', 'asset/share/uploads/images/blog', 'image/jpeg', null, '2014-06-28 07:04:56', '2014-06-28 07:04:56', null, null, null, null, null, 'image');
INSERT INTO `uploads` VALUES ('35', '06-07-2014_Slider-1.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 21:01:04', '2014-06-10 22:08:12', null, null, '28', null, null, 'image');
INSERT INTO `uploads` VALUES ('36', '06-07-2014_security.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 21:19:15', '2014-06-10 22:08:12', null, null, '29', null, null, 'image');
INSERT INTO `uploads` VALUES ('37', '06-07-2014_reliability.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 21:20:07', '2014-06-10 22:08:12', null, null, '30', null, null, 'image');
INSERT INTO `uploads` VALUES ('38', '06-07-2014_accuracy.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 21:21:13', '2014-06-10 22:08:35', null, null, '31', null, null, 'image');
INSERT INTO `uploads` VALUES ('39', '06-07-2014_efficiency.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 21:21:50', '2014-06-10 22:08:28', null, null, '32', null, null, 'image');
INSERT INTO `uploads` VALUES ('40', '06-07-2014_productivity.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 21:22:29', '2014-06-10 22:08:27', null, null, '33', null, null, 'image');
INSERT INTO `uploads` VALUES ('41', '06-07-2014_convenience.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 21:23:11', '2014-06-10 22:08:27', null, null, '34', null, null, 'image');
INSERT INTO `uploads` VALUES ('42', '06-07-2014_extendable.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 21:23:39', '2014-06-10 22:08:26', null, null, '35', null, null, 'image');
INSERT INTO `uploads` VALUES ('43', '06-07-2014_simplicity.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 21:24:11', '2014-06-10 22:08:26', null, null, '36', null, null, 'image');
INSERT INTO `uploads` VALUES ('44', '06-07-2014_security.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 22:41:35', '2014-06-10 22:08:25', null, null, '37', null, null, 'image');
INSERT INTO `uploads` VALUES ('52', '06-09-2014_iceat.png', 'asset/share/uploads/images', 'image/png', null, '2014-06-09 13:39:59', '2014-06-10 22:08:22', null, null, '40', null, null, 'image');
INSERT INTO `uploads` VALUES ('53', '06-09-2014_qehc.png', 'asset/share/uploads/images', 'image/png', null, '2014-06-09 13:43:27', '2014-06-10 22:08:22', null, null, '41', null, null, 'image');
INSERT INTO `uploads` VALUES ('57', '06-09-2014_digital-art.png', 'asset/share/uploads/images', 'image/png', null, '2014-06-09 15:01:47', '2014-06-10 22:08:21', null, null, '47', null, null, 'image');
INSERT INTO `uploads` VALUES ('58', '06-09-2014_industrial-design.png', 'asset/share/uploads/images', 'image/png', null, '2014-06-09 15:01:56', '2014-06-10 22:08:21', null, null, '48', null, null, 'image');
INSERT INTO `uploads` VALUES ('59', '06-09-2014_vector-art.png', 'asset/share/uploads/images', 'image/png', null, '2014-06-09 15:02:07', '2014-06-10 22:08:20', null, null, '46', null, null, 'image');
INSERT INTO `uploads` VALUES ('60', '06-09-2014_programming.png', 'asset/share/uploads/images', 'image/png', null, '2014-06-09 15:02:18', '2014-06-10 22:08:19', null, null, '45', null, null, 'image');
INSERT INTO `uploads` VALUES ('124', '06-10-2014_test1.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-10 19:09:21', '2014-06-24 04:10:59', null, null, null, null, null, null);
INSERT INTO `uploads` VALUES ('125', '06-10-2014_test1.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-10 19:10:58', '2014-06-24 04:11:03', null, null, null, null, null, null);
INSERT INTO `uploads` VALUES ('151', '06-19-2014_05-29-2014_Slider-14.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-19 20:21:43', '2014-06-19 20:21:43', null, null, '12', null, null, 'image');
INSERT INTO `uploads` VALUES ('223', '06-28-2014_test1.jpg', 'asset/share/uploads/images/personal', 'image/jpeg', null, '2014-06-28 07:43:51', '2014-06-28 07:43:51', null, null, null, null, null, 'image');
INSERT INTO `uploads` VALUES ('224', '06-28-2014_applicant_pedding_view.png', 'asset/share/uploads/images', 'image/png', null, '2014-06-28 08:28:13', '2014-06-28 08:28:13', null, null, '108', null, null, 'image');
INSERT INTO `uploads` VALUES ('225', '06-28-2014_applicant_pedding_view_application.png', 'asset/share/uploads/images', 'image/png', null, '2014-06-28 08:28:13', '2014-06-28 08:28:13', null, null, '108', null, null, 'image');
INSERT INTO `uploads` VALUES ('226', '06-28-2014_applicant_search_applicant.png', 'asset/share/uploads/images', 'image/png', null, '2014-06-28 08:28:13', '2014-06-28 08:28:13', null, null, '108', null, null, 'image');
INSERT INTO `uploads` VALUES ('227', '06-28-2014_client_detail.png', 'asset/share/uploads/images', 'image/png', null, '2014-06-28 08:39:10', '2014-06-28 08:39:10', null, null, '44', null, null, 'image');
INSERT INTO `uploads` VALUES ('228', '06-28-2014_client_list.png', 'asset/share/uploads/images', 'image/png', null, '2014-06-28 08:39:10', '2014-06-28 08:39:10', null, null, '44', null, null, 'image');
INSERT INTO `uploads` VALUES ('229', '06-28-2014_recruiter_detail.png', 'asset/share/uploads/images', 'image/png', null, '2014-06-28 08:44:04', '2014-06-28 08:44:04', null, null, '43', null, null, 'image');
INSERT INTO `uploads` VALUES ('230', '06-28-2014_recruiter_list.png', 'asset/share/uploads/images', 'image/png', null, '2014-06-28 08:44:04', '2014-06-28 08:44:04', null, null, '43', null, null, 'image');
INSERT INTO `uploads` VALUES ('231', '06-28-2014_Masterclass-in-HTML5-and-006.jpg', 'asset/share/uploads/images/blog', 'image/jpeg', null, '2014-06-28 09:17:32', '2014-06-28 09:17:32', null, null, null, null, null, 'image');
INSERT INTO `uploads` VALUES ('232', '07-17-2014_7amMar20.If i fail.jpg', 'asset/share/uploads/images/personal', 'image/jpeg', null, '2014-07-17 10:37:58', '2014-07-17 10:37:58', null, null, null, null, null, 'image');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `count_login` int(11) DEFAULT NULL,
  `status` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `company` text COLLATE utf8_unicode_ci,
  `avatar` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '$2y$10$a4dduFKi0PKnoXeN1vEyEuLSU55a3LkOszloiBBK.8EcJYue7IVZ2', '', '5555555555', 'So  to , co cp, wasintoneDC', '3', '12', '344', '', 'luong', 'truyen', '2014-06-03 22:38:27', '2014-06-28 07:43:51', '1', 'publish', 'TNHH MTV SFR SOFTWARE', '223');
INSERT INTO `users` VALUES ('15', 'username  ', '$2y$10$JE.6zQG/PnD89wa4o1TmkO6MxXrJTF2Nj7sT7qwg48TKlYNhRiYwa', 'test@gmail.com', '012365478', 'VIETNAMESE', '1', null, null, 'female', 'TEST', 'MR', '2014-06-03 22:38:27', '2014-06-19 21:13:35', null, 'publish', 'fpt', '83');
INSERT INTO `users` VALUES ('17', 'ltt.develop@gmail.com', '$2y$10$Yvf1fa3vASOskoIH5/afBORzJ4NQCekpwCh.vfxVxeSBiaptjaeYe', 'ltt.develop@gmail.com', '', '', '2', null, null, 'male', 'truyen', 'luong', '2014-06-04 21:24:35', '2014-06-20 13:42:08', null, 'publish', 'sony', '152');
INSERT INTO `users` VALUES ('18', 'luong@email.com', '$2y$10$aD98BXA5k24yqW2xqtLfIOnFMsp76N9/w.XTL3qcG7suSgM9/PCoC', 'luong@email.com', '', '', '3', null, null, 'male', '', '', '2014-06-05 23:27:51', '2014-07-17 10:37:58', null, 'publish', '', '232');
