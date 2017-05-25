<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddMinimumDrugInhibitoryConcentrationTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('minimum_drug_inhibitory_concentrations', function(Blueprint $table)
		{
			$table->increments('id');
			$table->timestamps();

			$table->integer('user_id')->unsigned();
			$table->integer('test_id')->unsigned();
			$table->integer('organism_id')->unsigned();
			$table->integer('drug_id')->unsigned();

			$table->string('concentration', 10);
			$table->string('interpretation', 10);

			$table->softDeletes();

			// foreign keys
			$table->foreign('user_id')->references('id')->on('users');
			$table->foreign('test_id')->references('id')->on('tests');
			$table->foreign('organism_id')->references('id')->on('organisms');
			$table->foreign('drug_id')->references('id')->on('drugs');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('minimum_drug_inhibitory_concentrations');
	}

}
