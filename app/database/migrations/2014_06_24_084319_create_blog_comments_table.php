<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBlogCommentsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		DB::statement("CREATE TABLE `blog_comments` (
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
		) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
					");
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		 Schema::drop("blog_comments");
	}

}
