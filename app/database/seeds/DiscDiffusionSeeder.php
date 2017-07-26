<?php 
class DiscDiffusionSeeder extends DatabaseSeeder{

  public function run()
    {
       //Drugs finder
      $Amdinocillin = Drug::where('name', '=', 'Amdinocillin')->first();
      $Amikacin = Drug::where('name', '=', 'Amikacin')->first();
      $ampicillin = Drug::where('name', '=', 'AMPICILLIN')->first();
      $Augmentin = Drug::where('name', '=', 'Augmentin')->first();
      $cefriaxone = Drug::where('name', '=', 'CEFRIAXONE')->first();
      $chloramphenicol = Drug::where('name', '=', 'CHLORAMPHENICOL')->first();
      $ciprofloxacin = Drug::where('name', '=', 'CIPROFLOXACIN')->first();
      $erythromycin = Drug::where('name', '=', 'ERYTHROMYCIN')->first();
      $Kanamycin = Drug::where('name', '=', 'Kanamycin')->first();
      $levofloxacin = Drug::where('name', '=', 'LEVOFLOXACIN')->first();
      $nalidixic = Drug::where('name', '=', 'NALIDIXIC ACID')->first();
      $Neomycin = Drug::where('name', '=', 'Neomycin')->first();
      $Novobiocin = Drug::where('name', '=', 'Novobiocin')->first();
      $oxacillin = Drug::where('name', '=', 'OXACILLIN')->first();
      $penicillin = Drug::where('name', '=', 'PENICILLIN')->first();
      $Streptomycin = Drug::where('name', '=', 'Streptomycin')->first();
      $tetracycline = Drug::where('name', '=', 'TETRACYCLINE')->first();
      $trimeth = Drug::where('name', '=', 'TRIMETHOPRIM-sULPHAMETHOXAZOLE')->first();
      $vancomycin = Drug::where('name', '=', 'VANCOMYCIN')->first();

      // //disc diffussion guideline
      DB::table('disc_diffusion_guidelines')->insert(
          array("resistant" => 12, "intermediate" => 17, "susceptible" => 18, "drug_id" => $Amdinocillin->id));
      DB::table('disc_diffusion_guidelines')->insert(
          array("resistant" => 10, "intermediate" => 15, "susceptible" => 16, "drug_id" => $Amikacin->id));
      DB::table('disc_diffusion_guidelines')->insert(
          array("resistant" => 11, "intermediate" => 14, "susceptible" => 15, "drug_id" => $Augmentin->id));
      DB::table('disc_diffusion_guidelines')->insert(
          array("resistant" => 15, "intermediate" => 20, "susceptible" => 21, "drug_id" => $cefriaxone->id));
      DB::table('disc_diffusion_guidelines')->insert(
          array("resistant" => 13, "intermediate" => 16, "susceptible" => 17, "drug_id" => $ampicillin->id));
      DB::table('disc_diffusion_guidelines')->insert(
          array("resistant" => 12, "intermediate" => 16, "susceptible" => 17, "drug_id" =>$ciprofloxacin->id));
      DB::table('disc_diffusion_guidelines')->insert(
          array("resistant" => 12, "intermediate" => 14, "susceptible" => 15, "drug_id" => $Kanamycin->id));
      DB::table('disc_diffusion_guidelines')->insert(
          array("resistant" => 13, "intermediate" => 17, "susceptible" => 18, "drug_id" => $levofloxacin->id));
      DB::table('disc_diffusion_guidelines')->insert(
          array("resistant" => 19, "intermediate" => 22, "susceptible" => 23, "drug_id" => $Neomycin->id));
      DB::table('disc_diffusion_guidelines')->insert(
          array("resistant" => 15, "intermediate" => 21, "susceptible" => 22, "drug_id" => $erythromycin->id));
      DB::table('disc_diffusion_guidelines')->insert(
          array("resistant" => 12, "intermediate" => 17, "susceptible" => 18, "drug_id" => $chloramphenicol->id));
      DB::table('disc_diffusion_guidelines')->insert(
          array("resistant" => 13, "intermediate" => 18, "susceptible" => 19, "drug_id" => $nalidixic->id));
      DB::table('disc_diffusion_guidelines')->insert(
          array("resistant" => 12, "intermediate" => 14, "susceptible" => 15, "drug_id" => $Novobiocin->id));
      DB::table('disc_diffusion_guidelines')->insert(
          array("resistant" => 12, "intermediate" => 13, "susceptible" => 14, "drug_id" => $oxacillin->id));
      DB::table('disc_diffusion_guidelines')->insert(
          array("resistant" => 12, "intermediate" => 13, "susceptible" => 16, "drug_id" => $Streptomycin->id));
      DB::table('disc_diffusion_guidelines')->insert(
          array("resistant" => 12, "intermediate" => 13, "susceptible" => 16, "drug_id" => $tetracycline->id));
      DB::table('disc_diffusion_guidelines')->insert(
          array("resistant" => 12, "intermediate" => 13, "susceptible" => 16, "drug_id" => $trimeth->id));
      DB::table('disc_diffusion_guidelines')->insert(
          array("resistant" => 12, "intermediate" => 13, "susceptible" => 16, "drug_id" => $vancomycin->id));
      DB::table('disc_diffusion_guidelines')->insert(
          array("resistant" => 12, "intermediate" => 13, "susceptible" => 16, "drug_id" => $penicillin->id));

      $this->command->info('Disc diffusion guidelines seeded');
    }
}

?>