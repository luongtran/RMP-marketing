<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSettingTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		DB::statement("CREATE TABLE `setting` (
					  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
					  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
					  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
					  `created_at` timestamp NULL DEFAULT NULL,
					  `updated_at` timestamp NULL DEFAULT NULL,
					  PRIMARY KEY (`name`)
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
