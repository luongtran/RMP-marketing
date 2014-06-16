<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLanguageTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
			DB:statement("
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
				) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
				");
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		 Schema::drop("language");
	}

}
