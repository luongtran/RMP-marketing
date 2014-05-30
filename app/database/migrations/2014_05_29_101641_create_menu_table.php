<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMenuTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		DB::statement("CREATE TABLE `menu` (
                `id` int(11) NOT NULL AUTO_INCREMENT,
                `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                `link` text COLLATE utf8_unicode_ci,
                `icon` text COLLATE utf8_unicode_ci,
                `class` text COLLATE utf8_unicode_ci,
                `parent` int(11) DEFAULT NULL,
                `order` int(11) DEFAULT NULL,
                `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
                `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
                PRIMARY KEY (`id`)
              ) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci");
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
