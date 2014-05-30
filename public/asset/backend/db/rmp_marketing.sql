-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2014 at 06:37 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rmp_marketing`
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=114 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `permalink`, `content`, `created_at`, `updated_at`, `user_id`, `description`, `keyword`, `status`, `group_uploads`) VALUES
(1, 'Recruitment software with a difference', 'about', '<p>CompleteRMP recruitment software has been developed for the Internet right from the start, in both its delivery and the core features it offers. Embracing new technology and ideas has enabled us to develop the cutting edge web based recruitment solution - CompleteRMP.</p>\r\n\r\n					<p>CompleteRMP has been built from the ground up as an online recruitment solution, and is specifically designed for access via a standard web browser so our client''s don''t have to install third party software to access their recruitment software via the Internet. This leads to a much more efficient, stable and accessible system with significantly reduced cost.</p>\r\n\r\n\r\n					<div style="height: 30px;" class="gap">\r\n					</div>\r\n				</div>\r\n\r\n				<div class="row-item col-1_2">\r\n					<p>Each new client has brought fresh challenges and different methods of working so we have continued to develop a recruitment system that can easily be tailored to suit all. Developing a customisable system has been our key focus with even our support staff able to do the majority of system setup using in house tools. This removes the need for bespoke programming or development, resulting in a much lower setup cost and typical turnaround times of 2 - 3 weeks with an integrated website or 24 hours without. We also provide highly specific customisations and bespoke tools without incurring large costs.</p>\r\n					<p>Our online recruitment software has always been provided as a service and is charged on a usage basis so we understand the importance of achieving the highest levels of customer satisfaction.</p>\r\n					<p>We see ourselves more as your technology partner than the traditional role of recruitment software vendor and as such form closer working relationships with all of our clients.</p>\r\n					<h3 class="lined margin-20">Some ROI benefits</h3>\r\n					<div class="element-wrap">					\r\n						<div data-value="90" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">Increase Data Accuracy to upto 90%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line" style="width: 90%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="65" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">WordPress 65%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-4" style="width: 65%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="78" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">Graphic Design 78%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-3" style="width: 78%;"></div>\r\n							</div>\r\n						</div>\r\n						<div data-value="86" data-capacity="100" class="b-progress-bar">\r\n							<div class="progress-label">HTML/CSS 86%</div>\r\n							<div class="progress-scale">\r\n								<div class="progress-line m-2" style="width: 86%;"></div>\r\n							</div>\r\n						</div>\r\n						\r\n						\r\n					</div>\r\n					<div style="height: 30px;" class="gap">\r\n					</div>    </div>', '2014-05-27 01:21:51', '2014-05-29 03:04:07', 1, '', '', 'publish', NULL),
(2, 'Email is broken – how to fix it ', 'test', '<div class="social">\r\n<div id="bbc-st-toolbar-1" class="bbc-st bbc-st-slim bbc-st-colour bbc-st-light" style="font-size: 0.769231em;">\r\n<div class="bbc-st-wrapper bbc-st-rst bbc-st-v1">\r\n<ul class="bbc-st-buttons">\r\n<li class="bbc-st-share-cta"><a title="Share this page to other places" href="http://www.bbc.com/future/story/20140523-email-is-broken-how-to-fix-it">Share</a></li>\r\n<li class="bbc-st-facebook-cta"><a title="Share this page on Facebook" href="http://www.bbc.com/future/story/20140523-email-is-broken-how-to-fix-it">Facebook</a></li>\r\n<li class="bbc-st-twitter-cta"><a title="Share this page on Twitter" href="http://www.bbc.com/future/story/20140523-email-is-broken-how-to-fix-it">Twitter</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n<p><img src="http://ichef.bbci.co.uk/wwfeatures/624_351/images/live/p0/1z/nx/p01znx0v.jpg" alt="(Getty Images)" /></p>', '2014-05-27 01:24:13', '2014-05-27 20:32:42', 1, '', 's', 'publish', NULL),
(12, 'Nên bắt đầu bằng ngôn ngữ lập trình nào', '', '<p>Tr&ecirc;n thực tế, kh&ocirc;ng c&oacute; c&acirc;u trả lời n&agrave;o ch&iacute;nh x&aacute;c cho c&acirc;u hỏi &ldquo;Đ&acirc;u l&agrave; ng&ocirc;n ngữ lập tr&igrave;nh tốt nhất để bắt đầu?&rdquo;.</p>\r\n<p>Mỗi ng&ocirc;n ngữ đều c&oacute; điểm cộng v&agrave; điểm trừ, được s&aacute;ng tạo để thỏa m&atilde;n nhu cầu, mục đ&iacute;ch của người d&ugrave;ng như x&acirc;y dựng ứng dụng, website, hệ thống doanh nghiệp, v.v&hellip; D&ugrave; vậy, giới chuy&ecirc;n m&ocirc;n vẫn tiếp tục tranh luận t&igrave;m ra c&acirc;u trả lời cuối c&ugrave;ng. Dựa tr&ecirc;n c&aacute;c b&igrave;nh luận, trao đổi tr&ecirc;n ITworld.com, Quora, Stack Overflow v&agrave; Lifehacker, người d&ugrave;ng đ&atilde; đ&uacute;c kết 8 lựa chọn ng&ocirc;n ngữ lập tr&igrave;nh phổ biến nhất của c&aacute;c nh&agrave; ph&aacute;t triển trong sự nghiệp của họ.</p>\r\n<h4>Pascal</h4>\r\n<p>&nbsp;</p>\r\n<div class="image-autosize image-align-none"><a class="fancybox" href="http://vtcdn.com/sites/default/files/images/2014/5/25/img-1401014602-1.png" rel="page"><img src="http://vtcdn.com/sites/default/files/imagecache/med/images/2014/5/25/img-1401014602-1.png" alt="Ảnh" /></a>\r\n<div class="image-caption">Pascal - ng&ocirc;n ngữ ph&ugrave; hợp cho người mới bắt đầu.</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>D&ugrave; kh&ocirc;ng được sử dụng rộng r&atilde;i như C, Java v&agrave; Python, nhưng Pascal vẫn l&agrave; lựa chọn h&agrave;ng đầu để bước những bước đầu ti&ecirc;n v&agrave;o thế giới lập tr&igrave;nh. Ban đầu, Pascal được tạo ra để khuyến kh&iacute;ch việc thực h&agrave;nh lập tr&igrave;nh trong trường học, v&igrave; vậy, ng&ocirc;n ngữ n&agrave;y ho&agrave;n to&agrave;n ph&ugrave; hợp với cho người mới học. L&agrave; dạng ng&ocirc;n ngữ Procedural Language c&oacute; t&iacute;nh trật tự cao, Pascal sẽ đồng h&agrave;nh tốt hơn với những người th&iacute;ch tổ chức suy nghĩ theo hệ thống. Một b&igrave;nh luận tr&ecirc;n ITworld cho biết, Pascal c&oacute; sức mạnh của C trong một dạng thức dễ đọc hơn, nhưng bản chất của Pascal sẽ &eacute;p coder tổ chức lại suy nghĩ theo c&aacute;ch m&agrave; C kh&ocirc;ng hướng tới.</p>\r\n<h4>Javascript</h4>\r\n<p>&nbsp;</p>\r\n<div class="image-autosize image-align-none"><a class="fancybox" href="http://vtcdn.com/sites/default/files/images/2014/5/25/img-1401014602-2.png" rel="page"><img src="http://vtcdn.com/sites/default/files/imagecache/med/images/2014/5/25/img-1401014602-2.png" alt="Ảnh" /></a>\r\n<div class="image-caption">Javascript - đơn giản dễ gần.</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>Nhiều lập tr&igrave;nh vi&ecirc;n cho rằng n&ecirc;n bắt đầu coding với Javascript v&igrave; t&iacute;nh đơn giản ban đầu của n&oacute;. Javascript được nhận diện bằng c&uacute; ph&aacute;p dễ gần, dễ chiều, kh&ocirc;ng bắt lỗi chặt chẽ, v&agrave; cung cấp kh&aacute;i niệm cơ bản trong lập tr&igrave;nh. Sự phổ biến rộng r&atilde;i của Javascript hiện nay cũng được coi l&agrave; một điểm cộng.</p>\r\n<p>Bạn c&oacute; thể dễ d&agrave;ng bắt đầu với Javascript với Text Editor v&agrave; bất k&igrave; tr&igrave;nh duyệt web n&agrave;o.</p>\r\n<h4>Python</h4>\r\n<p>Python l&agrave; một lựa chọn phổ biến trong bộ m&ocirc;n lập tr&igrave;nh cơ bản. Nhiều người khẳng định t&iacute;nh sư phạm mạnh mẽ của Python, nhờ v&agrave;o c&uacute; ph&aacute;p đơn giản v&agrave; linh hoạt. Ch&iacute;nh điểm mạnh n&agrave;y đ&atilde; gi&uacute;p Python l&agrave; một trong những c&aacute;i t&ecirc;n đầu ti&ecirc;n trong danh s&aacute;ch những ng&ocirc;n ngữ lập tr&igrave;nh tốt nhất cho người mới học.</p>\r\n<p>&nbsp;</p>\r\n<div class="image-autosize image-align-none"><a class="fancybox" href="http://vtcdn.com/sites/default/files/images/2014/5/25/img-1401014602-3.png" rel="page"><img src="http://vtcdn.com/sites/default/files/imagecache/med/images/2014/5/25/img-1401014602-3.png" alt="Ảnh" /></a>\r\n<div class="image-caption">Python linh hoạt</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>Ng&ocirc;n ngữ n&agrave;y được đ&aacute;nh gi&aacute; l&agrave; cơ sở gốc để tạo ra những th&oacute;i quen lập tr&igrave;nh cần thiết cho lập tr&igrave;nh vi&ecirc;n, gi&uacute;p họ học lập tr&igrave;nh một c&aacute;ch nhanh ch&oacute;ng. N&oacute; mang lại lợi &iacute;ch của ng&ocirc;n ngữ OPP điển h&igrave;nh, m&agrave; kh&ocirc;ng cần tới sự phức tạp của c&aacute;c ng&ocirc;n ngữ tầm cao.</p>\r\n<h4>Java</h4>\r\n<p>&nbsp;</p>\r\n<div class="image-autosize image-align-none"><a class="fancybox" href="http://vtcdn.com/sites/default/files/images/2014/5/25/img-1401014602-4.jpg" rel="page"><img src="http://vtcdn.com/sites/default/files/imagecache/med/images/2014/5/25/img-1401014602-4.jpg" alt="Ảnh" /></a>\r\n<div class="image-caption">Java - nền tảng của c&ocirc;ng nghệ hiện nay</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>C&aacute;i t&ecirc;n Java đ&atilde; trở n&ecirc;n qu&aacute; quen thuộc trong giới một phần v&igrave; t&iacute;nh định hướng nghi&ecirc;m khắc của n&oacute;. Java dạy người mới c&aacute;ch viết code một c&aacute;ch chặt chẽ, dễ hiểu, dễ kiểm tra, dễ đọc, c&oacute; thể nh&uacute;ng v&agrave;o nhiều m&ocirc;i trường &ndash; điều m&agrave; mọi coder phải nghi&ecirc;m cẩn thực hiện. Java cũng được cọng điểm nhờ c&aacute;c th&ocirc;ng b&aacute;o Error chuẩn x&aacute;c, sửa lỗi nhanh v&agrave; một hệ sinh th&aacute;i gi&agrave;u t&agrave;i nguy&ecirc;n.</p>\r\n<h4>C#</h4>\r\n<p>Đ&acirc;y l&agrave; ng&ocirc;n ngữ của Microsoft, được so s&aacute;nh tương đồng với Java, v&igrave; thế, C# cũng được b&igrave;nh chọn v&igrave; những l&iacute; do tương tự, đặc biệt l&agrave; t&iacute;nh định hướng cao, gi&uacute;p việc học c&aacute;c ng&ocirc;n ngữ kh&aacute;c trở n&ecirc;n dễ hơn rất nhiều. Mặt kh&aacute;c, sự kết hợp của C# với .NET cũng gi&uacute;p C# l&agrave; một lựa chọn tốt cho người mới học.</p>\r\n<p>&nbsp;</p>\r\n<div class="image-autosize image-align-none"><a class="fancybox" href="http://vtcdn.com/sites/default/files/images/2014/5/25/img-1401014602-5.jpg" rel="page"><img src="http://vtcdn.com/sites/default/files/imagecache/med/images/2014/5/25/img-1401014602-5.jpg" alt="Ảnh" /></a>\r\n<div class="image-caption">C# c&oacute; t&iacute;nh định hướng cao, gi&uacute;p việc học c&aacute;c ng&ocirc;n ngữ kh&aacute;c trở n&ecirc;n dễ hơn</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>Với C#, lập tr&igrave;nh vi&ecirc;ndễ s&aacute;ng tạo những ứng dụng đơn giản với giao diện đồ họa dễ nh&igrave;n. Với c&aacute;c coder chuy&ecirc;n nghiệp, ứng dụng từ C# c&oacute; mặt tr&ecirc;n rất nhiều sản phẩm, từ l&ograve; vi s&oacute;ng tới server doanh nghiệp, kể cả Lego NXT.</p>\r\n<h4>C++</h4>\r\n<p>&nbsp;</p>\r\n<div class="image-autosize image-align-none"><a class="fancybox" href="http://vtcdn.com/sites/default/files/images/2014/5/25/img-1401014602-6.png" rel="page"><img src="http://vtcdn.com/sites/default/files/imagecache/med/images/2014/5/25/img-1401014602-6.png" alt="Ảnh" /></a>\r\n<div class="image-caption">C++ c&oacute; mức độ chuy&ecirc;n s&acirc;u đa dạng, C++ được ứng dụng rất nhiều nền tảng</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>C++ l&agrave; &ldquo;b&agrave;n ch&acirc;n sắt&rdquo; trong giới lập tr&igrave;nh. Với mức độ chuy&ecirc;n s&acirc;u đa dạng, C++ được ứng dụng rất nhiều nền tảng, trong đ&oacute; c&oacute; di động. Người mới học sẽ hiểu được c&aacute;c quy tr&igrave;nh về Pointer &ndash; c&ocirc;ng cụ mạnh mẽ nhất của C++ gi&uacute;p coder truy xuất t&aacute;c vụ trong bộ nhớ rất nhanh ch&oacute;ng; quản l&iacute; cấu tr&uacute;c bộ nhớ Stack &amp; Heap, quy tr&igrave;nh bi&ecirc;n soạn code v&agrave; lập tr&igrave;nh hệ thống. Với C++, người học sẽ đủ điều kiện để kh&aacute;m ph&aacute; những ng&ocirc;n ngữ kh&aacute;c dễ d&agrave;ng hơn.</p>', '2014-05-27 02:57:09', '2014-05-28 20:52:37', 1, '', '', 'unpublish', NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `order`, `status`, `created_at`, `updated_at`, `parent`, `permalink`) VALUES
(2, 'SERVICE', '', NULL, 'publish', NULL, '2014-05-29 18:56:52', 0, ''),
(9, 'PAGE', '', NULL, 'publish', NULL, '2014-05-29 18:56:28', 0, ''),
(11, 'Features', '', NULL, 'publish', NULL, '2014-05-28 20:51:46', 0, 'features'),
(19, 'MARKETING', NULL, NULL, 'publish', '2014-05-29 19:38:14', '2014-05-29 19:38:14', 2, '');

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
(2, 111),
(2, 112),
(9, 1),
(9, 12),
(9, 110),
(9, 112),
(11, 2),
(11, 113);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_uploads`
--

