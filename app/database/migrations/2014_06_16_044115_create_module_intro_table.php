<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateModuleIntroTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		DB:statement("
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
					) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
				");
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		 Schema::drop("module_intro");
	}

}
