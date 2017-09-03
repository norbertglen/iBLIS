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
			$table->integer('resistant')->unsigned();
			$table->integer('intermediate')->unsigned();
			$table->integer('susceptible')->unsigned();

			$table->timestamps();
			$table->softDeletes();
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
