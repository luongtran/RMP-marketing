<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCategoriesModuledataTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		DB:statement("
			CREATE TABLE `categories_moduledata` (
				  `categories_id` int(11) NOT NULL,
				  `moduleData_id` int(11) NOT NULL,
				  PRIMARY KEY (`categories_id`,`moduleData_id`)
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
		Schema::drop("categories_moduledata");
	}

}
