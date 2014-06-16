<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateModuleTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		DB::statement("CREATE TABLE `module` (
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
		 Schema::drop("module");
	}

}
