<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
	    DB::statement("CREATE TABLE `users` (
            `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
            `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
            `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
            `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
            `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
            `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
            `permission` int(11) NOT NULL,
            `country` int(11) DEFAULT NULL,
            `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
            `sex` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
            `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
            `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
            `created_at` datetime DEFAULT NULL,
            `updated_at` datetime DEFAULT NULL,
            `count_login` int(11) DEFAULT NULL,
            `status` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
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
		  Schema::drop("users");
	}

}
