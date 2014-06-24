-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2014 at 11:01 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rmp_marketing_new`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `permalink`, `content`, `created_at`, `updated_at`, `user_id`, `description`, `keyword`, `status`, `group_uploads`, `lang_id`) VALUES
(1, 'Recruitment software with a difference', 'about', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n\r\n<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client&#39;s don&#39;t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n\r\n<div class="gap" style="height: 30px;">&nbsp;</div></div>\r\n\r\n<div class="row-item col-1_2">\r\n<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n\r\n<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n\r\n<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n\r\n<h3 class="lined margin-20">Some ROI benefits</h3>\r\n\r\n<div class="element-wrap">\r\n<div class="b-progress-bar" data-capacity="100" data-value="90">\r\n<div class="progress-label">Increase Data Accuracy to upto 90%</div>\r\n\r\n<div class="progress-scale">\r\n<div class="progress-line" style="width: 90%;">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class="b-progress-bar" data-capacity="100" data-value="65">\r\n<div class="progress-label">WordPress 65%</div>\r\n\r\n<div class="progress-scale">\r\n<div class="progress-line m-4" style="width: 65%;">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class="b-progress-bar" data-capacity="100" data-value="78">\r\n<div class="progress-label">Graphic Design 78%</div>\r\n\r\n<div class="progress-scale">\r\n<div class="progress-line m-3" style="width: 78%;">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class="b-progress-bar" data-capacity="100" data-value="86">\r\n<div class="progress-label">HTML/CSS 86%</div>\r\n\r\n<div class="progress-scale">\r\n<div class="progress-line m-2" style="width: 86%;">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class="gap" style="height: 30px;">&nbsp;</div>\r\n</div>\r\n', '2014-05-27 01:21:51', '2014-06-05 04:19:19', 1, '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n\r\n					<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client''s don''t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n\r\n\r\n					<div style="height: 30px;" class="gap">\r\n					</div>\r\n				</div>\r\n\r\n				<div class="row-item col-1_2">\r\n					<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n					<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n					<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n					<h3 class="lined margin-20">Some ROI benefits</h3>\r\n					<div class="element-wrap">					\r\n						<div data-value="90" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">Increase Data Accuracy to upto 90%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line" style="width: 90%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="65" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">WordPress 65%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-4" style="width: 65%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="78" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">Graphic Design 78%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-3" style="width: 78%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="86" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">HTML/CSS 86%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-2" style="width: 86%;"></div>\r\n							</div>\r\n						</div>\r\n						\r\n						\r\n					</div>\r\n					<div style="height: 30px;" class="gap">\r\n					</div>\r\n				</div>', '', 'publish', NULL, 'en'),
(3, 'برامج التوظيف مع الفارق', 'about', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n\r\n					<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client''s don''t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n\r\n\r\n					<div style="height: 30px;" class="gap">\r\n					</div>\r\n				</div>\r\n\r\n				<div class="row-item col-1_2">\r\n					<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n					<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n					<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n					<h3 class="lined margin-20">Some ROI benefits</h3>\r\n					<div class="element-wrap">					\r\n						<div data-value="90" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">Increase Data Accuracy to upto 90%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line" style="width: 90%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="65" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">WordPress 65%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-4" style="width: 65%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="78" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">Graphic Design 78%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-3" style="width: 78%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="86" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">HTML/CSS 86%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-2" style="width: 86%;"></div>\r\n							</div>\r\n						</div>\r\n						\r\n						\r\n					</div>\r\n					<div style="height: 30px;" class="gap">\r\n					</div>\r\n				</div>', '2014-06-04 03:32:47', '2014-06-05 04:13:23', 1, '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>', '', 'publish', NULL, 'sa'),
(4, 'uuuuuuuuuuuuuuuuuuuu', '', '', '2014-06-10 04:03:10', '2014-06-13 19:22:17', 1, '', '', 'unpublish', NULL, NULL),
(10, 'uuuuuuuuuuuuuuuuuuuuuuuuuuu', 'uuuuuuuuuuuuu', '<p>uuuuuuuuuuuuuuu</p>\r\n', '2014-06-14 00:34:42', '2014-06-14 00:34:42', 1, '', '', 'publish', NULL, NULL),
(11, 'Ullam Corporis Suscipit Laboriosamuuuuuuuuuu', 'uuuuuuuuuuuuuuuuuuuuuuuuuuuuuu', '', '2014-06-14 00:34:57', '2014-06-14 00:34:57', 1, '', 'uuuuuuuuuuuuu', 'publish', NULL, NULL),
(12, 'Ullam Corporis Suscipit Laboriosamuuuuuuuuuu', '', '<p>jjjjjjjjjjjjjjjjjjjjjjjjj</p>\r\n', '2014-06-14 00:38:37', '2014-06-14 00:38:37', 1, '', 'uuuuuuuuuuuuu', 'publish', NULL, NULL),
(13, 'Ullam Corporis Suscipit Laboriosamuuuuuuuuuu', '', '<p>jjjjjjjjjjjjjjjjjjjjjjjjj</p>\r\n', '2014-06-14 00:39:50', '2014-06-14 00:39:50', 1, '', 'uuuuuuuuuuuuu', 'publish', NULL, NULL),
(15, 'LG G3 bất ngờ xuất hiện tại Việt Namlllllllllll', 'llllllllllllllllll', '<p>llllllllllll</p>\r\n', '2014-06-14 00:41:38', '2014-06-14 00:41:38', 1, '', '', 'publish', NULL, NULL),
(16, 'ooooooooooooo', 'oooooooooooooooooooooo', '<p>oooooo</p>\r\n', '2014-06-15 23:23:43', '2014-06-15 23:23:43', 1, '', '', 'publish', NULL, NULL),
(17, 'ooooooooooooo', '', '<p>oooooo</p>\r\n', '2014-06-15 23:25:33', '2014-06-15 23:25:33', 1, '', '', 'publish', NULL, NULL),
(21, 'bbbbbbbbb', 'bbbbbbbbbbbbbbbbbbbbbbbbbbbb', '', '2014-06-16 02:27:06', '2014-06-20 20:35:48', 1, '', '', 'unpublish', NULL, NULL),
(23, 'tinh yeu+toi_hat', 'Array', '<p>ssssssssssssssss</p>\r\n', '2014-06-20 21:18:29', '2014-06-20 21:18:29', 1, '', '', 'publish', NULL, NULL),
(25, 'Recruitment software with a difference', 'recruitment-software-with-a-difference', '<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n\r\n<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n', '2014-06-20 21:31:48', '2014-06-20 21:31:48', 1, '', '', 'publish', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE IF NOT EXISTS `blog_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `description`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Applicant', NULL, '2014-06-23 08:26:47', '2014-06-23 08:26:47', 'publish'),
(2, 'Client', NULL, '2014-06-23 09:04:00', '2014-06-23 09:04:00', 'publish'),
(6, 'Agents ', '', NULL, NULL, 'publish'),
(7, 'Recruiters ', '', '2014-06-24 06:58:53', '2014-06-23 23:58:53', 'unpublish');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE IF NOT EXISTS `blog_comments` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `content`, `post_id`, `user_id`, `created_at`, `updated_at`, `website`, `email`, `name`, `ip`, `status`) VALUES
(18, ';sldksdf;l', 21, NULL, '2014-06-24 08:25:59', '2014-06-24 01:25:59', '', 'ltt.develop@gmail.com', 'truyen', '::1', 'publish'),
(20, 'lk''k''dddddd', 20, NULL, '2014-06-24 08:25:54', '2014-06-24 01:25:54', '', 'lksdfjk@s.com', 'mr tronglk', '::1', 'publish'),
(21, 'ljksdklfjdkljfklsdfsss', 18, NULL, '2014-06-24 08:32:36', '2014-06-24 01:32:36', '', 'k@s.com', 'ltuok', '::1', 'publish');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE IF NOT EXISTS `blog_posts` (
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `title`, `content`, `sumary`, `image`, `user_id`, `created_at`, `updated_at`, `view`, `status`, `lang_id`) VALUES
(15, 'ssssssss1', '<p>ssssssssssssssssssssssssssss</p>\r\n', 's', NULL, 1, '2014-06-23 18:31:42', '2014-06-23 18:31:42', NULL, 'publish', NULL),
(18, 'Laoreet Dolore Magna Aliquam Erat Volutpat', '<div class="blockquote">Sapien pede libero. Maecenas lacus aliquet et nisl nunc, per sed sed maecenas.Lectus tincidunt pellentesque augue urna sit sed, arcu sed ante ac montes pellentesque consectetuer.</div>\r\n\r\n<p>Fringilla penatibus orci est non mollit, suspendisse pulvinar egestas a donec. Vulputate mi dui suscipit, molestie vulputate libero fusce iaculis suscipit. Sapien pede libero. Maecenas lacus aliquet et nisl nunc, per sed sed maecenas.Lectus tincidunt pellentesque augue urna sit sed, arcu sed ante ac montes pellentesque consectetuer, neque magnis penatibus laoreet vehicula nulla orci, a malesuada justo laoreet ipsum, in ac fusce.</p>\r\n\r\n<ul class="b-list iconok strong">\r\n	<li><span>Sed ut perspiciatis unde omnis</span></li>\r\n	<li><span>Accusantium doloremque</span></li>\r\n	<li><span>Neque porro quisquam est</span></li>\r\n</ul>\r\n\r\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.</p>\r\n\r\n<div class="b-gallery">\r\n<div class="img-wrap"><a class="pretty-photo-item" href="http://localhost:8000/blog/detail/img/port/spring-flowers-big.jpg" rel="prettyPhoto[gallery]"><img alt="" src="http://localhost:8000/blog/detail/img/blog/2.jpg" /> </a>\r\n\r\n<div class="link-overlay icon-search">&nbsp;</div>\r\n<a class="pretty-photo-item" href="http://localhost:8000/blog/detail/img/port/spring-flowers-big.jpg" rel="prettyPhoto[gallery]"> </a></div>\r\n\r\n<div class="img-wrap"><a class="pretty-photo-item" href="http://localhost:8000/blog/detail/img/port/smiling-big.jpg" rel="prettyPhoto[gallery]"><img alt="" src="http://localhost:8000/blog/detail/img/blog/3.jpg" /> </a>\r\n\r\n<div class="link-overlay icon-search">&nbsp;</div>\r\n<a class="pretty-photo-item" href="http://localhost:8000/blog/detail/img/port/smiling-big.jpg" rel="prettyPhoto[gallery]"> </a></div>\r\n\r\n<div class="img-wrap"><a class="pretty-photo-item" href="http://localhost:8000/blog/detail/img/port/yacht-sailing-big.jpg" rel="prettyPhoto[gallery]"><img alt="" src="http://localhost:8000/blog/detail/img/blog/4.jpg" /> </a>\r\n\r\n<div class="link-overlay icon-search">&nbsp;</div>\r\n<a class="pretty-photo-item" href="http://localhost:8000/blog/detail/img/port/yacht-sailing-big.jpg" rel="prettyPhoto[gallery]"> </a></div>\r\n\r\n<div class="img-wrap"><a class="pretty-photo-item" href="http://localhost:8000/blog/detail/img/port/music-night-club-big.jpg" rel="prettyPhoto[gallery]"><img alt="" src="http://localhost:8000/blog/detail/img/blog/5.jpg" /> </a>\r\n\r\n<div class="link-overlay icon-search">&nbsp;</div>\r\n<a class="pretty-photo-item" href="http://localhost:8000/blog/detail/img/port/music-night-club-big.jpg" rel="prettyPhoto[gallery]"> </a></div>\r\n\r\n<div class="img-wrap"><a class="pretty-photo-item" href="http://localhost:8000/blog/detail/img/port/work-from-home-big.jpg" rel="prettyPhoto[gallery]"><img alt="" src="http://localhost:8000/blog/detail/img/blog/6.jpg" /> </a>\r\n\r\n<div class="link-overlay icon-search">&nbsp;</div>\r\n<a class="pretty-photo-item" href="http://localhost:8000/blog/detail/img/port/work-from-home-big.jpg" rel="prettyPhoto[gallery]"> </a></div>\r\n\r\n<div class="img-wrap"><a class="pretty-photo-item" href="http://localhost:8000/blog/detail/img/port/surfer-big.jpg" rel="prettyPhoto[gallery]"><img alt="" src="http://localhost:8000/blog/detail/img/blog/8.jpg" /> </a>\r\n\r\n<div class="link-overlay icon-search">&nbsp;</div>\r\n<a class="pretty-photo-item" href="http://localhost:8000/blog/detail/img/port/surfer-big.jpg" rel="prettyPhoto[gallery]"> </a></div>\r\n</div>\r\n\r\n<p>Fringilla penatibus orci est non mollit, suspendisse pulvinar egestas a donec. Vulputate mi dui suscipit, molestie vulputate libero fusce iaculis suscipit. Sapien pede libero. Maecenas lacus aliquet et nisl nunc, per sed sed maecenas.Lectus tincidunt pellentesque augue urna sit sed, arcu sed ante ac montes pellentesque consectetuer, neque magnis penatibus laoreet vehicula nulla orci, a malesuada justo laoreet ipsum, in ac fusce.</p>\r\n', 'Ut aenean pellentesque felis at turpis bibendum, duis eu consectetur sed tellus, blandit pulvinar dictum ac wisi libero a, nec sed ac elit. Fringilla penatibus orci est non mollit, suspendisse pulvinar egestas a donec, iaculis aenean, parturient velit elit ac viverra vestibulum, quis et nascetur rutrum nibh molestie fusce. ', 159, 1, '2014-06-24 02:07:55', '2014-06-23 19:07:55', NULL, 'publish', NULL),
(19, 'Laravel Quick Installation and Setup', '<p>teps to install and setup Laravel 4:</p>\r\n\r\n<ul>\r\n	<li>Install Laravel 4 by following instructions provided <a href="http://laravel.com/docs/installation" target="_blank">here</a>.</li>\r\n	<li>Create a database using the MySQL terminal client:\r\n	<pre class="bash">\r\n┌─[usm4n@usm4n-desktop]―[~]\r\n└─&bull;mysql -u root -p\r\nEnter password: \r\nmysql&gt; create database laravel;\r\nQuery OK, 1 row affected (0.00 sec)</pre>\r\n	</li>\r\n	<li>Configure database in /app/config/database.php:\r\n	<pre class="prettyprint linenums">\r\n\r\n&nbsp;</pre>\r\n\r\n	<ol class="linenums">\r\n		<li class="L0"><span class="str">&#39;mysql&#39;</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> array</span><span class="pun">(</span></li>\r\n		<li class="L1"><span class="str">&#39;driver&#39;</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> </span><span class="str">&#39;mysql&#39;</span><span class="pun">,</span></li>\r\n		<li class="L2"><span class="str">&#39;host&#39;</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> </span><span class="str">&#39;localhost&#39;</span><span class="pun">,</span></li>\r\n		<li class="L3"><span class="str">&#39;database&#39;</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> </span><span class="str">&#39;laravel&#39;</span><span class="pun">,</span></li>\r\n		<li class="L4"><span class="str">&#39;username&#39;</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> </span><span class="str">&#39;root&#39;</span><span class="pun">,</span></li>\r\n		<li class="L5"><span class="str">&#39;password&#39;</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> </span><span class="str">&#39;very_secret_password&#39;</span><span class="pun">,</span></li>\r\n		<li class="L6"><span class="str">&#39;charset&#39;</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> </span><span class="str">&#39;utf8&#39;</span><span class="pun">,</span></li>\r\n		<li class="L7"><span class="str">&#39;collation&#39;</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> </span><span class="str">&#39;utf8_unicode_ci&#39;</span><span class="pun">,</span></li>\r\n		<li class="L8"><span class="str">&#39;prefix&#39;</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> </span><span class="str">&#39;&#39;</span><span class="pun">,</span></li>\r\n		<li class="L9"><span class="pun">),</span></li>\r\n	</ol>\r\n	</li>\r\n</ul>\r\n', 'In this section, we will create database tables for our blog application using Laravel Database Migrations. Our application will be utilizing posts and comments tables to store articles and user comments respectively. (Read more on migrations here)', NULL, 1, '2014-06-23 19:59:28', '2014-06-23 19:59:28', NULL, 'publish', NULL),
(20, 'Installation ', '<h3>Via Laravel Installer</h3>\r\n\r\n<p>First, download the <a href="http://laravel.com/laravel.phar">Laravel installer PHAR archive</a>. For convenience, rename the file to <code>laravel</code> and move it to <code>/usr/local/bin</code>. Once installed, the simple <code>laravel new</code> command will create a fresh Laravel installation in the directory you specify. For instance, <code>laravel new blog</code> would create a directory named <code>blog</code> containing a fresh Laravel installation with all dependencies installed. This method of installation is much faster than installing via Composer.</p>\r\n\r\n<p><img alt="" height="291" src="http://www.sourceguardian.com/clients/c4ca4238a0b923820dcc509a6f75849b/image/laravel.jpg" width="466" /></p>\r\n', 'Via Laravel Installer\r\n\r\nFirst, download the Laravel installer PHAR archive. For convenience, rename the file to laravel and move it to /usr/local/bin. Once installed, the simple laravel new command will create a fresh Laravel installation in the directory you specify. For instance, laravel new blog would create a directory named blog containing a fresh Laravel installation with all dependencies installed. This method of installation is much faster than installing via Composer.', NULL, 1, '2014-06-23 20:11:05', '2014-06-23 20:11:05', NULL, 'publish', NULL),
(21, 'Recruiters Developer ', '<p>Inventore veritatis et quasi architectos beatae vitae dicta sunt explicabo. Nemo enims sadips ipsums un</p>\r\n', 'Inventore veritatis et quasi architectos beatae vitae dicta sunt explicabo. Nemo enims sadips ipsums un', NULL, 1, '2014-06-23 21:28:55', '2014-06-23 21:28:55', NULL, 'publish', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_category`
--

CREATE TABLE IF NOT EXISTS `blog_post_category` (
  `post_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_post_category`
--

INSERT INTO `blog_post_category` (`post_id`, `category_id`) VALUES
(15, 1),
(18, 2),
(19, 1),
(20, 1),
(21, 7);

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

--
-- Dumping data for table `categories_articles`
--

INSERT INTO `categories_articles` (`categories_id`, `articles_id`) VALUES
(2, 21),
(9, 25);

-- --------------------------------------------------------

--
-- Table structure for table `categories_moduledata`
--

CREATE TABLE IF NOT EXISTS `categories_moduledata` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=36 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `link`, `icon`, `class`, `parent`, `order`, `status`, `created_at`, `updated_at`, `page_id`, `lang_id`) VALUES
(10, 'Nokia', '', '', NULL, 30, 12, 'unpublish', '2014-06-19 08:38:47', '2014-06-19 01:38:47', 1, 'en'),
(12, 'About', 'about', 'icon-folder-open', NULL, 0, 1, 'publish', '2014-06-05 10:31:08', '2014-06-05 10:31:08', 2, 'en'),
(25, 'Features', 'features', 'icon-file-text-alt', NULL, 0, 2, 'publish', '2014-06-05 10:31:08', '2014-06-05 10:31:08', 10, 'en'),
(26, 'Services', 'service', 'icon-random', NULL, 0, 3, 'publish', '2014-06-05 10:31:09', '2014-06-05 10:31:09', 3, 'en'),
(27, 'Support', 'support-packages', 'icon-headphones', NULL, 0, 4, 'publish', '2014-06-05 10:31:09', '2014-06-05 10:31:09', 11, 'en'),
(28, 'Request Demo', 'request-demo', 'icon-time', NULL, 0, 5, 'publish', '2014-06-05 10:31:10', '2014-06-05 10:31:10', 12, 'en'),
(29, 'Contact', 'contact-us', 'icon-envelope', NULL, 0, 7, 'publish', '2014-06-05 10:31:10', '2014-06-05 10:31:10', 4, 'en'),
(30, 'Blog', 'blog', 'icon-meh', NULL, 0, 6, 'publish', '2014-06-20 01:53:26', '2014-06-19 18:53:26', 14, 'en'),
(31, 'منزل', 'home', 'icon-home active', NULL, 0, 9, 'publish', '2014-06-20 02:10:04', '2014-06-19 19:10:04', 1, 'sa'),
(32, 'حول', 'about', 'icon-folder-open', NULL, 0, 1, 'publish', '2014-06-05 10:34:43', '2014-06-05 10:34:43', 2, 'sa'),
(33, 'Home', NULL, 'icon-home', NULL, 0, 0, 'publish', '2014-06-14 07:52:56', '2014-06-14 07:52:56', 1, 'en'),
(34, 'Tutorial', NULL, 'icon-book', NULL, 0, 6, 'unpublish', '2014-06-20 01:54:34', '2014-06-19 18:54:34', 13, 'en'),
(35, 'اتصال', NULL, 'icon-envelope', NULL, 0, 0, 'publish', '2014-06-19 19:08:30', '2014-06-19 19:08:30', 4, 'sa');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(12, 'Link to Request Demo', 'publish', 'content', 'mod_RequestDemo', '2014-06-20 01:28:06', '2014-06-19 18:28:06', 3, NULL, 'fontawesome-beaker'),
(13, 'Tutorial', 'publish', 'content', 'mod_Tutorial', '2014-06-09 19:06:24', '2014-06-09 19:06:24', 4, NULL, 'fontawesome-film'),
(14, 'Request Demo', 'publish', 'content', 'mod_SubmitRequestDemo', '2014-06-20 01:27:45', '2014-06-19 18:27:45', 0, NULL, '');

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
(12, ' Full Control ', '', 'Recruitment Software with a difference', '', NULL, NULL, 1, 'en', '1', '2014-06-19 08:21:42', '2014-06-19 01:21:42', 0, 'publish', NULL, 'http://completermp.com/marketing/', '_self'),
(28, 'Security', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', NULL, NULL, 1, 'en', '1', '2014-06-07 09:16:56', '2014-06-07 02:16:56', 0, 'publish', NULL, '', '_self'),
(29, 'Security', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', NULL, NULL, 1, 'en', '2', '2014-06-07 02:19:15', '2014-06-07 02:19:15', 0, 'publish', NULL, '', '_self'),
(30, 'Reliability', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', NULL, NULL, 1, 'en', '2', '2014-06-07 02:20:07', '2014-06-07 02:20:07', 0, 'publish', NULL, '', '_self'),
(31, 'Accuracy', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', NULL, NULL, 1, 'en', '2', '2014-06-07 02:21:13', '2014-06-07 02:21:13', 0, 'publish', NULL, '', '_self'),
(32, 'Efficiency', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', NULL, NULL, 1, 'en', '2', '2014-06-07 02:21:50', '2014-06-07 02:21:50', 0, 'publish', NULL, '', '_self'),
(33, 'Productivity', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', NULL, NULL, 1, 'en', '2', '2014-06-07 02:22:29', '2014-06-07 02:22:29', 0, 'publish', NULL, '', '_self'),
(34, 'Convenience', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', NULL, NULL, 1, 'en', '2', '2014-06-07 02:23:11', '2014-06-07 02:23:11', 0, 'publish', NULL, '', '_self'),
(35, 'Extendable', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', NULL, NULL, 1, 'en', '2', '2014-06-07 02:23:39', '2014-06-07 02:23:39', 0, 'publish', NULL, '', '_self'),
(36, 'Simplicity', '', 'Employees can access information instantly at any time and from any place that has access to the network.', '', NULL, NULL, 1, 'en', '2', '2014-06-07 02:24:11', '2014-06-07 02:24:11', 0, 'publish', NULL, '', '_self'),
(37, 'أمن', '', 'يمكن للموظفين الوصول إلى المعلومات على الفور في أي وقت ومن أي مكان لديه وصول إلى الشبكة.', '', NULL, NULL, 1, 'sa', '2', '2014-06-07 10:41:35', '2014-06-07 03:41:35', 0, 'publish', NULL, '', '_self'),
(38, 'Recruitment software with a difference', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n\r\n					<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client''s don''t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n\r\n\r\n					<div style="height: 30px;" class="gap">\r\n					</div>\r\n				</div>\r\n\r\n				<div class="row-item col-1_2">\r\n					<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n					<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n					<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n					<h3 class="lined margin-20">Some ROI benefits</h3>\r\n					<div class="element-wrap">					\r\n						<div data-value="90" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">Increase Data Accuracy to upto 90%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line" style="width: 90%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="65" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">WordPress 65%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-4" style="width: 65%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="78" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">Graphic Design 78%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-3" style="width: 78%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="86" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">HTML/CSS 86%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-2" style="width: 86%;"></div>\r\n							</div>\r\n						</div>\r\n						\r\n						\r\n					</div>\r\n					<div style="height: 30px;" class="gap">\r\n					</div>\r\n				</div>', '', '', NULL, NULL, 1, 'en', '9', '2014-06-07 10:54:58', '2014-06-07 03:54:58', 0, 'publish', NULL, '', '_self'),
(39, 'برامج التوظيف مع الفارق', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n\r\n					<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client''s don''t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n\r\n\r\n					<div style="height: 30px;" class="gap">\r\n					</div>\r\n				</div>\r\n\r\n				<div class="row-item col-1_2">\r\n					<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n					<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n					<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n					<h3 class="lined margin-20">Some ROI benefits</h3>\r\n					<div class="element-wrap">					\r\n						<div data-value="90" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">Increase Data Accuracy to upto 90%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line" style="width: 90%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="65" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">WordPress 65%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-4" style="width: 65%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="78" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">Graphic Design 78%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-3" style="width: 78%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="86" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">HTML/CSS 86%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-2" style="width: 86%;"></div>\r\n							</div>\r\n						</div>\r\n						\r\n						\r\n					</div>\r\n					<div style="height: 30px;" class="gap">\r\n					</div>\r\n				</div>', '', '', NULL, NULL, 1, 'sa', '9', '2014-06-07 03:55:54', '2014-06-07 03:55:54', 0, 'publish', NULL, '', '_self'),
(40, 'ICEAT', '', '', '', NULL, NULL, 1, 'en', '11', '2014-06-09 01:52:46', '2014-06-08 18:52:46', 0, 'publish', NULL, '', '_self'),
(41, 'QEHC', '', '', '', NULL, NULL, 1, 'en', '11', '2014-06-08 18:43:27', '2014-06-08 18:43:27', 0, 'publish', NULL, '', '_self'),
(42, 'Duis Autem Vel Eum', '', 'Adipisci velit, sed quia non numquam eius modi tempora incidunt, ut labore', 'icon-css3 medium colored', NULL, NULL, 1, 'en', '3', '2014-06-19 03:57:29', '2014-06-18 20:57:29', 0, 'publish', NULL, '', '_self'),
(43, 'Qui Blandit Praesent', '', 'Vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil ', 'icon-magic medium colored', NULL, NULL, 1, 'en', '3', '2014-06-19 03:57:29', '2014-06-18 20:57:29', 0, 'publish', NULL, '', '_self'),
(44, 'Tation Dipiscing Elit', '', 'Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium ', 'icon-bullhorn medium colored', NULL, NULL, 1, 'en', '3', '2014-06-19 03:57:29', '2014-06-18 20:57:29', 0, 'publish', NULL, '', '_self'),
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
(102, 'أمن', '', 'برامج التوظيف مع الفارق', '', NULL, NULL, 1, 'sa', '1', '2014-06-20 10:15:16', '2014-06-20 03:15:16', 0, 'publish', NULL, '', '_self');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `link`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Home', 'home', '2014-06-19 08:58:01', '2014-06-19 01:58:01', 'publish'),
(2, 'About us', 'about', '2014-06-03 07:28:27', '2014-06-03 07:28:27', 'publish'),
(3, 'Our Services ', 'service', '2014-06-03 07:28:27', '2014-06-03 07:28:27', 'publish'),
(4, 'Contact Us', 'contact-us', '2014-06-03 07:28:31', '2014-06-03 07:28:31', 'publish'),
(10, 'RMP Features ', 'features', '2014-06-03 07:28:30', '2014-06-03 07:28:30', 'publish'),
(11, 'Support Packages ', 'support-packages', '2014-06-03 07:28:30', '2014-06-03 07:28:30', 'publish'),
(12, 'Request Demo', 'request-demo', '2014-06-03 07:28:29', '2014-06-03 07:28:29', 'publish'),
(13, 'Tutorial', 'tutorial', '2014-06-19 07:48:31', '2014-06-19 00:48:31', 'publish'),
(14, 'Blog', 'blog', '2014-06-19 18:53:11', '2014-06-19 18:53:11', 'publish'),
(15, 'eeeee', 'eeeeeeeeee', '2014-06-20 18:41:17', '2014-06-20 18:41:17', 'publish'),
(16, 'r', 'a', '2014-06-20 18:41:22', '2014-06-20 18:41:22', 'publish'),
(17, 'rrrrrrrrrrrr', 'rrrrrrrrrrrr', '2014-06-20 18:41:26', '2014-06-20 18:41:26', 'publish');

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
(1, 1, NULL, '2014-06-19 01:58:01', '2014-06-19 01:58:01'),
(1, 2, NULL, '2014-06-19 01:58:01', '2014-06-19 01:58:01'),
(1, 3, NULL, '2014-06-19 01:58:01', '2014-06-19 01:58:01'),
(1, 11, NULL, '2014-06-19 01:58:01', '2014-06-19 01:58:01'),
(1, 12, NULL, '2014-06-19 01:58:01', '2014-06-19 01:58:01'),
(2, 4, NULL, '2014-06-08 19:49:28', '2014-06-08 19:49:28'),
(2, 6, NULL, '2014-06-08 19:49:28', '2014-06-08 19:49:28'),
(2, 9, NULL, '2014-06-08 19:49:28', '2014-06-08 19:49:28'),
(3, 6, NULL, '2014-06-08 20:06:03', '2014-06-08 20:06:03'),
(3, 8, NULL, '2014-06-08 20:06:03', '2014-06-08 20:06:03'),
(4, 5, NULL, '2014-06-08 20:27:00', '2014-06-08 20:27:00'),
(4, 6, NULL, '2014-06-08 20:27:00', '2014-06-08 20:27:00'),
(4, 10, NULL, '2014-06-08 20:27:00', '2014-06-08 20:27:00'),
(10, 6, NULL, '2014-06-18 23:51:08', '2014-06-18 23:51:08'),
(11, 6, NULL, '2014-06-08 20:14:23', '2014-06-08 20:14:23'),
(11, 7, NULL, '2014-06-08 20:14:23', '2014-06-08 20:14:23'),
(12, 6, NULL, '2014-06-10 04:16:04', '2014-06-10 04:16:04'),
(12, 14, NULL, '2014-06-10 04:16:04', '2014-06-10 04:16:04'),
(13, 6, NULL, '2014-06-19 00:48:31', '2014-06-19 00:48:31'),
(13, 13, NULL, '2014-06-19 00:48:31', '2014-06-19 00:48:31');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=46 ;

--
-- Dumping data for table `request_demo`
--

INSERT INTO `request_demo` (`id`, `name`, `company`, `subject`, `text`, `created_at`, `updated_at`, `status`, `code`, `email`) VALUES
(41, 'ddđ', 'd', 'aaaaaa', 'aaaaaaaa', '2014-06-19 23:19:36', '2014-06-19 23:19:36', 'unpublish', NULL, 'add@s.com'),
(42, 'ddđ', 'd', 'aaaaaa', 'aaaaaaaa', '2014-06-19 23:28:00', '2014-06-19 23:28:00', 'unpublish', NULL, 'add@s.com'),
(43, 'ddđ', 'cntt', 'sdfk', 'ssldkfl;f\r\n', '2014-06-20 01:35:43', '2014-06-20 01:35:43', 'unpublish', NULL, 'cn@gmail.copm'),
(44, 'ddđ', 'cntt', 'sdfk', 'ssldkfl;f\r\n', '2014-06-21 01:46:07', '2014-06-20 18:46:07', 'publish', NULL, 'cn@gmail.copm'),
(45, 'hello', 'sjdfklj', 'lsdjkf', 'jkl\r\n', '2014-06-22 18:43:26', '2014-06-22 18:43:26', 'unpublish', NULL, 'lksdfjk@s.com');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`name`, `description`, `value`, `created_at`, `updated_at`) VALUES
('address', 'Address', 'Columbia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('business_hours', 'Businness Hours', '<br> Monday-Friday: 9: <sup>00</sup> — 18: <sup>00</sup> <br> Saturday: 10: <sup>00</sup> — 17: <sup>00</sup> <br> Sunday: closed', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('email_contact', 'E-mail', 'info@completermp.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('email_encryption', 'Email Encryption', 'tls', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('email_host', 'Email Host', 'gator3228.hostgator.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('email_password', 'Email Password', 'Xqi1llvM:nx8', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('email_port', 'Email Port', '587', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('email_username', 'Email Username', 'abulayla', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=160 ;

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
(124, '06-10-2014_test1.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-10 00:09:21', '2014-06-23 09:10:59', NULL, NULL, NULL, NULL, NULL, NULL),
(125, '06-10-2014_test1.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-10 00:10:58', '2014-06-23 09:11:03', NULL, NULL, NULL, NULL, NULL, NULL),
(126, '06-10-2014_microsoft-linux.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-10 00:11:12', '2014-06-23 09:11:07', NULL, NULL, NULL, NULL, NULL, NULL),
(127, '06-10-2014_microsoft-linux.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-10 00:12:07', '2014-06-23 09:11:11', NULL, NULL, NULL, NULL, NULL, 'image'),
(128, '06-10-2014_cal.gif', 'asset/share/uploads/images', 'image/gif', NULL, '2014-06-10 04:34:51', '2014-06-10 04:34:51', NULL, NULL, 82, NULL, NULL, 'image'),
(141, '06-14-2014_Portrait_Gandhi.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-14 00:29:13', '2014-06-14 00:29:13', NULL, NULL, 101, NULL, NULL, 'image'),
(144, '06-19-2014_view_applicant.png', 'asset/share/uploads/images', 'image/png', NULL, '2014-06-18 20:21:22', '2014-06-18 20:21:22', NULL, NULL, 44, NULL, NULL, 'image'),
(145, '06-19-2014_view_Advert.png', 'asset/share/uploads/images', 'image/png', NULL, '2014-06-18 20:34:27', '2014-06-18 20:34:27', NULL, NULL, 43, NULL, NULL, 'image'),
(146, '06-19-2014_view_application_applicant.png', 'asset/share/uploads/images', 'image/png', NULL, '2014-06-18 20:34:27', '2014-06-18 20:34:27', NULL, NULL, 43, NULL, NULL, 'image'),
(147, '06-19-2014_add_employee.png', 'asset/share/uploads/images', 'image/png', NULL, '2014-06-18 20:50:17', '2014-06-18 20:50:17', NULL, NULL, 42, NULL, NULL, 'image'),
(148, '06-19-2014_backend.png', 'asset/share/uploads/images', 'image/png', NULL, '2014-06-18 20:50:17', '2014-06-18 20:50:17', NULL, NULL, 42, NULL, NULL, 'image'),
(149, '06-19-2014_profile.png', 'asset/share/uploads/images', 'image/png', NULL, '2014-06-18 20:50:17', '2014-06-18 20:50:17', NULL, NULL, 42, NULL, NULL, 'image'),
(150, '06-19-2014_view_application_applicant.png', 'asset/share/uploads/images', 'image/png', NULL, NULL, '2014-06-19 04:35:59', NULL, NULL, 44, NULL, NULL, 'image'),
(151, '06-19-2014_05-29-2014_Slider-14.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-19 01:21:43', '2014-06-19 01:21:43', NULL, NULL, 12, NULL, NULL, 'image'),
(152, '06-20-2014_helen_m.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-19 18:42:08', '2014-06-19 18:42:08', NULL, NULL, NULL, NULL, NULL, 'image'),
(153, '06-20-2014_Slider-1.jpg', 'asset/share/uploads/images', 'image/jpeg', NULL, '2014-06-20 03:15:08', '2014-06-20 03:15:08', NULL, NULL, 102, NULL, NULL, 'image'),
(154, '06-23-2014_sfrTeam_43.png', 'asset/share/uploads/images/blog', 'image/png', NULL, '2014-06-23 02:20:17', '2014-06-23 10:13:26', NULL, NULL, NULL, NULL, NULL, 'image'),
(155, '06-23-2014_sfrTeam_46.png', 'asset/share/uploads/images/blog', 'image/png', NULL, '2014-06-23 02:55:29', '2014-06-23 10:13:28', NULL, NULL, NULL, NULL, NULL, 'image'),
(156, '06-23-2014_sfrTeam_46.png', 'asset/share/uploads/images/blog', 'image/png', NULL, '2014-06-23 02:57:31', '2014-06-23 10:13:42', NULL, NULL, NULL, NULL, NULL, 'image'),
(157, '06-23-2014_sfrTeam_20.png', 'asset/share/uploads/images/blog', 'image/png', NULL, '2014-06-23 03:12:04', '2014-06-23 10:13:45', NULL, NULL, NULL, NULL, NULL, 'image'),
(158, '06-23-2014_sfrTeam_36.png', 'asset/share/uploads/images/blog', 'image/png', NULL, '2014-06-23 03:44:33', '2014-06-23 03:44:33', NULL, NULL, NULL, NULL, NULL, 'image'),
(159, '06-24-2014_sfrTeam_43.png', 'asset/share/uploads/images/blog', 'image/png', NULL, '2014-06-23 19:07:55', '2014-06-23 19:07:55', NULL, NULL, NULL, NULL, NULL, 'image');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
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
(1, 'admin', '$2y$10$a4dduFKi0PKnoXeN1vEyEuLSU55a3LkOszloiBBK.8EcJYue7IVZ2', '', '5555555555', 'So  to , co cp, wasintoneDC', 3, 12, '344', '', 'luong', 'truyen', '2014-06-03 03:38:27', '2014-06-20 04:30:28', 1, 'publish', 'TNHH MTV SFR SOFTWARE', 123),
(15, 'username  ', '$2y$10$JE.6zQG/PnD89wa4o1TmkO6MxXrJTF2Nj7sT7qwg48TKlYNhRiYwa', 'test@gmail.com', '012365478', 'VIETNAMESE', 1, NULL, NULL, 'female', 'TEST', 'MR', '2014-06-03 03:38:27', '2014-06-19 02:13:35', NULL, 'publish', 'fpt', 83),
(17, 'ltt.develop@gmail.com', '$2y$10$Yvf1fa3vASOskoIH5/afBORzJ4NQCekpwCh.vfxVxeSBiaptjaeYe', 'ltt.develop@gmail.com', '', '', 2, NULL, NULL, 'male', 'truyen', 'luong', '2014-06-04 02:24:35', '2014-06-19 18:42:08', NULL, 'publish', 'sony', 152),
(18, 'luong@email.com', '$2y$10$aD98BXA5k24yqW2xqtLfIOnFMsp76N9/w.XTL3qcG7suSgM9/PCoC', 'luong@email.com', '', '', 3, NULL, NULL, 'male', '', '', '2014-06-05 04:27:51', '2014-06-05 04:27:51', NULL, 'publish', NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
