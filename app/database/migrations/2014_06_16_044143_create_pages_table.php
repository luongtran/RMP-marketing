<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePagesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		DB:statement("
					CREATE TABLE `pages` (
					  `id` int(11) NOT NULL AUTO_INCREMENT,
					  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
					  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
					  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
					  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
					  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
					  PRIMARY KEY (`id`)
					) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
				");
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		 Schema::drop("pages");
	}

}
