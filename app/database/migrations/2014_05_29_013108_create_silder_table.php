<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSilderTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		DB::statement("CREATE TABLE `slider` (
            `id` int(11) NOT NULL AUTO_INCREMENT,
            `title` text COLLATE utf8_unicode_ci,
            `caption` text COLLATE utf8_unicode_ci,
            `link` text COLLATE utf8_unicode_ci,
            `image` text COLLATE utf8_unicode_ci,
            `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
            `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
            `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
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
		//
	}

}
