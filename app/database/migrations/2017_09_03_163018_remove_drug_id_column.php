<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class RemoveDrugIdColumn extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::table('disc_diffusion_guidelines', function(Blueprint $table)
		{
			$table->dropForeign('disc_diffusion_guidelines_drug_id_foreign');
			$table->dropColumn('drug_id');
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
			$table->integer('drug_id')->unsigned();
			$table->foreign('drug_id')->references('id')->on('drugs');
		});
	}

}
