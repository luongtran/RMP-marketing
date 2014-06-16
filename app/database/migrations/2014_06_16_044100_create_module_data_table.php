<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateModuleDataTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		DB:statement("
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
					) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
				");
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		 Schema::drop("module_data");
	}

}
