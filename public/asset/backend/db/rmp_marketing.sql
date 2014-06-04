/*
Navicat MySQL Data Transfer

Source Server         : soft
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : rmp_marketing

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2014-06-04 18:39:34
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', 'Recruitment software with a difference', 'about', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client\'s don\'t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n<div class=\"gap\" style=\"height: 30px;\">&nbsp;</div>\r\n<div class=\"row-item col-1_2\">\r\n<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n<h3 class=\"lined margin-20\">Some ROI benefits</h3>\r\n<div class=\"element-wrap\">\r\n<div class=\"b-progress-bar\" data-value=\"90\" data-capacity=\"100\">\r\n<div class=\"progress-label\">Increase Data Accuracy to upto 90%</div>\r\n<div class=\"progress-scale\">&nbsp;</div>\r\n</div>\r\n<div class=\"b-progress-bar\" data-value=\"65\" data-capacity=\"100\">\r\n<div class=\"progress-label\">WordPress 65%</div>\r\n<div class=\"progress-scale\">&nbsp;</div>\r\n</div>\r\n<div class=\"b-progress-bar\" data-value=\"78\" data-capacity=\"100\">\r\n<div class=\"progress-label\">Graphic Design 78%</div>\r\n<div class=\"progress-scale\">&nbsp;</div>\r\n</div>\r\n<div class=\"b-progress-bar\" data-value=\"86\" data-capacity=\"100\">\r\n<div class=\"progress-label\">HTML/CSS 86%</div>\r\n<div class=\"progress-scale\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"gap\" style=\"height: 30px;\">&nbsp;</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<!-- end cut -->', '2014-05-27 08:21:51', '2014-06-04 11:17:08', '1', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n\r\n					<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client\'s don\'t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n\r\n\r\n					<div style=\"height: 30px;\" class=\"gap\">\r\n					</div>\r\n				</div>\r\n\r\n				<div class=\"row-item col-1_2\">\r\n					<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n					<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n					<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n					<h3 class=\"lined margin-20\">Some ROI benefits</h3>\r\n					<div class=\"element-wrap\">					\r\n						<div data-value=\"90\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">Increase Data Accuracy to upto 90%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line\" style=\"width: 90%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"65\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">WordPress 65%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-4\" style=\"width: 65%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"78\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">Graphic Design 78%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-3\" style=\"width: 78%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"86\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">HTML/CSS 86%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-2\" style=\"width: 86%;\"></div>\r\n							</div>\r\n						</div>\r\n						\r\n						\r\n					</div>\r\n					<div style=\"height: 30px;\" class=\"gap\">\r\n					</div>\r\n				</div>', '', 'publish', null);
INSERT INTO `articles` VALUES ('3', 'sssssssssssssssss', 'about', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client\'s don\'t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n<div class=\"gap\" style=\"height: 30px;\">&nbsp;</div>\r\n<div class=\"row-item col-1_2\">\r\n<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n<h3 class=\"lined margin-20\">Some ROI benefits</h3>\r\n<div class=\"element-wrap\">\r\n<div class=\"b-progress-bar\" data-value=\"90\" data-capacity=\"100\">\r\n<div class=\"progress-label\">Increase Data Accuracy to upto 90%</div>\r\n<div class=\"progress-scale\">&nbsp;</div>\r\n</div>\r\n<div class=\"b-progress-bar\" data-value=\"65\" data-capacity=\"100\">\r\n<div class=\"progress-label\">WordPress 65%</div>\r\n<div class=\"progress-scale\">&nbsp;</div>\r\n</div>\r\n<div class=\"b-progress-bar\" data-value=\"78\" data-capacity=\"100\">\r\n<div class=\"progress-label\">Graphic Design 78%</div>\r\n<div class=\"progress-scale\">&nbsp;</div>\r\n</div>\r\n<div class=\"b-progress-bar\" data-value=\"86\" data-capacity=\"100\">\r\n<div class=\"progress-label\">HTML/CSS 86%</div>\r\n<div class=\"progress-scale\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"gap\" style=\"height: 30px;\">&nbsp;</div>\r\n</div>\r\n<p>--&gt; </p>\r\n<!-- end cut -->', '2014-06-04 10:32:47', '2014-06-04 10:53:48', '1', 'sssssssssssssssss', 'ssssss', 'unpublish', null);
INSERT INTO `articles` VALUES ('5', 'dddddddddddddddddddddddddddd', 'ddddddddddd', '<p><img alt=\"\" src=\"http://assets20.pokemon.com/static2/_ui/img/chrome/external_link_bumper.png\" style=\"width: 237px; height: 270px;\" /></p>\r\n', '2014-06-04 11:38:49', '2014-06-04 11:38:49', '17', '', '', 'publish', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('2', 'SERVICE', '', null, 'publish', null, '2014-05-31 04:01:43', '0', '');
INSERT INTO `categories` VALUES ('9', 'PAGE', '', null, 'publish', null, '2014-05-30 01:56:28', '0', '');
INSERT INTO `categories` VALUES ('11', 'Features', '', null, 'publish', null, '2014-05-29 03:51:46', '0', 'features');
INSERT INTO `categories` VALUES ('19', 'MARKETING', '', null, 'publish', '2014-05-30 02:38:14', '2014-05-31 01:40:07', '2', '');

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
INSERT INTO `categories_articles` VALUES ('2', '13');
INSERT INTO `categories_articles` VALUES ('2', '111');
INSERT INTO `categories_articles` VALUES ('2', '112');
INSERT INTO `categories_articles` VALUES ('9', '1');
INSERT INTO `categories_articles` VALUES ('9', '2');
INSERT INTO `categories_articles` VALUES ('9', '3');
INSERT INTO `categories_articles` VALUES ('9', '4');
INSERT INTO `categories_articles` VALUES ('9', '5');
INSERT INTO `categories_articles` VALUES ('9', '12');
INSERT INTO `categories_articles` VALUES ('9', '13');
INSERT INTO `categories_articles` VALUES ('9', '110');
INSERT INTO `categories_articles` VALUES ('9', '112');
INSERT INTO `categories_articles` VALUES ('11', '2');
INSERT INTO `categories_articles` VALUES ('11', '113');

-- ----------------------------
-- Table structure for `group_uploads`
-- ----------------------------
DROP TABLE IF EXISTS `group_uploads`;
CREATE TABLE `group_uploads` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `upload_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of group_uploads
-- ----------------------------

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
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('10', 'Nokia', '', '', null, '30', '12', 'unpublish', '2014-06-02 10:38:30', '2014-06-02 03:38:30', null);
INSERT INTO `menu` VALUES ('12', 'About', 'about', 'icon-folder-open', null, '0', '1', 'publish', '2014-06-02 15:34:18', '2014-06-02 08:34:18', '2');
INSERT INTO `menu` VALUES ('20', 'Home', 'home', 'icon-home active', null, '0', '0', 'publish', '2014-06-02 17:18:22', '2014-06-02 17:18:22', '1');
INSERT INTO `menu` VALUES ('25', 'Features', 'features', 'icon-file-text-alt', null, '0', '2', 'publish', '2014-06-02 15:34:26', '2014-06-02 08:34:26', '10');
INSERT INTO `menu` VALUES ('26', 'Services', 'service', 'icon-random', null, '0', '3', 'publish', '2014-06-02 15:34:33', '2014-06-02 08:34:33', '3');
INSERT INTO `menu` VALUES ('27', 'Support', 'support-packages', 'icon-headphones', null, '0', '4', 'publish', '2014-06-02 15:34:40', '2014-06-02 08:34:40', '11');
INSERT INTO `menu` VALUES ('28', 'Request Demo', 'request-demo', 'icon-time', null, '0', '5', 'publish', '2014-06-02 15:34:47', '2014-06-02 08:34:47', '12');
INSERT INTO `menu` VALUES ('29', 'Contact', 'contact-us', 'icon-envelope', null, '0', '7', 'publish', '2014-06-02 15:35:02', '2014-06-02 08:35:02', '4');
INSERT INTO `menu` VALUES ('30', 'Blog', 'blog', '', null, '0', '6', 'unpublish', '2014-06-03 14:47:01', '2014-06-03 07:47:01', '13');

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
INSERT INTO `migrations` VALUES ('2014_05_23_024314_create_role_table', '1');
INSERT INTO `migrations` VALUES ('2014_05_23_030403_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2014_05_23_031608_create_articles_table', '1');
INSERT INTO `migrations` VALUES ('2014_05_23_032130_create_categories_table', '1');
INSERT INTO `migrations` VALUES ('2014_05_23_032144_create_categories_articles_table', '1');
INSERT INTO `migrations` VALUES ('2014_05_26_013253_create_uploads_table', '1');
INSERT INTO `migrations` VALUES ('2014_05_26_013355_create_group_uploads_table', '1');
INSERT INTO `migrations` VALUES ('2014_05_27_080719_create_status_table', '2');
INSERT INTO `migrations` VALUES ('2014_05_29_013108_create_silder_table', '3');
INSERT INTO `migrations` VALUES ('2014_05_29_101641_create_menu_table', '4');
INSERT INTO `migrations` VALUES ('2014_05_30_073237_create_setting_table', '5');
INSERT INTO `migrations` VALUES ('2014_05_30_084316_create_setting_table', '6');
INSERT INTO `migrations` VALUES ('2014_05_31_015930_create_permission_table', '7');

-- ----------------------------
-- Table structure for `module`
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mod` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES ('1', 'Slider', null, 'publish', 'header', 'mod_Slider', '2014-06-04 08:44:41', '2014-06-04 08:44:41', '2');
INSERT INTO `module` VALUES ('2', 'Reason', null, 'publish', 'content', 'mod_Reason', '2014-06-04 08:44:55', '2014-06-04 08:44:55', '4');
INSERT INTO `module` VALUES ('3', 'Feature', null, 'publish', 'top', 'mod_Feature', '2014-06-04 08:44:53', '2014-06-04 08:44:53', '3');
INSERT INTO `module` VALUES ('4', 'User Interfaces', null, 'publish', 'bottom', 'mod_UserInterface', '2014-06-04 08:45:07', '2014-06-04 08:45:07', '5');
INSERT INTO `module` VALUES ('5', 'Contact', 'We would be glad to have feedback from you. Drop us a line, whether it is a comment, a question, a work proposition or just a hello. You can use either the form below or the contact details on the right. ', 'publish', 'content', 'mod_Contact', '2014-06-04 08:45:10', '2014-06-04 08:45:10', '6');
INSERT INTO `module` VALUES ('6', 'Title Bar', '', 'publish', 'title_bar', 'mod_TitleBar', '2014-06-04 08:46:50', '2014-06-04 01:46:50', '0');
INSERT INTO `module` VALUES ('7', 'Support', 'We provide 24/7 support to all of our customers via our Knowledge Base, Online Resources ( video tutorials ) and Support Tickets. For three months we provide free limited telephone support in addition to the previously mentioned methods. After the 3 months ?? period clients can purchase one of three premium support packages.', 'publish', 'content', 'mod_Support', '2014-06-04 08:45:14', '2014-06-04 08:45:14', '7');
INSERT INTO `module` VALUES ('8', 'Service', null, 'publish', 'content', 'mod_Service', '2014-06-04 08:45:18', '2014-06-04 08:45:18', '8');
INSERT INTO `module` VALUES ('9', 'About', null, 'publish', 'content', 'mod_About', '2014-06-04 08:45:19', '2014-06-04 08:45:19', '9');
INSERT INTO `module` VALUES ('10', 'Google Map', '', 'publish', 'top', 'mod_Maps', '2014-06-04 08:45:29', '2014-06-04 08:45:29', '2');
INSERT INTO `module` VALUES ('11', 'Happy Clients', '', 'publish', 'bottom', 'mod_HappyClient', '2014-06-04 03:40:45', '2014-06-04 03:40:45', '9');
INSERT INTO `module` VALUES ('12', 'Request Demo', '', 'publish', 'content', 'mod_RequestDemo', '2014-06-04 04:09:13', '2014-06-04 04:09:13', '3');

-- ----------------------------
-- Table structure for `page_module`
-- ----------------------------
DROP TABLE IF EXISTS `page_module`;
CREATE TABLE `page_module` (
  `page_id` int(11) NOT NULL DEFAULT '0',
  `module_id` int(11) NOT NULL DEFAULT '0',
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`page_id`,`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of page_module
-- ----------------------------
INSERT INTO `page_module` VALUES ('1', '1', null, '2014-06-04 04:09:22', '2014-06-04 04:09:22');
INSERT INTO `page_module` VALUES ('1', '2', null, '2014-06-04 04:09:22', '2014-06-04 04:09:22');
INSERT INTO `page_module` VALUES ('1', '3', null, '2014-06-04 04:09:22', '2014-06-04 04:09:22');
INSERT INTO `page_module` VALUES ('1', '11', null, '2014-06-04 04:09:22', '2014-06-04 04:09:22');
INSERT INTO `page_module` VALUES ('1', '12', null, '2014-06-04 04:09:22', '2014-06-04 04:09:22');
INSERT INTO `page_module` VALUES ('2', '4', null, '2014-06-03 08:17:20', '2014-06-03 08:17:20');
INSERT INTO `page_module` VALUES ('2', '6', null, '2014-06-03 08:17:20', '2014-06-03 08:17:20');
INSERT INTO `page_module` VALUES ('2', '9', null, '2014-06-03 08:17:20', '2014-06-03 08:17:20');
INSERT INTO `page_module` VALUES ('3', '6', null, '2014-06-02 10:40:22', '2014-06-02 10:40:22');
INSERT INTO `page_module` VALUES ('3', '8', null, '2014-06-02 10:40:22', '2014-06-02 10:40:22');
INSERT INTO `page_module` VALUES ('4', '5', null, '2014-06-03 03:07:58', '2014-06-03 03:07:58');
INSERT INTO `page_module` VALUES ('4', '6', null, '2014-06-03 03:07:58', '2014-06-03 03:07:58');
INSERT INTO `page_module` VALUES ('4', '10', null, '2014-06-03 03:07:58', '2014-06-03 03:07:58');
INSERT INTO `page_module` VALUES ('10', '6', null, '2014-06-04 04:33:27', '2014-06-04 04:33:27');
INSERT INTO `page_module` VALUES ('11', '6', null, '2014-06-03 07:20:48', '2014-06-03 07:20:48');
INSERT INTO `page_module` VALUES ('11', '7', null, '2014-06-03 07:20:48', '2014-06-03 07:20:48');
INSERT INTO `page_module` VALUES ('12', '6', null, '2014-06-02 10:39:55', '2014-06-02 10:39:55');
INSERT INTO `page_module` VALUES ('13', '1', null, '2014-06-03 07:48:20', '2014-06-03 07:48:20');
INSERT INTO `page_module` VALUES ('13', '2', null, '2014-06-03 07:48:20', '2014-06-03 07:48:20');
INSERT INTO `page_module` VALUES ('14', '1', null, '2014-06-03 04:28:14', '2014-06-03 04:28:14');
INSERT INTO `page_module` VALUES ('15', '6', null, '2014-06-02 11:17:25', '2014-06-02 11:17:25');

-- ----------------------------
-- Table structure for `pages`
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', 'Home', 'home', '2014-06-03 14:28:25', '2014-06-03 14:28:25', 'publish');
INSERT INTO `pages` VALUES ('2', 'About us', 'about', '2014-06-03 14:28:27', '2014-06-03 14:28:27', 'publish');
INSERT INTO `pages` VALUES ('3', 'Our Services ', 'service', '2014-06-03 14:28:27', '2014-06-03 14:28:27', 'publish');
INSERT INTO `pages` VALUES ('4', 'Contact Us', 'contact-us', '2014-06-03 14:28:31', '2014-06-03 14:28:31', 'publish');
INSERT INTO `pages` VALUES ('10', 'RMP Features ', 'features', '2014-06-03 14:28:30', '2014-06-03 14:28:30', 'publish');
INSERT INTO `pages` VALUES ('11', 'Support Packages ', 'support-packages', '2014-06-03 14:28:30', '2014-06-03 14:28:30', 'publish');
INSERT INTO `pages` VALUES ('12', 'Request Demo', 'request-demo', '2014-06-03 14:28:29', '2014-06-03 14:28:29', 'publish');
INSERT INTO `pages` VALUES ('13', 'Blog', 'blog', '2014-06-03 14:28:29', '2014-06-03 14:28:29', 'publish');

-- ----------------------------
-- Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of permission
-- ----------------------------

-- ----------------------------
-- Table structure for `position`
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
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
-- Table structure for `reasons`
-- ----------------------------
DROP TABLE IF EXISTS `reasons`;
CREATE TABLE `reasons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caption` text COLLATE utf8_unicode_ci,
  `image` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `link` text COLLATE utf8_unicode_ci,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of reasons
-- ----------------------------
INSERT INTO `reasons` VALUES ('4', 'Security', 'Employees can access information instantly at any time and from any place that has access to the network.', '130', 'publish', '2014-06-02 13:12:57', '2014-06-02 06:12:57', null, '1');
INSERT INTO `reasons` VALUES ('5', 'Reliability', 'Employees can access information instantly at any time and from any place that has access to the network.', '122', 'publish', '2014-06-02 11:48:42', '2014-06-02 11:48:42', null, '2');
INSERT INTO `reasons` VALUES ('6', 'Accuracy', 'Employees can access information instantly at any time and from any place that has access to the network.', '123', 'publish', '2014-06-02 11:48:43', '2014-06-02 11:48:43', null, '3');
INSERT INTO `reasons` VALUES ('7', 'Efficiency', 'Employees can access information instantly at any time and from any place that has access to the network.', '124', 'publish', '2014-06-02 11:48:43', '2014-06-02 11:48:43', null, '4');
INSERT INTO `reasons` VALUES ('8', 'Productivity', 'Employees can access information instantly at any time and from any place that has access to the network.', '125', 'publish', '2014-06-02 11:48:43', '2014-06-02 11:48:43', null, '5');
INSERT INTO `reasons` VALUES ('9', 'Convenience', 'Employees can access information instantly at any time and from any place that has access to the network.', '126', 'publish', '2014-06-02 11:48:44', '2014-06-02 11:48:44', null, '6');
INSERT INTO `reasons` VALUES ('10', 'Extendable', 'Employees can access information instantly at any time and from any place that has access to the network.', '127', 'publish', '2014-06-02 11:48:44', '2014-06-02 11:48:44', null, '7');
INSERT INTO `reasons` VALUES ('11', 'Simplicity', 'Employees can access information instantly at any time and from any place that has access to the network.', '128', 'publish', '2014-06-04 11:13:21', '2014-06-04 04:13:21', null, '8');

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------

-- ----------------------------
-- Table structure for `services`
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `sumary` text COLLATE utf8_unicode_ci,
  `icon` text COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of services
-- ----------------------------
INSERT INTO `services` VALUES ('1', 'Data Migration', '<div class=\"tab active\">\r\n<p>We apply several clearly defined stages for implementing CompleteRMP which make the transition from existing systems straightforward. We do this by setting up a \"work in progress\" system which we continually update &amp; customise until you are completely happy. We can then provide training on this temporary system before you go live to make sure everyone in your organisation is completely happy and ready before you switch over.</p>\r\n<p>The process starts with requirements gathering and our experienced consultants will advise you on the best way to customise CompleteRMP based on your specific requirements. If you are already using a system of any kind, we will discuss the data with you and in most cases can take a sample of your data and provide a fixed price quotation for data migration.</p>\r\n<p>We will then begin to customise the temporary system and start working on your data import. Once we have completed the data import, we will update the temporary system with your own data. You can then advise us on the imported data and if you would like to make any changes, for example you may want us to perform some data cleansing, duplicate checking or re-formatting.</p>\r\n<p>This is an iterative process and we will continue to update the temporary system based on your feedback and re-import the cleansed data until you are completely happy.</p>\r\n<p>We will then agree a day when you will stop using your existing system, at which time we will take a fresh copy of your existing data with any files and CV\'s and run our ready prepared import scripts. The temporary system will be updated once again and will be ready for you to start using as your new recruitment system.</p>\r\n</div>', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat.', 'icon-exchange', 'publish', '1', '2014-06-03 11:06:53', '2014-06-03 04:06:53');
INSERT INTO `services` VALUES ('2', 'Bespoke Programming', '<div class=\"tab active\">\r\n<p>We offer bespoke programming services to our client base to provide additional functionality specific to the way they work and integrate this with their CompleteRMP product. Examples of this type of service would be to provide client specific tools that speed up internal processes such as synchronising with external systems. We can also develop any type of specific report and integrate it with your CompleteRMP system for example to be processed before management meetings and keep track of KPI\'s and sales forecasts.</p>\r\n<p>If suggested functionality would benefit the rest of our client base then this is included in the next product update for everyone so you will also benefit from tools and features suggested by the rest of our client base.</p>\r\n</div>', 'Feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent ', 'icon-code', 'publish', '2', '2014-06-03 11:06:53', '2014-06-03 04:06:53');
INSERT INTO `services` VALUES ('3', 'Webdesign & Integration', '<div class=\"tab active\">\r\n<p>The CompleteRMP development team are specialists in carrying out seamless website integrations and as CompleteRMP is completely web based, new and innovative features can easily be integrated into your website without incurring large development costs. Over the years, we have produced a suit of internet recruitment tools that can easily be \"plugged in\" to any website to provide the latest recruitment functionality.</p>\r\n<p>You can use our in-house creative design &amp; development team and extensive network of partners or we will work with your own designers to integrate our technology &amp; assist with website creation &amp; company branding. We can quickly build your website already configured with the latest recruitment technology such as candidate area / registration, dynamic vacancy pages, automatic CV data extraction, hiring manager access and intelligent pre-screening at a fraction of the cost for a bespoke development.</p>\r\n<p>For more information please read the following information about recruitment website Development and internet recruitment software for recruitment consultancies or corporate recruitment.</p>\r\n</div>', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. ', 'icon-desktop', 'publish', '3', '2014-06-03 11:06:53', '2014-06-03 04:06:53');
INSERT INTO `services` VALUES ('4', 'Secure Hosting & Security', '<div class=\"tab active\">\r\n<p>The security of your data is our highest priority and every measure is taken to protect it. In fact, it is usually the case that our client\'s data is far more secure on our servers than on their own premises.</p>\r\n<p>Data security breaches can come from two main areas. First you must establish tight security within your own organisation. The comprehensive administration tools in our online recruitment solution will help with this as you have full control over each user\'s access rights and permissions. You can restrict users access to any area of CompleteRMP and even set the times they are allowed access for example to prevent access on evenings and weekends. You can also prevent individual user access from outside your own premises altogether.</p>\r\n<p>&nbsp;</p>\r\nOur servers are maintained in a state of the art data centre and are monitored 24 x 7. All our servers are configured in the best possible way by professionals to eliminate external threats. They are protected from fire, power outages and theft through stringent security measures that wouldn\'t go amiss in an airport and are connected with multiple internet connections to eliminate down time. We use the latest corporate Anti Virus software and our hardware and software firewalls stop unauthorised access.\r\n<p>As a final precaution, our entire client\'s data is backed up daily and stored in a separate location.</p>\r\n</div>', 'Feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent ', 'icon-lock', 'publish', '4', '2014-06-03 11:06:53', '2014-06-03 04:06:53');

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
INSERT INTO `setting` VALUES ('address', 'Address', '103088, Ut wisi enim ad minim veniam, 27, of. 304', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('business_hours', 'Businness Hours', '<br> Monday-Friday: 9: <sup>00</sup> — 18: <sup>00</sup> <br> Saturday: 10: <sup>00</sup> — 17: <sup>00</sup> <br> Sunday: closed', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('email_contact', 'E-mail', 'info@completermp.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('email_encryption', 'Email Encryption', 'ttl', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('email_host', 'Email Host', 'http://completermp.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('email_password', 'Email Password', 'root', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('email_port', 'Email Port', '567', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('email_username', 'Email Username', 'admin@completermp.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('facebook', 'Facebook', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('footer_text', 'Footer', ' © 2014 All Right Reserved, ', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('google', 'Google', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('phone', 'Phone', '+1 (229) 991-22-11', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('slogan', 'Slogan', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('twitter', 'Twitter', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('website_name', 'Website Name', 'RMP MARKETING', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `slider`
-- ----------------------------
DROP TABLE IF EXISTS `slider`;
CREATE TABLE `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci,
  `caption` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of slider
-- ----------------------------
INSERT INTO `slider` VALUES ('36', 'Qui Blandit Praesent', 'Vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil', '', '114', '2014-05-31 18:04:52', '2014-05-31 11:04:52', 'publish');
INSERT INTO `slider` VALUES ('37', 'Duis Autem Vel Eum', 'Adipisci velit, sed quia non numquam eius modi tempora incidunt, ut labore', '', '113', '2014-05-29 16:12:57', '2014-05-29 09:12:57', 'unpublish');
INSERT INTO `slider` VALUES ('39', 'FULL CONTROLL', 'Recruitment Software with a difference', 'http://completermp.com/about', '112', '2014-05-31 18:04:52', '2014-05-31 11:04:52', 'publish');

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
-- Table structure for `support`
-- ----------------------------
DROP TABLE IF EXISTS `support`;
CREATE TABLE `support` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `package_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of support
-- ----------------------------
INSERT INTO `support` VALUES ('1', 'Premium Bronze Support', '25', '<ul>\r\n<li><mark class=\"green strong\">FREE</mark> Setup</li>\r\n<li>3 Active Users</li>\r\n<li>Additional User is $5/mo</li>\r\n<li>Unlimited Questions</li>\r\n<li>Full Data Security</li>\r\n</ul>', '1', '2014-06-03 14:19:33', '2014-06-03 07:19:33', 'publish', 'Bronze ', 'Sed ut perspiciatis unde omnis iste natus.');
INSERT INTO `support` VALUES ('2', 'Premium Silver Support', '50', '<ul>\r\n<li><mark class=\"green strong\">FREE</mark> Setup</li>\r\n<li>3 Active Users</li>\r\n<li>Additional User is $5/mo</li>\r\n<li>Unlimited Questions</li>\r\n<li>Full Data Security</li>\r\n</ul>', '2', '2014-06-03 14:19:40', '2014-06-03 07:19:40', 'publish', 'Silver ', 'Nemo enim ipsam voluptas.');
INSERT INTO `support` VALUES ('3', 'Premium Gold Support', '75', '<ul>\r\n<li><mark class=\"green strong\">FREE</mark> Setup</li>\r\n<li>3 Active Users</li>\r\n<li>Additional User is $5/mo</li>\r\n<li>Unlimited Questions</li>\r\n<li>Full Data Security</li>\r\n</ul>', '3', '2014-06-03 14:19:55', '2014-06-03 07:19:55', 'publish', 'Gold ', 'Neque porro quisquam ipsum.');

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
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of uploads
-- ----------------------------
INSERT INTO `uploads` VALUES ('69', '05-28-2014_test1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-05-28 09:56:44', '2014-05-28 09:56:44', null, '102');
INSERT INTO `uploads` VALUES ('74', '05-29-2014_manh.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-05-29 01:22:49', '2014-05-29 01:22:49', null, '106');
INSERT INTO `uploads` VALUES ('98', '05-29-2014_test1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-05-29 06:19:04', '2014-05-29 06:19:04', null, '120');
INSERT INTO `uploads` VALUES ('99', '05-29-2014_test1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-05-29 07:03:46', '2014-05-29 07:03:46', null, null);
INSERT INTO `uploads` VALUES ('100', '05-29-2014_nokia_announced_meego_smart_phone_n9_1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-05-29 07:04:11', '2014-05-29 07:04:11', null, null);
INSERT INTO `uploads` VALUES ('101', '05-29-2014_nokia_announced_meego_smart_phone_n9_1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-05-29 07:05:48', '2014-05-29 07:05:48', null, null);
INSERT INTO `uploads` VALUES ('102', '05-29-2014_Micah.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-05-29 07:06:16', '2014-05-29 07:06:16', null, null);
INSERT INTO `uploads` VALUES ('104', '05-29-2014_nokia_announced_meego_smart_phone_n9_1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-05-29 07:06:47', '2014-05-29 07:06:47', null, null);
INSERT INTO `uploads` VALUES ('107', '05-29-2014_test1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-05-29 07:33:21', '2014-05-29 07:33:21', null, null);
INSERT INTO `uploads` VALUES ('110', '05-29-2014_nokia_announced_meego_smart_phone_n9_1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-05-29 08:00:09', '2014-05-29 08:00:09', null, null);
INSERT INTO `uploads` VALUES ('112', '05-29-2014_Slider-14.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-05-29 08:36:34', '2014-05-29 08:36:34', null, null);
INSERT INTO `uploads` VALUES ('113', '05-29-2014_Slider-3.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-05-29 08:37:43', '2014-05-29 08:37:43', null, null);
INSERT INTO `uploads` VALUES ('114', '05-29-2014_Slider-25.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-05-29 08:38:03', '2014-05-29 08:38:03', null, null);
INSERT INTO `uploads` VALUES ('115', '05-29-2014_Smart-phone1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-05-29 09:02:10', '2014-05-29 09:02:10', null, null);
INSERT INTO `uploads` VALUES ('119', '06-02-2014_logo.png', 'public/asset/share/uploads/images/', 'image/png', null, '2014-06-02 04:30:58', '2014-06-02 04:30:58', null, null);
INSERT INTO `uploads` VALUES ('120', '06-02-2014_nokia_announced_meego_smart_phone_n9_1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-06-02 04:34:54', '2014-06-02 04:34:54', null, null);
INSERT INTO `uploads` VALUES ('122', '06-02-2014_reliability.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-06-02 04:42:41', '2014-06-02 04:42:41', null, null);
INSERT INTO `uploads` VALUES ('123', '06-02-2014_accuracy.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-06-02 04:43:02', '2014-06-02 04:43:02', null, null);
INSERT INTO `uploads` VALUES ('124', '06-02-2014_efficiency.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-06-02 04:43:24', '2014-06-02 04:43:24', null, null);
INSERT INTO `uploads` VALUES ('125', '06-02-2014_productivity.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-06-02 04:43:47', '2014-06-02 04:43:47', null, null);
INSERT INTO `uploads` VALUES ('126', '06-02-2014_convenience.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-06-02 04:44:08', '2014-06-02 04:44:08', null, null);
INSERT INTO `uploads` VALUES ('127', '06-02-2014_extendable.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-06-02 04:44:39', '2014-06-02 04:44:39', null, null);
INSERT INTO `uploads` VALUES ('128', '06-02-2014_simplicity.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-06-02 04:57:41', '2014-06-02 04:57:41', null, null);
INSERT INTO `uploads` VALUES ('130', '06-02-2014_security.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-06-02 06:11:43', '2014-06-02 06:11:43', null, null);
INSERT INTO `uploads` VALUES ('132', '06-03-2014_nokia_announced_meego_smart_phone_n9_1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-06-03 03:05:29', '2014-06-03 03:05:29', null, '1');
INSERT INTO `uploads` VALUES ('133', '06-03-2014_smart_phone_data_recovery.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-06-03 03:05:29', '2014-06-03 03:05:29', null, '1');
INSERT INTO `uploads` VALUES ('134', '06-03-2014_Smart-phone1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-06-03 03:05:29', '2014-06-03 03:05:29', null, '1');
INSERT INTO `uploads` VALUES ('135', '06-04-2014_Smart-phone1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', null, '2014-06-04 10:43:52', '2014-06-04 10:43:52', null, '3');

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
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `count_login` int(11) DEFAULT NULL,
  `status` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '$2y$10$CklDpY6X3uKKFq5hFSj.NuDWiSojfzg7YeU8wlLCswT59t3o94pP6', '', '0989333', 'vietnam', '3', '12', '344', 'male', 's', 'www', null, '2014-06-04 07:23:57', '1', 'publish');
INSERT INTO `users` VALUES ('14', 'truyenluong', '$2y$10$zoTsLD.e4BmxLYWxV6ZVKO/j/MUQLrCupTV/ripuAsqlwhcomOZKe', '', '64354354', 'áddddddddd', '1', null, null, 'male', 'luong', 'truyen', '2014-05-31 04:10:54', '2014-05-31 10:48:46', null, 'unpublish');
INSERT INTO `users` VALUES ('15', 'username  ', '$2y$10$JE.6zQG/PnD89wa4o1TmkO6MxXrJTF2Nj7sT7qwg48TKlYNhRiYwa', 'test@gmail.com', '012365478', 'VIETNAMESE', '1', null, null, 'female', 'TEST', 'MR', '2014-06-03 10:38:27', '2014-06-03 10:38:27', null, 'publish');
INSERT INTO `users` VALUES ('16', 'user', 'pass', 'user@gmail.com', null, null, '0', null, null, '', null, null, null, null, null, 'publish');
INSERT INTO `users` VALUES ('17', 'ltt.develop@gmail.com', '$2y$10$Yvf1fa3vASOskoIH5/afBORzJ4NQCekpwCh.vfxVxeSBiaptjaeYe', 'ltt.develop@gmail.com', '', '', '2', null, null, 'male', '', '', '2014-06-04 09:24:35', '2014-06-04 09:24:35', null, 'publish');
