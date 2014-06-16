<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStatusTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		DB::statement("CREATE TABLE `status` (
					  `id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
					  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
					  `description` text COLLATE utf8_unicode_ci,
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
		 Schema::drop("status");
	}

}
