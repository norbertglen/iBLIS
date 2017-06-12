<?php

class CultureSensitivitySeeder extends DatabaseSeeder
{
    public function run()
    {
        //Seed for drugs
        $penicillin = Drug::create(array('name' => "PENICILLIN"));
        $ampicillin = Drug::create(array('name' => "AMPICILLIN"));
        $clindamycin = Drug::create(array('name' => "CLINDAMYCIN"));
        $tetracycline = Drug::create(array('name' => "TETRACYCLINE"));
        $ciprofloxacin = Drug::create(array('name' => "CIPROFLOXACIN"));
        $trimeth = Drug::create(array('name' => "TRIMETHOPRIM/SULFA"));
        $nitrofurantoin = Drug::create(array('name' => "NITROFURANTOIN"));
        $chloramphenicol = Drug::create(array('name' => "CHLORAMPHENICOL"));
        $cefazolin = Drug::create(array('name' => "CEFAZOLIN"));
        $gentamicin = Drug::create(array('name' => "GENTAMICIN"));
        $amoxicillin = Drug::create(array('name' => "AMOXICILLIN-CLAV"));
        $cephalothin = Drug::create(array('name' => "CEPHALOTHIN"));
        $cefuroxime = Drug::create(array('name' => "CEFUROXIME"));
        $cefotaxime = Drug::create(array('name' => "CEFOTAXIME"));
        $piperacillin = Drug::create(array('name' => "PIPERACILLIN"));
        $cefixime = Drug::create(array('name' => "CEFIXIME"));
        $ceftazidime = Drug::create(array('name' => "CEFTAZIDIME"));
        $cefriaxone = Drug::create(array('name' => "CEFRIAXONE"));
        $levofloxacin = Drug::create(array('name' => "LEVOFLOXACIN"));
        $merodenem = Drug::create(array('name' => "MERODENEM"));
        $tazo = Drug::create(array('name' => "PIPERACILLIN/TAZO"));
        $imedenem = Drug::create(array('name' => "IMEDENEM"));
        $oxacillin = Drug::create(array('name' => "OXACILLIN (CEFOXITIN)"));
        $erythromycin = Drug::create(array('name' => "ERYTHROMYCIN"));
        $vancomycin = Drug::create(array('name' => "VANCOMYCIN"));
        $cefoxitin = Drug::create(array('name' => "CEFOXITIN"));
        $tobramycin = Drug::create(array('name' => "TOBRAMYCIN"));
        $sulbactam = Drug::create(array('name' => "AMPICILLIN-SULBACTAM"));
        $sulfisoxazole = Drug::create(array('name' => "SULFISOXAZOLE"));
        $meropenem = Drug::create(array('name' => "MEROPENEM"));
        $nalidixic = Drug::create(array('name' => "NALIDIXIC"));
        $gentamycin = Drug::create(array('name' => "GENTAMYCIN"));
        $Azythromycin = Drug::create(array('name' => "AZYTHROMYCIN"));
        $Norfloxacin = Drug::create(array('name' => "NORFLOXACIN"));
        
        $this->command->info('Drugs table seeded');
        //Seed for organisims
        $staphylococci = Organism::create(array('name' => "Staphylococci species"));
        $gramnegative = Organism::create(array('name' => "Gram negative cocci"));
        $pseudomonas = Organism::create(array('name' => "Pseudomonas aeruginosa"));
        $enterococcus = Organism::create(array('name' => "Enterococcus species"));
        $pneumoniae = Organism::create(array('name' => "Streptococcus pneumoniae"));
        $streptococcus = Organism::create(array('name' => "Streptococcus species viridans group"));
        $beta = Organism::create(array('name' => "Beta-haemolytic streptococci"));
        $haemophilus = Organism::create(array('name' => "Haemophilus influenzae"));
        $naisseria = Organism::create(array('name' => "Naisseria menengitidis"));
        $salmonella = Organism::create(array('name' => "Salmonella species"));
        $shigella = Organism::create(array('name' => "Shigella"));
        $vibrio = Organism::create(array('name' => "Vibrio cholerae"));
        $grampositive = Organism::create(array('name' => "Gram positive cocci"));

        $this->command->info('Organisms table seeded');
        //  Seed for organism_drugs
        //  Staphylococci species
        DB::table('organism_drugs')->insert(
            array("organism_id" => $staphylococci->id, "drug_id" => $penicillin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $staphylococci->id, "drug_id" => $oxacillin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $staphylococci->id, "drug_id" => $cefoxitin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $staphylococci->id, "drug_id" => $erythromycin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $staphylococci->id, "drug_id" => $clindamycin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $staphylococci->id, "drug_id" => $trimeth->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $staphylococci->id, "drug_id" => $cefazolin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $staphylococci->id, "drug_id" => $cephalothin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $staphylococci->id, "drug_id" => $chloramphenicol->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $staphylococci->id, "drug_id" => $nitrofurantoin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $staphylococci->id, "drug_id" => $tetracycline->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $staphylococci->id, "drug_id" => $vancomycin->id));
        
        $this->command->info('Staphylococci species seeded');

        //  Gram negative cocci
        DB::table('organism_drugs')->insert(
            array("organism_id" => $gramnegative->id, "drug_id" => $ampicillin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $gramnegative->id, "drug_id" => $cefazolin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $gramnegative->id, "drug_id" => $gentamicin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $gramnegative->id, "drug_id" => $amoxicillin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $gramnegative->id, "drug_id" => $cephalothin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $gramnegative->id, "drug_id" => $cefuroxime->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $gramnegative->id, "drug_id" => $cefotaxime->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $gramnegative->id, "drug_id" => $ciprofloxacin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $gramnegative->id, "drug_id" => $trimeth->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $gramnegative->id, "drug_id" => $nitrofurantoin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $gramnegative->id, "drug_id" => $chloramphenicol->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $gramnegative->id, "drug_id" => $tetracycline->id));
        
        $this->command->info('Gram negative cocci seeded');

        //  Pseudomonas aeruginosa
        DB::table('organism_drugs')->insert(
            array("organism_id" => $pseudomonas->id, "drug_id" => $ceftazidime->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $pseudomonas->id, "drug_id" => $gentamicin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $pseudomonas->id, "drug_id" => $tobramycin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $pseudomonas->id, "drug_id" => $piperacillin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $pseudomonas->id, "drug_id" => $ciprofloxacin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $pseudomonas->id, "drug_id" => $merodenem->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $pseudomonas->id, "drug_id" => $tazo->id));

        $this->command->info('Pseudomonas aeruginosa seeded');

        //  Enterococcus species
        DB::table('organism_drugs')->insert(
            array("organism_id" => $enterococcus->id, "drug_id" => $ampicillin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $enterococcus->id, "drug_id" => $gentamicin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $enterococcus->id, "drug_id" => $nitrofurantoin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $enterococcus->id, "drug_id" => $ciprofloxacin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $enterococcus->id, "drug_id" => $tetracycline->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $enterococcus->id, "drug_id" => $chloramphenicol->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $enterococcus->id, "drug_id" => $vancomycin->id));
        
        $this->command->info('Enterococcus species seeded');

        //  Streptococcus pneumoniae
        DB::table('organism_drugs')->insert(
            array("organism_id" => $pneumoniae->id, "drug_id" => $penicillin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $pneumoniae->id, "drug_id" => $cefriaxone->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $pneumoniae->id, "drug_id" => $cefuroxime->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $pneumoniae->id, "drug_id" => $erythromycin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $pneumoniae->id, "drug_id" => $trimeth->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $pneumoniae->id, "drug_id" => $chloramphenicol->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $pneumoniae->id, "drug_id" => $tetracycline->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $pneumoniae->id, "drug_id" => $levofloxacin->id));
        
        $this->command->info('Streptococcus pneumoniae seeded');

        //  Streptococcus species viridans group
        DB::table('organism_drugs')->insert(
            array("organism_id" => $streptococcus->id, "drug_id" => $penicillin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $streptococcus->id, "drug_id" => $cefriaxone->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $streptococcus->id, "drug_id" => $vancomycin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $streptococcus->id, "drug_id" => $chloramphenicol->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $streptococcus->id, "drug_id" => $clindamycin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $streptococcus->id, "drug_id" => $erythromycin->id));
        
        $this->command->info('Streptococcus species viridans group seeded');

        //  Beta-haemolytic streptococci
        DB::table('organism_drugs')->insert(
            array("organism_id" => $beta->id, "drug_id" => $penicillin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $beta->id, "drug_id" => $erythromycin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $beta->id, "drug_id" => $clindamycin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $beta->id, "drug_id" => $cefriaxone->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $beta->id, "drug_id" => $chloramphenicol->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $beta->id, "drug_id" => $vancomycin->id));
        
        $this->command->info('Beta-haemolytic streptococci seeded');

        //  Haemophilus influenzae
        DB::table('organism_drugs')->insert(
            array("organism_id" => $haemophilus->id, "drug_id" => $ampicillin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $haemophilus->id, "drug_id" => $trimeth->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $haemophilus->id, "drug_id" => $sulbactam->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $haemophilus->id, "drug_id" => $cefriaxone->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $haemophilus->id, "drug_id" => $chloramphenicol->id));
        
        $this->command->info('Haemophilus influenzae seeded');

        //  Naisseria menengitidis
        DB::table('organism_drugs')->insert(
            array("organism_id" => $naisseria->id, "drug_id" => $penicillin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $naisseria->id, "drug_id" => $cefriaxone->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $naisseria->id, "drug_id" => $chloramphenicol->id));
        
        $this->command->info('Neisseria menengitidis seeded');

        //  Salmonella species
        DB::table('organism_drugs')->insert(
            array("organism_id" => $salmonella->id, "drug_id" => $ampicillin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $salmonella->id, "drug_id" => $ciprofloxacin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $salmonella->id, "drug_id" => $trimeth->id));
        
        $this->command->info('Salmonella species seeded');

        //  Shigella
        DB::table('organism_drugs')->insert(
            array("organism_id" => $shigella->id, "drug_id" => $ampicillin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $shigella->id, "drug_id" => $ciprofloxacin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $shigella->id, "drug_id" => $trimeth->id));
        
        $this->command->info('Shigella seeded');

        //  Vibrio cholerae
        DB::table('organism_drugs')->insert(
            array("organism_id" => $vibrio->id, "drug_id" => $ampicillin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $vibrio->id, "drug_id" => $ciprofloxacin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $vibrio->id, "drug_id" => $trimeth->id));
        
        $this->command->info('Vibrio cholerae seeded');

        //  Gram positive cocci
        DB::table('organism_drugs')->insert(
            array("organism_id" => $grampositive->id, "drug_id" => $cefoxitin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $grampositive->id, "drug_id" => $clindamycin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $grampositive->id, "drug_id" => $erythromycin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $grampositive->id, "drug_id" => $oxacillin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $grampositive->id, "drug_id" => $penicillin->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $grampositive->id, "drug_id" => $tetracycline->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $grampositive->id, "drug_id" => $trimeth->id));
        DB::table('organism_drugs')->insert(
            array("organism_id" => $grampositive->id, "drug_id" => $vancomycin->id));
        
        $this->command->info('Gram positive cocci seeded');

        //disc diffussion guideline
        DB::table('disc_diffusion_guidelines')->insert(
            array("resistant" => 12, "intermediate" => 17, "susceptible" => 18, "drug_id" => $chloramphenicol->id));
        DB::table('disc_diffusion_guidelines')->insert(
            array("resistant" => 10, "intermediate" => 15, "susceptible" => 16, "drug_id" => $trimeth->id));
        DB::table('disc_diffusion_guidelines')->insert(
            array("resistant" => 11, "intermediate" => 14, "susceptible" => 15, "drug_id" => $tetracycline->id));
        DB::table('disc_diffusion_guidelines')->insert(
            array("resistant" => 15, "intermediate" => 20, "susceptible" => 21, "drug_id" => $ciprofloxacin->id));
        DB::table('disc_diffusion_guidelines')->insert(
            array("resistant" => 13, "intermediate" => 16, "susceptible" => 17, "drug_id" => $ampicillin->id));
        DB::table('disc_diffusion_guidelines')->insert(
            array("resistant" => 12, "intermediate" => 16, "susceptible" => 17, "drug_id" =>$sulfisoxazole->id));
        DB::table('disc_diffusion_guidelines')->insert(
            array("resistant" => 12, "intermediate" => 14, "susceptible" => 15, "drug_id" => $gentamicin->id));
        DB::table('disc_diffusion_guidelines')->insert(
            array("resistant" => 13, "intermediate" => 17, "susceptible" => 18, "drug_id" => $amoxicillin->id));
        DB::table('disc_diffusion_guidelines')->insert(
            array("resistant" => 19, "intermediate" => 22, "susceptible" => 23, "drug_id" => $meropenem->id));
        DB::table('disc_diffusion_guidelines')->insert(
            array("resistant" => 15, "intermediate" => 21, "susceptible" => 22, "drug_id" => $erythromycin->id));
        DB::table('disc_diffusion_guidelines')->insert(
            array("resistant" => 12, "intermediate" => 17, "susceptible" => 18, "drug_id" => $chloramphenicol->id));
        DB::table('disc_diffusion_guidelines')->insert(
            array("resistant" => 13, "intermediate" => 18, "susceptible" => 19, "drug_id" => $nalidixic->id));
        DB::table('disc_diffusion_guidelines')->insert(
            array("resistant" => 12, "intermediate" => 14, "susceptible" => 15, "drug_id" => $gentamycin->id));
        DB::table('disc_diffusion_guidelines')->insert(
            array("resistant" => 12, "intermediate" => 13, "susceptible" => 14, "drug_id" => $Azythromycin->id));
        DB::table('disc_diffusion_guidelines')->insert(
            array("resistant" => 12, "intermediate" => 13, "susceptible" => 16, "drug_id" => $Norfloxacin->id));

        $this->command->info('Disc diffusion guidelines seeded');

          /* drug concentrations */
        $drug_concentrations_array = array(
          array("value" => "0.006"),
          array("value" => "0.12"),
          array("value" => "0.25"),
          array("value" => "0.5"),
          array("value" => "1"),
          array("value" => "2"),
          array("value" => "4"),
          array("value" => "8"),
          array("value" => "16"),
          array("value" => "32"),
          array("value" => "64"),
          array("value" => "128"),
          array("value" => "256"),
          array("value" => "1/2"),
          array("value" => "2/2"),
          array("value" => "8/2"),
          array("value" => "16/2"),
          array("value" => "32/2"),
          array("value" => "64/2"),
          array("value" => "128/2"),
          array("value" => "256/2"),
          array("value" => "2/1"),
          array("value" => "2/38"),
          array("value" => "1/19"),
          array("value" => "0.5/9.5"),
          array("value" => "1/4"),
          array("value" => "2/4"),
          array("value" => "8/4"),
          array("value" => "16/4"),
          array("value" => "32/4"),
          array("value" => "64/4"),
          array("value" => "128/4"),
          array("value" => "256/4"),
          array("value" => "1/8"),
          array("value" => "2/8"),
          array("value" => "4/16"),
        );

        foreach ($drug_concentrations_array as $drug_concentration)
        {
            DrugConcentration::create($drug_concentration);
        }
        $this->command->info('drug concentrations seeded');

    }
}