CREATE TABLE IF NOT EXISTS `group_uploads` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `upload_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `icon` text COLLATE utf8_unicode_ci,
  `parent` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `link`, `icon`, `parent`, `order`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Nokia', '', '', 21, 12, 'unpublish', '2014-05-30 04:31:32', '2014-05-29 21:31:32'),
(11, 'Samsung', '', '', 21, 12, 'unpublish', '2014-05-30 04:31:44', '2014-05-29 21:31:44'),
(12, 'About', '', 'icon-folder-open', 0, 1, 'publish', '2014-05-30 04:30:27', '2014-05-29 21:30:27'),
(16, 'Blackberry', '', '', 21, 12, 'unpublish', '2014-05-30 04:31:37', '2014-05-29 21:31:37'),
(20, 'Home', '', 'icon-home', 0, 0, 'publish', '2014-05-30 04:26:43', '2014-05-29 21:26:43'),
(21, 'Products', '', '', 0, 12, 'publish', '2014-05-30 04:31:26', '2014-05-29 21:31:26'),
(25, 'Features', '', 'icon-file-text-alt', 0, 2, 'publish', '2014-05-30 04:31:56', '2014-05-29 21:31:56'),
(26, 'Services', '', 'icon-random', 0, 3, 'publish', '2014-05-30 04:32:08', '2014-05-29 21:32:08'),
(27, 'Support', '', 'icon-headphones', 0, 4, 'publish', '2014-05-30 04:32:16', '2014-05-29 21:32:16'),
(28, 'Request Demo', '', 'icon-time', 0, 5, 'publish', '2014-05-30 04:32:24', '2014-05-29 21:32:24'),
(29, 'Contact', '', 'icon-envelope', 0, 7, 'publish', '2014-05-30 04:32:41', '2014-05-29 21:32:41'),
(30, 'Blog', '', '', 0, 6, 'publish', '2014-05-29 21:32:32', '2014-05-29 21:32:32');

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
('2014_05_23_024314_create_role_table', 1),
('2014_05_23_030403_create_users_table', 1),
('2014_05_23_031608_create_articles_table', 1),
('2014_05_23_032130_create_categories_table', 1),
('2014_05_23_032144_create_categories_articles_table', 1),
('2014_05_26_013253_create_uploads_table', 1),
('2014_05_26_013355_create_group_uploads_table', 1),
('2014_05_27_080719_create_status_table', 2),
('2014_05_29_013108_create_silder_table', 3),
('2014_05_29_101641_create_menu_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci,
  `caption` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=51 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `caption`, `link`, `image`, `created_at`, `updated_at`, `status`) VALUES
(36, 'Qui Blandit Praesent', 'Vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil', '', '114', '2014-05-29 08:38:04', '2014-05-29 01:38:04', 'publish'),
(37, 'Duis Autem Vel Eum', 'Adipisci velit, sed quia non numquam eius modi tempora incidunt, ut labore', '', '113', '2014-05-29 09:12:57', '2014-05-29 02:12:57', 'unpublish'),
(39, 'FULL CONTROLL', 'Recruitment Software with a difference', 'http://completermp.com/marketing/', '112', '2014-05-29 08:36:34', '2014-05-29 01:36:34', 'publish'),
(50, 'sssssssfhdf', 'sssssssss', '', '115', '2014-05-29 09:12:57', '2014-05-29 02:12:57', 'unpublish');

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
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=119 ;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `name`, `path`, `type`, `size`, `created_at`, `updated_at`, `status`, `article_id`) VALUES
(69, '05-28-2014_test1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', NULL, '2014-05-28 02:56:44', '2014-05-28 02:56:44', NULL, 102),
(74, '05-29-2014_manh.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', NULL, '2014-05-28 18:22:49', '2014-05-28 18:22:49', NULL, 106),
(98, '05-29-2014_test1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', NULL, '2014-05-28 23:19:04', '2014-05-28 23:19:04', NULL, 120),
(99, '05-29-2014_test1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', NULL, '2014-05-29 00:03:46', '2014-05-29 00:03:46', NULL, NULL),
(100, '05-29-2014_nokia_announced_meego_smart_phone_n9_1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', NULL, '2014-05-29 00:04:11', '2014-05-29 00:04:11', NULL, NULL),
(101, '05-29-2014_nokia_announced_meego_smart_phone_n9_1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', NULL, '2014-05-29 00:05:48', '2014-05-29 00:05:48', NULL, NULL),
(102, '05-29-2014_Micah.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', NULL, '2014-05-29 00:06:16', '2014-05-29 00:06:16', NULL, NULL),
(104, '05-29-2014_nokia_announced_meego_smart_phone_n9_1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', NULL, '2014-05-29 00:06:47', '2014-05-29 00:06:47', NULL, NULL),
(107, '05-29-2014_test1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', NULL, '2014-05-29 00:33:21', '2014-05-29 00:33:21', NULL, NULL),
(110, '05-29-2014_nokia_announced_meego_smart_phone_n9_1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', NULL, '2014-05-29 01:00:09', '2014-05-29 01:00:09', NULL, NULL),
(112, '05-29-2014_Slider-14.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', NULL, '2014-05-29 01:36:34', '2014-05-29 01:36:34', NULL, NULL),
(113, '05-29-2014_Slider-3.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', NULL, '2014-05-29 01:37:43', '2014-05-29 01:37:43', NULL, NULL),
(114, '05-29-2014_Slider-25.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', NULL, '2014-05-29 01:38:03', '2014-05-29 01:38:03', NULL, NULL),
(115, '05-29-2014_Smart-phone1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', NULL, '2014-05-29 02:02:10', '2014-05-29 02:02:10', NULL, NULL),
(116, '05-29-2014_nokia_announced_meego_smart_phone_n9_1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', NULL, '2014-05-29 02:43:48', '2014-05-29 02:43:48', NULL, 1),
(117, '05-29-2014_smart_phone_data_recovery.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', NULL, '2014-05-29 02:43:48', '2014-05-29 02:43:48', NULL, 1),
(118, '05-29-2014_Smart-phone1.jpg', 'public/asset/share/uploads/images/', 'image/jpeg', NULL, '2014-05-29 02:43:48', '2014-05-29 02:43:48', NULL, 1);

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
  `group_users` int(11) NOT NULL,
  `country` int(11) DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `count_login` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `phone`, `address`, `group_users`, `country`, `postcode`, `sex`, `first_name`, `last_name`, `created_at`, `updated_at`, `count_login`, `status`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '0989333', 'vietnam', 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
