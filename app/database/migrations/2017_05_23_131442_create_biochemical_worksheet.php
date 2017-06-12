<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBiochemicalWorksheet extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('biochemical_weeksheet', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('user_id')->unsigned();
			$table->integer('test_id')->unsigned();
			$table->boolean('result');
			$table->integer('biochemical_id')->unsigned();
			$table->softDeletes();
			$table->timestamps();

			$table->foreign('user_id')->references('id')->on('users');
			$table->foreign('test_id')->references('id')->on('tests');
			// $table->foreign('biochemical_id')->references('id')->on('bio_chemical_tests');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('biochemical_weeksheet');
	}

}
