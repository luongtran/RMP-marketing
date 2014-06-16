<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRequestDemoTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		DB::statement("CREATE TABLE `request_demo` (
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
		 Schema::drop("request_demo");
	}

}
