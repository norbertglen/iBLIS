<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddOrganismDrugDiscDiffusion extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('organism_drug_disc_diffusion', function(Blueprint $table)
        {
            //
            $table->increments('id');
            $table->integer('disc_diffusion_id')->unsigned();
            $table->integer('drug_id')->unsigned();
            $table->integer('organism_id')->unsigned();

            $table->foreign('drug_id')->references('id')->on('drugs');
            $table->foreign('disc_diffusion_id')->references('id')->on('disc_diffusion_guidelines');
            $table->foreign('organism_id')->references('id')->on('organisms');

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
        Schema::drop('organism_drug_disc_diffusion');
    }

}
