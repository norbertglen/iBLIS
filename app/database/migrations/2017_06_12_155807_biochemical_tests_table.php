<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class BiochemicalTestsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('bio_chemical_tests', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('name', 50);
			$table->integer('user_id')->unsigned();

			$table->timestamps();
			$table->softDeletes();

			$table->foreign('user_id')->references('id')->on('users');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::dropIfExists('bio_chemical_tests');
	}

}
