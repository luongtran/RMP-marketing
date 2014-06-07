/*
Navicat MySQL Data Transfer

Source Server         : soft
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : rmp_marketing_new

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2014-06-07 18:13:00
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', 'Recruitment software with a difference', 'about', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n\r\n<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client&#39;s don&#39;t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n\r\n<div class=\"gap\" style=\"height: 30px;\">&nbsp;</div></div>\r\n\r\n<div class=\"row-item col-1_2\">\r\n<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n\r\n<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n\r\n<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n\r\n<h3 class=\"lined margin-20\">Some ROI benefits</h3>\r\n\r\n<div class=\"element-wrap\">\r\n<div class=\"b-progress-bar\" data-capacity=\"100\" data-value=\"90\">\r\n<div class=\"progress-label\">Increase Data Accuracy to upto 90%</div>\r\n\r\n<div class=\"progress-scale\">\r\n<div class=\"progress-line\" style=\"width: 90%;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"b-progress-bar\" data-capacity=\"100\" data-value=\"65\">\r\n<div class=\"progress-label\">WordPress 65%</div>\r\n\r\n<div class=\"progress-scale\">\r\n<div class=\"progress-line m-4\" style=\"width: 65%;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"b-progress-bar\" data-capacity=\"100\" data-value=\"78\">\r\n<div class=\"progress-label\">Graphic Design 78%</div>\r\n\r\n<div class=\"progress-scale\">\r\n<div class=\"progress-line m-3\" style=\"width: 78%;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"b-progress-bar\" data-capacity=\"100\" data-value=\"86\">\r\n<div class=\"progress-label\">HTML/CSS 86%</div>\r\n\r\n<div class=\"progress-scale\">\r\n<div class=\"progress-line m-2\" style=\"width: 86%;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"gap\" style=\"height: 30px;\">&nbsp;</div>\r\n</div>\r\n', '2014-05-27 08:21:51', '2014-06-05 11:19:19', '1', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n\r\n					<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client\'s don\'t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n\r\n\r\n					<div style=\"height: 30px;\" class=\"gap\">\r\n					</div>\r\n				</div>\r\n\r\n				<div class=\"row-item col-1_2\">\r\n					<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n					<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n					<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n					<h3 class=\"lined margin-20\">Some ROI benefits</h3>\r\n					<div class=\"element-wrap\">					\r\n						<div data-value=\"90\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">Increase Data Accuracy to upto 90%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line\" style=\"width: 90%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"65\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">WordPress 65%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-4\" style=\"width: 65%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"78\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">Graphic Design 78%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-3\" style=\"width: 78%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"86\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">HTML/CSS 86%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-2\" style=\"width: 86%;\"></div>\r\n							</div>\r\n						</div>\r\n						\r\n						\r\n					</div>\r\n					<div style=\"height: 30px;\" class=\"gap\">\r\n					</div>\r\n				</div>', '', 'publish', null, 'en');
INSERT INTO `articles` VALUES ('3', 'برامج التوظيف مع الفارق', 'about', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n\r\n					<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client\'s don\'t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n\r\n\r\n					<div style=\"height: 30px;\" class=\"gap\">\r\n					</div>\r\n				</div>\r\n\r\n				<div class=\"row-item col-1_2\">\r\n					<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n					<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n					<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n					<h3 class=\"lined margin-20\">Some ROI benefits</h3>\r\n					<div class=\"element-wrap\">					\r\n						<div data-value=\"90\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">Increase Data Accuracy to upto 90%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line\" style=\"width: 90%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"65\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">WordPress 65%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-4\" style=\"width: 65%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"78\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">Graphic Design 78%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-3\" style=\"width: 78%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"86\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">HTML/CSS 86%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-2\" style=\"width: 86%;\"></div>\r\n							</div>\r\n						</div>\r\n						\r\n						\r\n					</div>\r\n					<div style=\"height: 30px;\" class=\"gap\">\r\n					</div>\r\n				</div>', '2014-06-04 10:32:47', '2014-06-05 11:13:23', '1', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>', '', 'publish', null, 'sa');

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
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of language
-- ----------------------------
INSERT INTO `language` VALUES ('1', 'English', 'en', null, '', 'publish', null, '2014-06-05 17:03:44', '2014-06-05 10:03:44');
INSERT INTO `language` VALUES ('5', 'العربية', 'sa', null, '', 'publish', null, '2014-06-05 09:57:09', '2014-06-05 09:57:09');
INSERT INTO `language` VALUES ('6', 'Việt nam', 'vi', null, null, 'publish', null, '2014-06-05 18:00:35', '2014-06-05 18:00:35');

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
  `lang_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('10', 'Nokia', '', '', null, '30', '12', 'unpublish', '2014-06-05 17:31:06', '2014-06-05 17:31:06', null, 'en');
INSERT INTO `menu` VALUES ('12', 'About', 'about', 'icon-folder-open', null, '0', '1', 'publish', '2014-06-05 17:31:08', '2014-06-05 17:31:08', '2', 'en');
INSERT INTO `menu` VALUES ('20', 'Home', 'home', 'icon-home active', null, '0', '0', 'publish', '2014-06-05 17:31:08', '2014-06-05 17:31:08', '1', 'en');
INSERT INTO `menu` VALUES ('25', 'Features', 'features', 'icon-file-text-alt', null, '0', '2', 'publish', '2014-06-05 17:31:08', '2014-06-05 17:31:08', '10', 'en');
INSERT INTO `menu` VALUES ('26', 'Services', 'service', 'icon-random', null, '0', '3', 'publish', '2014-06-05 17:31:09', '2014-06-05 17:31:09', '3', 'en');
INSERT INTO `menu` VALUES ('27', 'Support', 'support-packages', 'icon-headphones', null, '0', '4', 'publish', '2014-06-05 17:31:09', '2014-06-05 17:31:09', '11', 'en');
INSERT INTO `menu` VALUES ('28', 'Request Demo', 'request-demo', 'icon-time', null, '0', '5', 'publish', '2014-06-05 17:31:10', '2014-06-05 17:31:10', '12', 'en');
INSERT INTO `menu` VALUES ('29', 'Contact', 'contact-us', 'icon-envelope', null, '0', '7', 'publish', '2014-06-05 17:31:10', '2014-06-05 17:31:10', '4', 'en');
INSERT INTO `menu` VALUES ('30', 'Blog', 'blog', '', null, '0', '6', 'publish', '2014-06-05 18:21:02', '2014-06-05 11:21:02', '13', 'en');
INSERT INTO `menu` VALUES ('31', 'منزل', 'home', 'icon-home active', null, '0', '0', 'publish', '2014-06-05 17:34:58', '2014-06-05 17:34:58', '1', 'sa');
INSERT INTO `menu` VALUES ('32', 'حول', 'about', 'icon-folder-open', null, '0', '1', 'publish', '2014-06-05 17:34:43', '2014-06-05 17:34:43', '2', 'sa');

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
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `order` int(11) DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES ('1', 'Slider', 'publish', 'header', 'mod_Slider', '2014-06-04 08:44:41', '2014-06-04 08:44:41', '2', null);
INSERT INTO `module` VALUES ('2', 'Reason', 'publish', 'content', 'mod_Reason', '2014-06-04 08:44:55', '2014-06-04 08:44:55', '4', null);
INSERT INTO `module` VALUES ('3', 'Feature', 'publish', 'top', 'mod_Feature', '2014-06-04 08:44:53', '2014-06-04 08:44:53', '3', null);
INSERT INTO `module` VALUES ('4', 'User Interfaces', 'publish', 'bottom', 'mod_UserInterface', '2014-06-04 08:45:07', '2014-06-04 08:45:07', '5', null);
INSERT INTO `module` VALUES ('5', 'Contact', 'publish', 'content', 'mod_Contact', '2014-06-04 08:45:10', '2014-06-04 08:45:10', '6', null);
INSERT INTO `module` VALUES ('6', 'Title Bar', 'publish', 'title_bar', 'mod_TitleBar', '2014-06-04 08:46:50', '2014-06-04 01:46:50', '0', null);
INSERT INTO `module` VALUES ('7', 'Support', 'publish', 'content', 'mod_Support', '2014-06-04 08:45:14', '2014-06-04 08:45:14', '7', null);
INSERT INTO `module` VALUES ('8', 'Service', 'publish', 'content', 'mod_Service', '2014-06-04 08:45:18', '2014-06-04 08:45:18', '8', null);
INSERT INTO `module` VALUES ('9', 'About', 'publish', 'content', 'mod_About', '2014-06-04 08:45:19', '2014-06-04 08:45:19', '9', null);
INSERT INTO `module` VALUES ('10', 'Google Map', 'publish', 'top', 'mod_Maps', '2014-06-04 08:45:29', '2014-06-04 08:45:29', '2', null);
INSERT INTO `module` VALUES ('11', 'Happy Clients', 'publish', 'bottom', 'mod_HappyClient', '2014-06-06 17:22:06', '2014-06-06 10:22:06', '9', null);
INSERT INTO `module` VALUES ('12', 'Request Demo', 'publish', 'content', 'mod_RequestDemo', '2014-06-04 04:09:13', '2014-06-04 04:09:13', '3', null);

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
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `order` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contentHtml` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of module_data
-- ----------------------------
INSERT INTO `module_data` VALUES ('12', ' Full Control ', '', 'Recruitment Software with a difference', '', null, null, '1', 'en', '1', '2014-06-07 16:16:56', '2014-06-07 09:16:56', '0', 'publish', null, 'http://completermp.com/marketing/', '_self');
INSERT INTO `module_data` VALUES ('28', 'Security', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', null, null, '1', 'en', '1', '2014-06-07 16:16:56', '2014-06-07 09:16:56', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('29', 'Security', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', null, null, '1', 'en', '2', '2014-06-07 09:19:15', '2014-06-07 09:19:15', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('30', 'Reliability', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', null, null, '1', 'en', '2', '2014-06-07 09:20:07', '2014-06-07 09:20:07', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('31', 'Accuracy', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', null, null, '1', 'en', '2', '2014-06-07 09:21:13', '2014-06-07 09:21:13', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('32', 'Efficiency', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', null, null, '1', 'en', '2', '2014-06-07 09:21:50', '2014-06-07 09:21:50', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('33', 'Productivity', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', null, null, '1', 'en', '2', '2014-06-07 09:22:29', '2014-06-07 09:22:29', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('34', 'Convenience', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', null, null, '1', 'en', '2', '2014-06-07 09:23:11', '2014-06-07 09:23:11', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('35', 'Extendable', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', null, null, '1', 'en', '2', '2014-06-07 09:23:39', '2014-06-07 09:23:39', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('36', 'Simplicity', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', null, null, '1', 'en', '2', '2014-06-07 09:24:11', '2014-06-07 09:24:11', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('37', 'أمن', '', 'يمكن للموظفين الوصول إلى المعلومات على الفور في أي وقت ومن أي مكان لديه وصول إلى الشبكة.', '', null, null, '1', 'sa', '2', '2014-06-07 17:41:35', '2014-06-07 10:41:35', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('38', 'Recruitment software with a difference', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n\r\n					<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client\'s don\'t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n\r\n\r\n					<div style=\"height: 30px;\" class=\"gap\">\r\n					</div>\r\n				</div>\r\n\r\n				<div class=\"row-item col-1_2\">\r\n					<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n					<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n					<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n					<h3 class=\"lined margin-20\">Some ROI benefits</h3>\r\n					<div class=\"element-wrap\">					\r\n						<div data-value=\"90\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">Increase Data Accuracy to upto 90%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line\" style=\"width: 90%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"65\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">WordPress 65%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-4\" style=\"width: 65%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"78\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">Graphic Design 78%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-3\" style=\"width: 78%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"86\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">HTML/CSS 86%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-2\" style=\"width: 86%;\"></div>\r\n							</div>\r\n						</div>\r\n						\r\n						\r\n					</div>\r\n					<div style=\"height: 30px;\" class=\"gap\">\r\n					</div>\r\n				</div>', '', '', null, null, '1', 'en', '9', '2014-06-07 17:54:58', '2014-06-07 10:54:58', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('39', 'برامج التوظيف مع الفارق', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n\r\n					<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client\'s don\'t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n\r\n\r\n					<div style=\"height: 30px;\" class=\"gap\">\r\n					</div>\r\n				</div>\r\n\r\n				<div class=\"row-item col-1_2\">\r\n					<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n					<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n					<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n					<h3 class=\"lined margin-20\">Some ROI benefits</h3>\r\n					<div class=\"element-wrap\">					\r\n						<div data-value=\"90\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">Increase Data Accuracy to upto 90%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line\" style=\"width: 90%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"65\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">WordPress 65%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-4\" style=\"width: 65%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"78\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">Graphic Design 78%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-3\" style=\"width: 78%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"86\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">HTML/CSS 86%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-2\" style=\"width: 86%;\"></div>\r\n							</div>\r\n						</div>\r\n						\r\n						\r\n					</div>\r\n					<div style=\"height: 30px;\" class=\"gap\">\r\n					</div>\r\n				</div>', '', '', null, null, '1', 'sa', '9', '2014-06-07 10:55:54', '2014-06-07 10:55:54', '0', 'publish', null, '', '_self');

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
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of module_intro
-- ----------------------------
INSERT INTO `module_intro` VALUES ('2', 'Need more reasons to choose CompleteRMP!', '', '9', 'en', '2014-06-07 17:28:48', '2014-06-07 10:28:48', 'publish', '2', '1');
INSERT INTO `module_intro` VALUES ('3', 'بحاجة الى مزيد من الأسباب لاختيار CompleteRMP!', '', '0', 'sa', '2014-06-07 10:15:02', '2014-06-07 10:15:02', 'publish', '2', '1');

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
INSERT INTO `page_module` VALUES ('1', '1', null, '2014-06-07 09:28:17', '2014-06-07 09:28:17');
INSERT INTO `page_module` VALUES ('1', '2', null, '2014-06-07 09:28:17', '2014-06-07 09:28:17');
INSERT INTO `page_module` VALUES ('2', '6', null, '2014-06-07 10:50:01', '2014-06-07 10:50:01');
INSERT INTO `page_module` VALUES ('2', '9', null, '2014-06-07 10:50:01', '2014-06-07 10:50:01');

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
INSERT INTO `pages` VALUES ('1', 'Home', 'home', '2014-06-06 18:03:09', '2014-06-06 11:03:09', 'publish');
INSERT INTO `pages` VALUES ('2', 'About us', 'about', '2014-06-03 14:28:27', '2014-06-03 14:28:27', 'publish');
INSERT INTO `pages` VALUES ('3', 'Our Services ', 'service', '2014-06-03 14:28:27', '2014-06-03 14:28:27', 'publish');
INSERT INTO `pages` VALUES ('4', 'Contact Us', 'contact-us', '2014-06-03 14:28:31', '2014-06-03 14:28:31', 'publish');
INSERT INTO `pages` VALUES ('10', 'RMP Features ', 'features', '2014-06-03 14:28:30', '2014-06-03 14:28:30', 'publish');
INSERT INTO `pages` VALUES ('11', 'Support Packages ', 'support-packages', '2014-06-03 14:28:30', '2014-06-03 14:28:30', 'publish');
INSERT INTO `pages` VALUES ('12', 'Request Demo', 'request-demo', '2014-06-03 14:28:29', '2014-06-03 14:28:29', 'publish');
INSERT INTO `pages` VALUES ('13', 'Blogs', 'blog', '2014-06-05 18:21:51', '2014-06-05 11:21:51', 'publish');

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
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `modData_id` int(11) DEFAULT NULL,
  `modIntro_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of uploads
-- ----------------------------
INSERT INTO `uploads` VALUES ('34', '06-07-2014_05-29-2014_Slider-14.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 08:58:45', '2014-06-07 08:58:45', null, null, '12', null, null);
INSERT INTO `uploads` VALUES ('35', '06-07-2014_Slider-1.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 09:01:04', '2014-06-07 16:56:16', null, null, '28', null, null);
INSERT INTO `uploads` VALUES ('36', '06-07-2014_security.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 09:19:15', '2014-06-07 16:56:15', null, null, '29', null, null);
INSERT INTO `uploads` VALUES ('37', '06-07-2014_reliability.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 09:20:07', '2014-06-07 16:56:13', null, null, '30', null, null);
INSERT INTO `uploads` VALUES ('38', '06-07-2014_accuracy.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 09:21:13', '2014-06-07 16:56:12', null, null, '31', null, null);
INSERT INTO `uploads` VALUES ('39', '06-07-2014_efficiency.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 09:21:50', '2014-06-07 16:56:08', null, null, '32', null, null);
INSERT INTO `uploads` VALUES ('40', '06-07-2014_productivity.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 09:22:29', '2014-06-07 16:56:06', null, null, '33', null, null);
INSERT INTO `uploads` VALUES ('41', '06-07-2014_convenience.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 09:23:11', '2014-06-07 16:56:04', null, null, '34', null, null);
INSERT INTO `uploads` VALUES ('42', '06-07-2014_extendable.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 09:23:39', '2014-06-07 16:56:03', null, null, '35', null, null);
INSERT INTO `uploads` VALUES ('43', '06-07-2014_simplicity.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 09:24:11', '2014-06-07 16:56:01', null, null, '36', null, null);
INSERT INTO `uploads` VALUES ('44', '06-07-2014_security.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 10:41:35', '2014-06-07 10:41:35', null, null, '37', null, null);
INSERT INTO `uploads` VALUES ('45', '06-07-2014_nokia_announced_meego_smart_phone_n9_1.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 10:44:32', '2014-06-07 10:44:32', null, null, '38', null, null);
INSERT INTO `uploads` VALUES ('46', '06-07-2014_smart_phone_data_recovery.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 10:44:32', '2014-06-07 10:44:32', null, null, '38', null, null);
INSERT INTO `uploads` VALUES ('47', '06-07-2014_Smart-phone1.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 10:44:32', '2014-06-07 10:44:32', null, null, '38', null, null);
INSERT INTO `uploads` VALUES ('48', '06-07-2014_nokia_announced_meego_smart_phone_n9_1.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 10:55:54', '2014-06-07 10:55:54', null, null, '39', null, null);
INSERT INTO `uploads` VALUES ('49', '06-07-2014_smart_phone_data_recovery.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 10:55:55', '2014-06-07 10:55:55', null, null, '39', null, null);
INSERT INTO `uploads` VALUES ('50', '06-07-2014_Smart-phone1.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 10:55:55', '2014-06-07 10:55:55', null, null, '39', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '$2y$10$CklDpY6X3uKKFq5hFSj.NuDWiSojfzg7YeU8wlLCswT59t3o94pP6', '', '0989333', 'vietnam', '3', '12', '344', 'male', 's', 'www', null, '2014-06-04 07:23:57', '1', 'publish');
INSERT INTO `users` VALUES ('15', 'username  ', '$2y$10$JE.6zQG/PnD89wa4o1TmkO6MxXrJTF2Nj7sT7qwg48TKlYNhRiYwa', 'test@gmail.com', '012365478', 'VIETNAMESE', '1', null, null, 'female', 'TEST', 'MR', '2014-06-03 10:38:27', '2014-06-03 10:38:27', null, 'publish');
INSERT INTO `users` VALUES ('17', 'ltt.develop@gmail.com', '$2y$10$Yvf1fa3vASOskoIH5/afBORzJ4NQCekpwCh.vfxVxeSBiaptjaeYe', 'ltt.develop@gmail.com', '', '', '2', null, null, 'male', '', '', '2014-06-04 09:24:35', '2014-06-04 09:24:35', null, 'publish');
INSERT INTO `users` VALUES ('18', 'luong@email.com', '$2y$10$aD98BXA5k24yqW2xqtLfIOnFMsp76N9/w.XTL3qcG7suSgM9/PCoC', 'luong@email.com', '', '', '3', null, null, 'male', '', '', '2014-06-05 11:27:51', '2014-06-05 11:27:51', null, 'publish');
