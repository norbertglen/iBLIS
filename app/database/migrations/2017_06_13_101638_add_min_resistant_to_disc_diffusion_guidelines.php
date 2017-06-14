<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddMinResistantToDiscDiffusionGuidelines extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('disc_diffusion_guidelines', function(Blueprint $table)
		{
        $table->integer('min_resistant')->unsigned(); 
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::table('disc_diffusion_guidelines', function(Blueprint $table)
		{
			//
		});
	}

}
