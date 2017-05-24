<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDiscDiffusionGuidelines extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('disc_diffusion_guidelines', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('drug_id')->unsigned();
			$table->integer('resistant')->unsigned();
			$table->integer('intermediate')->unsigned();
			$table->integer('susceptible')->unsigned();

			$table->timestamps();
			$table->softDeletes();
			
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
		Schema::drop('disc_diffusion_guidelines');
	}

}
