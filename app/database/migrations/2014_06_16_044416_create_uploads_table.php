<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUploadsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		DB::statement("CREATE TABLE `uploads` (
					  `id` int(11) NOT NULL AUTO_INCREMENT,
					  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
					  `path` text COLLATE utf8_unicode_ci,
					  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
					  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
					  `created_at` timestamp NULL DEFAULT NULL,
					  `updated_at` timestamp NULL DEFAULT NULL,
					  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
					  `article_id` int(11) DEFAULT NULL,
					  `modData_id` int(11) DEFAULT NULL,
					  `modIntro_id` int(11) DEFAULT NULL,
					  `group_id` int(11) DEFAULT NULL,
					  `type_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
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
		 Schema::drop("uploads");
	}

}
