<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBlogPostsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		DB::statement("CREATE TABLE `blog_posts` (
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
		) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci");
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		 Schema::drop("blog_categories");
	}

}
