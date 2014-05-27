<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateArticlesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
            DB::statement("CREATE TABLE `articles` (
                `id` int(11) NOT NULL AUTO_INCREMENT,
                `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                `content` longtext COLLATE utf8_unicode_ci NOT NULL,
                `created_at` datetime DEFAULT NULL,
                `updated_at` datetime DEFAULT NULL,
                `user_id` int(11) NOT NULL,
                `description` text COLLATE utf8_unicode_ci,
                `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,                
                `group_uploads` int(11) DEFAULT NULL,
                PRIMARY KEY (`id`)
              ) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci");
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop("articles");
	}

}
