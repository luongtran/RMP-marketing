/*
Navicat MySQL Data Transfer

Source Server         : soft
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : rmp_marketing_new

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2014-06-14 13:33:24
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', 'Recruitment software with a difference', 'about', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n\r\n<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client&#39;s don&#39;t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n\r\n<div class=\"gap\" style=\"height: 30px;\">&nbsp;</div></div>\r\n\r\n<div class=\"row-item col-1_2\">\r\n<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n\r\n<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n\r\n<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n\r\n<h3 class=\"lined margin-20\">Some ROI benefits</h3>\r\n\r\n<div class=\"element-wrap\">\r\n<div class=\"b-progress-bar\" data-capacity=\"100\" data-value=\"90\">\r\n<div class=\"progress-label\">Increase Data Accuracy to upto 90%</div>\r\n\r\n<div class=\"progress-scale\">\r\n<div class=\"progress-line\" style=\"width: 90%;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"b-progress-bar\" data-capacity=\"100\" data-value=\"65\">\r\n<div class=\"progress-label\">WordPress 65%</div>\r\n\r\n<div class=\"progress-scale\">\r\n<div class=\"progress-line m-4\" style=\"width: 65%;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"b-progress-bar\" data-capacity=\"100\" data-value=\"78\">\r\n<div class=\"progress-label\">Graphic Design 78%</div>\r\n\r\n<div class=\"progress-scale\">\r\n<div class=\"progress-line m-3\" style=\"width: 78%;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"b-progress-bar\" data-capacity=\"100\" data-value=\"86\">\r\n<div class=\"progress-label\">HTML/CSS 86%</div>\r\n\r\n<div class=\"progress-scale\">\r\n<div class=\"progress-line m-2\" style=\"width: 86%;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"gap\" style=\"height: 30px;\">&nbsp;</div>\r\n</div>\r\n', '2014-05-27 08:21:51', '2014-06-05 11:19:19', '1', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n\r\n					<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client\'s don\'t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n\r\n\r\n					<div style=\"height: 30px;\" class=\"gap\">\r\n					</div>\r\n				</div>\r\n\r\n				<div class=\"row-item col-1_2\">\r\n					<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n					<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n					<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n					<h3 class=\"lined margin-20\">Some ROI benefits</h3>\r\n					<div class=\"element-wrap\">					\r\n						<div data-value=\"90\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">Increase Data Accuracy to upto 90%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line\" style=\"width: 90%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"65\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">WordPress 65%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-4\" style=\"width: 65%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"78\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">Graphic Design 78%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-3\" style=\"width: 78%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"86\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">HTML/CSS 86%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-2\" style=\"width: 86%;\"></div>\r\n							</div>\r\n						</div>\r\n						\r\n						\r\n					</div>\r\n					<div style=\"height: 30px;\" class=\"gap\">\r\n					</div>\r\n				</div>', '', 'publish', null, 'en');
INSERT INTO `articles` VALUES ('3', 'برامج التوظيف مع الفارق', 'about', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n\r\n					<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client\'s don\'t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n\r\n\r\n					<div style=\"height: 30px;\" class=\"gap\">\r\n					</div>\r\n				</div>\r\n\r\n				<div class=\"row-item col-1_2\">\r\n					<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n					<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n					<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n					<h3 class=\"lined margin-20\">Some ROI benefits</h3>\r\n					<div class=\"element-wrap\">					\r\n						<div data-value=\"90\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">Increase Data Accuracy to upto 90%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line\" style=\"width: 90%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"65\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">WordPress 65%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-4\" style=\"width: 65%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"78\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">Graphic Design 78%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-3\" style=\"width: 78%;\"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value=\"86\" data-capacity=\"100\" class=\"b-progress-bar\">\r\n							<div class=\"progress-label\">HTML/CSS 86%</div>\r\n							<div class=\"progress-scale\">\r\n								<div class=\"progress-line m-2\" style=\"width: 86%;\"></div>\r\n							</div>\r\n						</div>\r\n						\r\n						\r\n					</div>\r\n					<div style=\"height: 30px;\" class=\"gap\">\r\n					</div>\r\n				</div>', '2014-06-04 10:32:47', '2014-06-05 11:13:23', '1', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>', '', 'publish', null, 'sa');
INSERT INTO `articles` VALUES ('4', 'uuuuuuuuuuuuuuuuuuuu', '', '', '2014-06-10 11:03:10', '2014-06-14 02:22:17', '1', '', '', 'unpublish', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('2', 'SERVICE', '', '0', 'publish', null, '2014-06-10 10:06:20', '0', '');
INSERT INTO `categories` VALUES ('9', 'PAGE', '', null, 'publish', null, '2014-05-30 01:56:28', '0', '');
INSERT INTO `categories` VALUES ('11', 'Features', '', null, 'publish', null, '2014-05-29 03:51:46', '0', 'features');
INSERT INTO `categories` VALUES ('20', 'Tutorial', null, null, 'publish', '2014-06-10 09:54:33', '2014-06-10 09:54:33', '0', '');
INSERT INTO `categories` VALUES ('21', 'Video', '', '20', 'publish', '2014-06-10 09:54:49', '2014-06-10 10:05:34', '20', '');
INSERT INTO `categories` VALUES ('22', 'PDF', '', '20', 'publish', '2014-06-10 09:54:58', '2014-06-10 10:05:22', '20', '');

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
INSERT INTO `categories_articles` VALUES ('22', '4');

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
INSERT INTO `categories_moduledata` VALUES ('20', '83');
INSERT INTO `categories_moduledata` VALUES ('21', '56');
INSERT INTO `categories_moduledata` VALUES ('21', '74');
INSERT INTO `categories_moduledata` VALUES ('21', '75');
INSERT INTO `categories_moduledata` VALUES ('21', '76');

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
INSERT INTO `language` VALUES ('6', 'Việt nam', 'vi', null, null, 'unpublish', null, '2014-06-09 15:41:29', '2014-06-09 08:41:29');

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
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES ('1', 'Slider', 'publish', 'header', 'mod_Slider', '2014-06-09 11:15:27', '2014-06-09 04:15:27', '2', null, 'fontawesome-camera');
INSERT INTO `module` VALUES ('2', 'Reason', 'publish', 'content', 'mod_Reason', '2014-06-09 11:15:27', '2014-06-09 04:15:27', '4', null, 'fontawesome-play');
INSERT INTO `module` VALUES ('3', 'Feature', 'publish', 'top', 'mod_Feature', '2014-06-09 11:15:27', '2014-06-09 04:15:27', '3', null, 'fontawesome-bullhorn');
INSERT INTO `module` VALUES ('4', 'User Interfaces', 'publish', 'bottom', 'mod_UserInterface', '2014-06-09 11:15:27', '2014-06-09 04:15:27', '5', null, 'fontawesome-sitemap');
INSERT INTO `module` VALUES ('5', 'Contact', 'publish', 'content', 'mod_Contact', '2014-06-09 11:15:27', '2014-06-09 04:15:27', '6', null, 'maki-warehouse');
INSERT INTO `module` VALUES ('6', 'Title Bar', 'publish', 'title_bar', 'mod_TitleBar', '2014-06-09 11:15:27', '2014-06-09 04:15:27', '0', null, 'maki-embassy');
INSERT INTO `module` VALUES ('7', 'Support', 'publish', 'content', 'mod_Support', '2014-06-09 11:15:27', '2014-06-09 04:15:27', '7', null, 'maki-hospital');
INSERT INTO `module` VALUES ('8', 'Service', 'publish', 'content', 'mod_Service', '2014-06-09 11:15:27', '2014-06-09 04:15:27', '8', null, 'maki-fuel');
INSERT INTO `module` VALUES ('9', 'About', 'publish', 'content', 'mod_About', '2014-06-09 11:15:35', '2014-06-09 04:15:35', '9', null, 'fontawesome-globe');
INSERT INTO `module` VALUES ('10', 'Google Map', 'publish', 'top', 'mod_Maps', '2014-06-09 11:15:27', '2014-06-09 04:15:27', '2', null, 'fontawesome-pinterest-sign');
INSERT INTO `module` VALUES ('11', 'Happy Clients', 'publish', 'bottom', 'mod_HappyClient', '2014-06-09 11:15:35', '2014-06-09 04:15:35', '9', null, 'fontawesome-hand-up');
INSERT INTO `module` VALUES ('12', 'Request Demo', 'publish', 'content', 'mod_RequestDemo', '2014-06-09 11:15:27', '2014-06-09 04:15:27', '3', null, 'fontawesome-beaker');
INSERT INTO `module` VALUES ('13', 'Tutorial', 'publish', 'content', 'mod_Tutorial', '2014-06-10 02:06:24', '2014-06-10 02:06:24', '4', null, 'fontawesome-film');
INSERT INTO `module` VALUES ('14', 'SubmitRequestDemo', 'publish', 'content', 'mod_SubmitRequestDemo', '2014-06-10 11:15:50', '2014-06-10 11:15:50', '0', null, '');

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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of module_data
-- ----------------------------
INSERT INTO `module_data` VALUES ('12', ' Full Control ', '', 'Recruitment Software with a difference', '', null, null, '17', 'en', '1', '2014-06-10 08:53:25', '2014-06-10 01:53:25', '0', 'publish', null, 'http://completermp.com/marketing/', '_self');
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
INSERT INTO `module_data` VALUES ('40', 'ICEAT', '', '', '', null, null, '1', 'en', '11', '2014-06-09 08:52:46', '2014-06-09 01:52:46', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('41', 'QEHC', '', '', '', null, null, '1', 'en', '11', '2014-06-09 01:43:27', '2014-06-09 01:43:27', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('42', 'Duis Autem Vel Eum', '', 'Adipisci velit, sed quia non numquam eius modi tempora incidunt, ut labore', 'icon-css3 medium colored', null, null, '1', 'en', '3', '2014-06-09 09:08:20', '2014-06-09 02:08:20', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('43', 'Qui Blandit Praesent', '', 'Vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil ', 'icon-magic medium colored', null, null, '1', 'en', '3', '2014-06-09 09:08:19', '2014-06-09 02:08:19', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('44', 'Tation Dipiscing Elit', '', 'Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium ', 'icon-bullhorn medium colored', null, null, '1', 'en', '3', '2014-06-09 09:08:19', '2014-06-09 02:08:19', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('45', 'Applicants ', '', 'Inventore veritatis et quasi architectos beatae vitae dicta sunt explicabo. Nemo enims sadips ipsums un', '', null, null, '1', 'en', '4', '2014-06-09 02:46:17', '2014-06-09 02:46:17', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('46', 'Clients', '', '', '', null, null, '1', 'en', '4', '2014-06-09 02:46:34', '2014-06-09 02:46:34', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('47', 'Recruiters', '', '', '', null, null, '1', 'en', '4', '2014-06-09 02:46:44', '2014-06-09 02:46:44', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('48', 'Agents', '', '', '', null, null, '1', 'en', '4', '2014-06-09 02:46:54', '2014-06-09 02:46:54', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('49', 'Data Migration', '<div class=\"tab active\">\r\n<p>We apply several clearly defined stages for implementing CompleteRMP which make the transition from existing systems straightforward. We do this by setting up a &quot;work in progress&quot; system which we continually update &amp; customise until you are completely happy. We can then provide training on this temporary system before you go live to make sure everyone in your organisation is completely happy and ready before you switch over.</p>\r\n\r\n<p>The process starts with requirements gathering and our experienced consultants will advise you on the best way to customise CompleteRMP based on your specific requirements. If you are already using a system of any kind, we will discuss the data with you and in most cases can take a sample of your data and provide a fixed price quotation for data migration.</p>\r\n\r\n<p>We will then begin to customise the temporary system and start working on your data import. Once we have completed the data import, we will update the temporary system with your own data. You can then advise us on the imported data and if you would like to make any changes, for example you may want us to perform some data cleansing, duplicate checking or re-formatting.</p>\r\n\r\n<p>This is an iterative process and we will continue to update the temporary system based on your feedback and re-import the cleansed data until you are completely happy.</p>\r\n\r\n<p>We will then agree a day when you will stop using your existing system, at which time we will take a fresh copy of your existing data with any files and CV&#39;s and run our ready prepared import scripts. The temporary system will be updated once again and will be ready for you to start using as your new recruitment system.</p>\r\n</div>\r\n', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. ', 'icon-exchange', null, null, '1', 'en', '8', '2014-06-09 03:07:13', '2014-06-09 03:07:13', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('50', 'Bespoke Programming', '<div class=\"tab active\">\r\n<p>We offer bespoke programming services to our client base to provide additional functionality specific to the way they work and integrate this with their CompleteRMP product. Examples of this type of service would be to provide client specific tools that speed up internal processes such as synchronising with external systems. We can also develop any type of specific report and integrate it with your CompleteRMP system for example to be processed before management meetings and keep track of KPI&#39;s and sales forecasts.</p>\r\n\r\n<p>If suggested functionality would benefit the rest of our client base then this is included in the next product update for everyone so you will also benefit from tools and features suggested by the rest of our client base.</p>\r\n</div>\r\n', 'Feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent ', 'icon-code', null, null, '1', 'en', '8', '2014-06-09 03:07:49', '2014-06-09 03:07:49', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('51', 'Data Migration', '<div class=\"tab active\">\r\n<p>The CompleteRMP development team are specialists in carrying out seamless website integrations and as CompleteRMP is completely web based, new and innovative features can easily be integrated into your website without incurring large development costs. Over the years, we have produced a suit of internet recruitment tools that can easily be &quot;plugged in&quot; to any website to provide the latest recruitment functionality.</p>\r\n\r\n<p>You can use our in-house creative design &amp; development team and extensive network of partners or we will work with your own designers to integrate our technology &amp; assist with website creation &amp; company branding. We can quickly build your website already configured with the latest recruitment technology such as candidate area / registration, dynamic vacancy pages, automatic CV data extraction, hiring manager access and intelligent pre-screening at a fraction of the cost for a bespoke development.</p>\r\n\r\n<p>For more information please read the following information about recruitment website Development and internet recruitment software for recruitment consultancies or corporate recruitment.</p>\r\n</div>\r\n', 'Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. ', 'icon-desktop', null, null, '1', 'en', '8', '2014-06-09 03:08:25', '2014-06-09 03:08:25', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('52', 'Secure Hosting & Security', '<div class=\"tab active\">\r\n<p>The security of your data is our highest priority and every measure is taken to protect it. In fact, it is usually the case that our client&#39;s data is far more secure on our servers than on their own premises.</p>\r\n\r\n<p>Data security breaches can come from two main areas. First you must establish tight security within your own organisation. The comprehensive administration tools in our online recruitment solution will help with this as you have full control over each user&#39;s access rights and permissions. You can restrict users access to any area of CompleteRMP and even set the times they are allowed access for example to prevent access on evenings and weekends. You can also prevent individual user access from outside your own premises altogether.</p>\r\n\r\n<p>&nbsp;</p>\r\nOur servers are maintained in a state of the art data centre and are monitored 24 x 7. All our servers are configured in the best possible way by professionals to eliminate external threats. They are protected from fire, power outages and theft through stringent security measures that wouldn&#39;t go amiss in an airport and are connected with multiple internet connections to eliminate down time. We use the latest corporate Anti Virus software and our hardware and software firewalls stop unauthorised access.\r\n\r\n<p>As a final precaution, our entire client&#39;s data is backed up daily and stored in a separate location.</p>\r\n</div>\r\n', 'Feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent ', 'icon-lock', null, null, '1', 'en', '8', '2014-06-09 03:08:57', '2014-06-09 03:08:57', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('53', 'Premium Bronze Support', '<div class=\"row-item col-1_3\">\r\n<div class=\"b-tariff m-popular\">\r\n<div class=\"popular-title m-turquoise\">Premium Bronze Support</div>\r\n\r\n<div class=\"tariff-head\">\r\n<div class=\"tariff-title\">Bronze Package</div>\r\n\r\n<div class=\"tariff-price\"><span class=\"tariff-cy\">$</span> <span class=\"tariff-cost\">25</span> <span class=\"tariff-period\">/mo</span></div>\r\n\r\n<p class=\"tariff-description\">Sed ut perspiciatis unde omnis iste natus.</p>\r\n</div>\r\n\r\n<ul class=\"tariff-meta\">\r\n	<li><mark class=\"green strong\">FREE</mark> Setup</li>\r\n	<li>3 Active Users</li>\r\n	<li>Additional User is $5/mo</li>\r\n	<li>Unlimited Questions</li>\r\n	<li>Full Data Security</li>\r\n</ul>\r\n<a class=\"btn green tariff-btn\" href=\"#\">Start Now!</a></div>\r\n</div>', '', '', null, null, '1', 'en', '7', '2014-06-09 10:20:15', '2014-06-09 03:20:15', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('54', 'Premium Silver Support', '<div class=\"row-item col-1_3\">\r\n<div class=\"b-tariff m-popular\">\r\n<div class=\"popular-title m-turquoise\">Premium Silver Support</div>\r\n\r\n<div class=\"tariff-head\">\r\n<div class=\"tariff-title\">Silver Package</div>\r\n\r\n<div class=\"tariff-price\"><span class=\"tariff-cy\">$</span> <span class=\"tariff-cost\">50</span> <span class=\"tariff-period\">/mo</span></div>\r\n\r\n<p class=\"tariff-description\">Nemo enim ipsam voluptas.</p>\r\n</div>\r\n\r\n<ul class=\"tariff-meta\">\r\n	<li><mark class=\"green strong\">FREE</mark> Setup</li>\r\n	<li>3 Active Users</li>\r\n	<li>Additional User is $5/mo</li>\r\n	<li>Unlimited Questions</li>\r\n	<li>Full Data Security</li>\r\n</ul>\r\n<a class=\"btn turquoise tariff-btn\" href=\"#\">Start Now!</a></div>\r\n</div>', '', '', null, null, '1', 'en', '7', '2014-06-09 10:20:01', '2014-06-09 03:20:01', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('55', 'Premium Gold Support', '<div class=\"row-item col-1_3\">\r\n					\r\n					<div class=\"b-tariff m-popular\">\r\n						<div class=\"popular-title m-turquoise\">Premium Gold Support</div>\r\n\r\n						<div class=\"tariff-head\">\r\n							<div class=\"tariff-title\">Gold Package</div>\r\n\r\n							<div class=\"tariff-price\">\r\n								<span class=\"tariff-cy\">$</span>\r\n								<span class=\"tariff-cost\">75</span>\r\n								<span class=\"tariff-period\">/mo</span>\r\n							</div>\r\n\r\n							<p class=\"tariff-description\">Neque porro quisquam ipsum.</p>\r\n						</div>\r\n						<ul class=\"tariff-meta\">\r\n							<li><mark class=\"green strong\">FREE</mark> Setup</li>\r\n							<li><i style=\"color: #73ca3f;\" class=\"icon-user\"></i> 3 Active Users</li>\r\n							<li><i style=\"color: #73ca3f;\" class=\"icon-plus\"></i> Additional User is $5/mo</li>\r\n							<li><i style=\"color: #73ca3f;\" class=\"icon-lock\"></i> Unlimited Questions</li>\r\n							<li><i style=\"color: #73ca3f;\" class=\"icon-ok\"></i> Full Data Security</li>\r\n						</ul>\r\n\r\n						<a href=\"#\" class=\"btn blue tariff-btn\">Start Now!</a>\r\n					</div>\r\n\r\n				</div>', '', '', null, null, '1', 'en', '7', '2014-06-09 03:19:29', '2014-06-09 03:19:29', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('56', 'test video', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"//www.youtube.com/embed/HkMNOlYcpHg\" width=\"420\"></iframe></p>\r\n', '', '', null, null, '1', 'en', '13', '2014-06-10 16:24:32', '2014-06-10 09:24:32', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('74', 'Laravel Tutorial Part 1 - Installation and Configuration ', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"//www.youtube.com/embed/m5Jmh9JKnyQ\" width=\"420\"></iframe></p>\r\n', '', '', null, null, '1', 'en', '13', '2014-06-10 04:48:12', '2014-06-10 04:48:12', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('75', 'Learn HTML in 12 Minutes ', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"//www.youtube.com/embed/bWPMSSsVdPk\" width=\"420\"></iframe></p>\r\n', '', '', null, null, '1', 'en', '13', '2014-06-10 16:23:48', '2014-06-10 09:23:48', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('76', 'Top Google SEO Tips, Secrets, and Tricks', '<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"//www.youtube.com/embed/j-kpz_DKVw8\" width=\"420\"></iframe></p>\r\n', '', '', null, null, '1', 'en', '13', '2014-06-10 09:22:39', '2014-06-10 09:22:39', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('82', 'INTEL', '', '', '', null, null, '1', 'en', '11', '2014-06-10 11:34:51', '2014-06-10 11:34:51', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('83', 'oooooooooooooooooooooo', '<p>ooooooooooooooooooooo</p>\r\n', '', '', null, null, '1', 'en', '1', '2014-06-14 06:29:56', '2014-06-14 06:29:56', '0', 'publish', null, '', '_self');
INSERT INTO `module_data` VALUES ('84', 'ffffffffffffff', '<p>fffffffffffffffffffffffffff</p>\r\n', '', '', null, null, '1', 'en', '1', '2014-06-14 06:31:08', '2014-06-14 06:31:08', '0', 'publish', null, '', '_self');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of module_intro
-- ----------------------------
INSERT INTO `module_intro` VALUES ('2', 'Need more reasons to choose CompleteRMP!', '', '9', 'en', '2014-06-09 10:03:55', '2014-06-09 03:03:55', 'publish', '2', '1');
INSERT INTO `module_intro` VALUES ('3', 'بحاجة الى مزيد من الأسباب لاختيار CompleteRMP!', '', '0', 'sa', '2014-06-07 10:15:02', '2014-06-07 10:15:02', 'publish', '2', '1');
INSERT INTO `module_intro` VALUES ('4', 'Our Happy Clients', '', '', 'en', '2014-06-09 01:43:58', '2014-06-09 01:43:58', 'publish', '11', '1');
INSERT INTO `module_intro` VALUES ('5', 'Ullam Corporis Suscipit Laboriosam', '', 'Aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt ', 'en', '2014-06-09 09:02:35', '2014-06-09 02:02:35', 'publish', '12', '1');
INSERT INTO `module_intro` VALUES ('6', 'Dedicated User Interfaces', '', '', 'en', '2014-06-09 09:49:52', '2014-06-09 02:49:52', 'publish', '4', '1');
INSERT INTO `module_intro` VALUES ('7', 'Available Support Packages.', '', 'We provide 24/7 support to all of our customers via our Knowledge Base, Online Resources ( video tutorials ) and Support Tickets. For three months we provide free limited telephone support in addition to the previously mentioned methods. After the 3 months ?? period clients can purchase one of three premium support packages.', 'en', '2014-06-09 03:15:37', '2014-06-09 03:15:37', 'publish', '7', '1');

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
INSERT INTO `page_module` VALUES ('1', '1', null, '2014-06-10 08:42:55', '2014-06-10 08:42:55');
INSERT INTO `page_module` VALUES ('1', '2', null, '2014-06-10 08:42:55', '2014-06-10 08:42:55');
INSERT INTO `page_module` VALUES ('1', '3', null, '2014-06-10 08:42:55', '2014-06-10 08:42:55');
INSERT INTO `page_module` VALUES ('1', '11', null, '2014-06-10 08:42:55', '2014-06-10 08:42:55');
INSERT INTO `page_module` VALUES ('1', '12', null, '2014-06-10 08:42:55', '2014-06-10 08:42:55');
INSERT INTO `page_module` VALUES ('2', '4', null, '2014-06-09 02:49:28', '2014-06-09 02:49:28');
INSERT INTO `page_module` VALUES ('2', '6', null, '2014-06-09 02:49:28', '2014-06-09 02:49:28');
INSERT INTO `page_module` VALUES ('2', '9', null, '2014-06-09 02:49:28', '2014-06-09 02:49:28');
INSERT INTO `page_module` VALUES ('3', '6', null, '2014-06-09 03:06:03', '2014-06-09 03:06:03');
INSERT INTO `page_module` VALUES ('3', '8', null, '2014-06-09 03:06:03', '2014-06-09 03:06:03');
INSERT INTO `page_module` VALUES ('4', '5', null, '2014-06-09 03:27:00', '2014-06-09 03:27:00');
INSERT INTO `page_module` VALUES ('4', '6', null, '2014-06-09 03:27:00', '2014-06-09 03:27:00');
INSERT INTO `page_module` VALUES ('4', '10', null, '2014-06-09 03:27:00', '2014-06-09 03:27:00');
INSERT INTO `page_module` VALUES ('10', '3', null, '2014-06-14 03:58:53', '2014-06-14 03:58:53');
INSERT INTO `page_module` VALUES ('10', '6', null, '2014-06-14 03:58:52', '2014-06-14 03:58:52');
INSERT INTO `page_module` VALUES ('11', '6', null, '2014-06-09 03:14:23', '2014-06-09 03:14:23');
INSERT INTO `page_module` VALUES ('11', '7', null, '2014-06-09 03:14:23', '2014-06-09 03:14:23');
INSERT INTO `page_module` VALUES ('12', '6', null, '2014-06-10 11:16:04', '2014-06-10 11:16:04');
INSERT INTO `page_module` VALUES ('12', '14', null, '2014-06-10 11:16:04', '2014-06-10 11:16:04');
INSERT INTO `page_module` VALUES ('13', '6', null, '2014-06-10 09:40:06', '2014-06-10 09:40:06');
INSERT INTO `page_module` VALUES ('13', '13', null, '2014-06-10 09:40:06', '2014-06-10 09:40:06');

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
INSERT INTO `pages` VALUES ('1', 'Home', 'home', '2014-06-10 15:42:54', '2014-06-10 08:42:54', 'publish');
INSERT INTO `pages` VALUES ('2', 'About us', 'about', '2014-06-03 14:28:27', '2014-06-03 14:28:27', 'publish');
INSERT INTO `pages` VALUES ('3', 'Our Services ', 'service', '2014-06-03 14:28:27', '2014-06-03 14:28:27', 'publish');
INSERT INTO `pages` VALUES ('4', 'Contact Us', 'contact-us', '2014-06-03 14:28:31', '2014-06-03 14:28:31', 'publish');
INSERT INTO `pages` VALUES ('10', 'RMP Features ', 'features', '2014-06-03 14:28:30', '2014-06-03 14:28:30', 'publish');
INSERT INTO `pages` VALUES ('11', 'Support Packages ', 'support-packages', '2014-06-03 14:28:30', '2014-06-03 14:28:30', 'publish');
INSERT INTO `pages` VALUES ('12', 'Request Demo', 'request-demo', '2014-06-03 14:28:29', '2014-06-03 14:28:29', 'publish');
INSERT INTO `pages` VALUES ('13', 'Tutorial', 'blog', '2014-06-10 16:40:06', '2014-06-10 09:40:06', 'publish');

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
-- Table structure for `request_demo`
-- ----------------------------
DROP TABLE IF EXISTS `request_demo`;
CREATE TABLE `request_demo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` text COLLATE utf8_unicode_ci,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of request_demo
-- ----------------------------
INSERT INTO `request_demo` VALUES ('1', 'luongtran', 'SFR', 'can 1 ban demo', 'fljfj', '0000-00-00 00:00:00', null, 'publish', null);

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
INSERT INTO `setting` VALUES ('address', 'Address', 'vietnam', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('business_hours', 'Businness Hours', '<br> Monday-Friday: 9: <sup>00</sup> — 18: <sup>00</sup> <br> Saturday: 10: <sup>00</sup> — 17: <sup>00</sup> <br> Sunday: closed', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('email_contact', 'E-mail', 'info@completermp.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('email_encryption', 'Email Encryption', 'tls', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('email_host', 'Email Host', 'smtp.gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('email_password', 'Email Password', '18061989', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('email_port', 'Email Port', '587', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `setting` VALUES ('email_username', 'Email Username', 'ltt.develop@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
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
-- Table structure for `type_file`
-- ----------------------------
DROP TABLE IF EXISTS `type_file`;
CREATE TABLE `type_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extend` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of type_file
-- ----------------------------
INSERT INTO `type_file` VALUES ('1', 'Image', null, null, null, null, null);
INSERT INTO `type_file` VALUES ('2', 'Pdf', null, '2014-06-10 09:38:07', '2014-06-10 09:38:07', null, 'pdf');
INSERT INTO `type_file` VALUES ('3', 'Video', null, null, null, null, null);
INSERT INTO `type_file` VALUES ('4', 'Doc', null, null, null, null, null);
INSERT INTO `type_file` VALUES ('5', 'exels', null, null, null, null, null);

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
  `type_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of uploads
-- ----------------------------
INSERT INTO `uploads` VALUES ('35', '06-07-2014_Slider-1.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 09:01:04', '2014-06-10 10:08:12', null, null, '28', null, null, 'image');
INSERT INTO `uploads` VALUES ('36', '06-07-2014_security.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 09:19:15', '2014-06-10 10:08:12', null, null, '29', null, null, 'image');
INSERT INTO `uploads` VALUES ('37', '06-07-2014_reliability.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 09:20:07', '2014-06-10 10:08:12', null, null, '30', null, null, 'image');
INSERT INTO `uploads` VALUES ('38', '06-07-2014_accuracy.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 09:21:13', '2014-06-10 10:08:35', null, null, '31', null, null, 'image');
INSERT INTO `uploads` VALUES ('39', '06-07-2014_efficiency.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 09:21:50', '2014-06-10 10:08:28', null, null, '32', null, null, 'image');
INSERT INTO `uploads` VALUES ('40', '06-07-2014_productivity.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 09:22:29', '2014-06-10 10:08:27', null, null, '33', null, null, 'image');
INSERT INTO `uploads` VALUES ('41', '06-07-2014_convenience.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 09:23:11', '2014-06-10 10:08:27', null, null, '34', null, null, 'image');
INSERT INTO `uploads` VALUES ('42', '06-07-2014_extendable.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 09:23:39', '2014-06-10 10:08:26', null, null, '35', null, null, 'image');
INSERT INTO `uploads` VALUES ('43', '06-07-2014_simplicity.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 09:24:11', '2014-06-10 10:08:26', null, null, '36', null, null, 'image');
INSERT INTO `uploads` VALUES ('44', '06-07-2014_security.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 10:41:35', '2014-06-10 10:08:25', null, null, '37', null, null, 'image');
INSERT INTO `uploads` VALUES ('45', '06-07-2014_nokia_announced_meego_smart_phone_n9_1.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 10:44:32', '2014-06-10 10:08:25', null, null, '38', null, null, 'image');
INSERT INTO `uploads` VALUES ('46', '06-07-2014_smart_phone_data_recovery.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 10:44:32', '2014-06-10 10:08:24', null, null, '38', null, null, 'image');
INSERT INTO `uploads` VALUES ('47', '06-07-2014_Smart-phone1.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 10:44:32', '2014-06-10 10:08:24', null, null, '38', null, null, 'image');
INSERT INTO `uploads` VALUES ('48', '06-07-2014_nokia_announced_meego_smart_phone_n9_1.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 10:55:54', '2014-06-10 10:08:23', null, null, '39', null, null, 'image');
INSERT INTO `uploads` VALUES ('49', '06-07-2014_smart_phone_data_recovery.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 10:55:55', '2014-06-10 10:08:23', null, null, '39', null, null, 'image');
INSERT INTO `uploads` VALUES ('50', '06-07-2014_Smart-phone1.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-07 10:55:55', '2014-06-10 10:08:22', null, null, '39', null, null, 'image');
INSERT INTO `uploads` VALUES ('52', '06-09-2014_iceat.png', 'asset/share/uploads/images', 'image/png', null, '2014-06-09 01:39:59', '2014-06-10 10:08:22', null, null, '40', null, null, 'image');
INSERT INTO `uploads` VALUES ('53', '06-09-2014_qehc.png', 'asset/share/uploads/images', 'image/png', null, '2014-06-09 01:43:27', '2014-06-10 10:08:22', null, null, '41', null, null, 'image');
INSERT INTO `uploads` VALUES ('57', '06-09-2014_digital-art.png', 'asset/share/uploads/images', 'image/png', null, '2014-06-09 03:01:47', '2014-06-10 10:08:21', null, null, '47', null, null, 'image');
INSERT INTO `uploads` VALUES ('58', '06-09-2014_industrial-design.png', 'asset/share/uploads/images', 'image/png', null, '2014-06-09 03:01:56', '2014-06-10 10:08:21', null, null, '48', null, null, 'image');
INSERT INTO `uploads` VALUES ('59', '06-09-2014_vector-art.png', 'asset/share/uploads/images', 'image/png', null, '2014-06-09 03:02:07', '2014-06-10 10:08:20', null, null, '46', null, null, 'image');
INSERT INTO `uploads` VALUES ('60', '06-09-2014_programming.png', 'asset/share/uploads/images', 'image/png', null, '2014-06-09 03:02:18', '2014-06-10 10:08:19', null, null, '45', null, null, 'image');
INSERT INTO `uploads` VALUES ('121', '06-10-2014_61_cycle_eight_24.gif', 'asset/share/uploads/images', 'image/gif', null, '2014-06-10 04:45:25', '2014-06-10 04:45:25', null, null, '56', null, null, 'image');
INSERT INTO `uploads` VALUES ('122', '06-10-2014_Thong_Tin_Cap_hoc_bong_SV_nam_4_5.pdf', 'asset/share/uploads/document', 'application/pdf', null, '2014-06-10 04:45:25', '2014-06-10 04:45:25', null, null, '56', null, null, 'file');
INSERT INTO `uploads` VALUES ('123', '06-10-2014_test1.jpg', 'asset/share/uploads/images', 'image/jpeg', null, '2014-06-10 06:43:53', '2014-06-10 06:43:53', null, null, null, null, null, 'image');
INSERT INTO `uploads` VALUES ('124', '06-10-2014_test1.jpg', 'public/asset/share/uploads/images', 'image/jpeg', null, '2014-06-10 07:09:21', '2014-06-10 07:09:21', null, null, null, null, null, null);
INSERT INTO `uploads` VALUES ('125', '06-10-2014_test1.jpg', 'public/asset/share/uploads/images', 'image/jpeg', null, '2014-06-10 07:10:58', '2014-06-10 07:10:58', null, null, null, null, null, null);
INSERT INTO `uploads` VALUES ('126', '06-10-2014_microsoft-linux.jpg', 'public/asset/share/uploads/images', 'image/jpeg', null, '2014-06-10 07:11:12', '2014-06-10 07:11:12', null, null, null, null, null, null);
INSERT INTO `uploads` VALUES ('127', '06-10-2014_microsoft-linux.jpg', 'public/asset/share/uploads/images', 'image/jpeg', null, '2014-06-10 07:12:07', '2014-06-10 07:12:07', null, null, null, null, null, 'image');
INSERT INTO `uploads` VALUES ('128', '06-10-2014_cal.gif', 'asset/share/uploads/images', 'image/gif', null, '2014-06-10 11:34:51', '2014-06-10 11:34:51', null, null, '82', null, null, 'image');
INSERT INTO `uploads` VALUES ('129', '06-14-2014_Bug_16_04_2014_in_the _afternoon.xlsx', 'asset/share/uploads/document', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', null, '2014-06-14 06:31:46', '2014-06-14 06:31:46', null, null, '84', null, null, 'file');

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
  `company` text COLLATE utf8_unicode_ci,
  `avatar` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '$2y$10$a4dduFKi0PKnoXeN1vEyEuLSU55a3LkOszloiBBK.8EcJYue7IVZ2', '', '5555555555', 'vietnam', '3', '12', '344', '', 'luong', 'truyen', null, '2014-06-10 06:43:53', '1', null, 'TNHH MTV SFR SOFTWARE', '123');
INSERT INTO `users` VALUES ('15', 'username  ', '$2y$10$JE.6zQG/PnD89wa4o1TmkO6MxXrJTF2Nj7sT7qwg48TKlYNhRiYwa', 'test@gmail.com', '012365478', 'VIETNAMESE', '1', null, null, 'female', 'TEST', 'MR', '2014-06-03 10:38:27', '2014-06-09 11:06:52', null, 'publish', '', '83');
INSERT INTO `users` VALUES ('17', 'ltt.develop@gmail.com', '$2y$10$Yvf1fa3vASOskoIH5/afBORzJ4NQCekpwCh.vfxVxeSBiaptjaeYe', 'ltt.develop@gmail.com', '', '', '2', null, null, 'male', '', '', '2014-06-04 09:24:35', '2014-06-09 11:07:54', null, 'publish', '', '84');
INSERT INTO `users` VALUES ('18', 'luong@email.com', '$2y$10$aD98BXA5k24yqW2xqtLfIOnFMsp76N9/w.XTL3qcG7suSgM9/PCoC', 'luong@email.com', '', '', '3', null, null, 'male', '', '', '2014-06-05 11:27:51', '2014-06-05 11:27:51', null, 'publish', null, null);
