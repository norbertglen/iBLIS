<?php

class KBLISSeeder extends DatabaseSeeder
{
    public function run()
    {

         /* Users table */
        $usersData = array(
            array(
                "username" => "administrator", "password" => Hash::make("password"), "email" => "admin@kblis.org",
                "name" => "kBLIS Administrator", "designation" => "Administrator"
            ),
            array(
                "username" => "external", "password" => Hash::make("password"), "email" => "admin@kblis.org",
                "name" => "External System User", "designation" => "Administrator", "image" => "/i/users/user-2.jpg"
            ),
        );

        foreach ($usersData as $user)
        {
            $users[] = User::create($user);
        }
        $this->command->info('users seeded');

        /* Permissions table */
        $permissions = array(
            array("name" => "view_names", "display_name" => "Can view patient names"),
            array("name" => "manage_patients", "display_name" => "Can add patients"),

            array("name" => "receive_external_test", "display_name" => "Can receive test requests"),
            array("name" => "request_test", "display_name" => "Can request new test"),
            array("name" => "accept_test_specimen", "display_name" => "Can accept test specimen"),
            array("name" => "reject_test_specimen", "display_name" => "Can reject test specimen"),
            array("name" => "change_test_specimen", "display_name" => "Can change test specimen"),
            array("name" => "start_test", "display_name" => "Can start tests"),
            array("name" => "enter_test_results", "display_name" => "Can enter tests results"),
            array("name" => "edit_test_results", "display_name" => "Can edit test results"),
            array("name" => "verify_test_results", "display_name" => "Can verify test results"),
            array("name" => "send_results_to_external_system", "display_name" => "Can send test results to external systems"),
            array("name" => "refer_specimens", "display_name" => "Can refer specimens"),

            array("name" => "manage_users", "display_name" => "Can manage users"),
            array("name" => "manage_test_catalog", "display_name" => "Can manage test catalog"),
            array("name" => "manage_lab_configurations", "display_name" => "Can manage lab configurations"),
            array("name" => "view_reports", "display_name" => "Can view reports"),
            array("name" => "manage_inventory", "display_name" => "Can manage inventory"),
            array("name" => "request_topup", "display_name" => "Can request top-up"),
            array("name" => "manage_qc", "display_name" => "Can manage Quality Control")
        );
        foreach ($permissions as $permission) {
            Permission::create($permission);
        }
        $this->command->info('Permissions table seeded');

        /* Roles table */
        $roles = array(
            array("name" => "Superadmin"),
            array("name" => "Technologist"),
            array("name" => "Receptionist")
        );
        foreach ($roles as $role) {
            Role::create($role);
        }
        $this->command->info('Roles table seeded');

        $role1 = Role::find(1);
        $permissions = Permission::all();

        //Assign all permissions to role administrator
        foreach ($permissions as $permission) {
            $role1->attachPermission($permission);
        }
        //Assign role Administrator to administrators
        User::find(1)->attachRole($role1);
        //User::find(8)->attachRole($role1);
        //User::find(10)->attachRole($role1);


        $role2 = Role::find(2);//Technologist

        //Assign technologist's permissions to role technologist
        $role2->attachPermission(Permission::find(1));
        $role2->attachPermission(Permission::find(2));
        $role2->attachPermission(Permission::find(3));
        $role2->attachPermission(Permission::find(4));
        $role2->attachPermission(Permission::find(5));
        $role2->attachPermission(Permission::find(6));
        $role2->attachPermission(Permission::find(7));
        $role2->attachPermission(Permission::find(8));
        $role2->attachPermission(Permission::find(9));
        $role2->attachPermission(Permission::find(10));
        $role2->attachPermission(Permission::find(11));
        $role2->attachPermission(Permission::find(12));
        $role2->attachPermission(Permission::find(13));
        $role2->attachPermission(Permission::find(17));

        //Assign role Technologist to the other users
        User::find(2)->attachRole($role2);
       /* User::find(5)->attachRole($role2);
        User::find(12)->attachRole($role2);
        User::find(18)->attachRole($role2);
        User::find(23)->attachRole($role2);
        User::find(24)->attachRole($role2);
        User::find(26)->attachRole($role2);
        User::find(29)->attachRole($role2);
        User::find(43)->attachRole($role2);
        User::find(76)->attachRole($role2);
        User::find(136)->attachRole($role2);
        User::find(159)->attachRole($role2);
        User::find(161)->attachRole($role2);
        User::find(162)->attachRole($role2);
        User::find(163)->attachRole($role2);
        User::find(164)->attachRole($role2);*/

        /* Instruments table 
        $instrumentsData = array(
            "name" => "Celltac F Mek 8222",
            "description" => "Automatic analyzer with 22 parameters and WBC 5 part diff Hematology Analyzer",
            "driver_name" => "KBLIS\\Plugins\\CelltacFMachine",
            "ip" => "192.168.1.12",
            "hostname" => "HEMASERVER"
        );*/

        //$instrument = Instrument::create($instrumentsData);
        //$instrument->testTypes()->attach(array(176)); XXX ZEEK there is no test type can't attach due to foreign key constraint

       // $this->command->info('Instruments table seeded');

        /* Measure Types */
        $measureTypes = array(
            array("id" => "1", "name" => "Numeric Range"),
            array("id" => "2", "name" => "Alphanumeric Values"),
            array("id" => "3", "name" => "Autocomplete"),
            array("id" => "4", "name" => "Free Text")
        );

        foreach ($measureTypes as $measureType)
        {
            MeasureType::create($measureType);
        }
        $this->command->info('measure_types seeded');

        /* Specimen Status table */
        $specimen_statuses = array(
          array("id" => "1", "name" => "specimen-not-collected"),
          array("id" => "2", "name" => "specimen-accepted"),
          array("id" => "3", "name" => "specimen-rejected")
        );
        foreach ($specimen_statuses as $specimen_status)
        {
            SpecimenStatus::create($specimen_status);
        }
        $this->command->info('specimen_statuses seeded');

        /* Rejection Reasons table */
        $rejection_reasons_array = array(
          array("reason" => "Poorly labelled"),
          array("reason" => "Over saturation"),
          array("reason" => "Insufficient Sample"),
          array("reason" => "Scattered"),
          array("reason" => "Clotted Blood"),
          array("reason" => "Two layered spots"),
          array("reason" => "Serum rings"),
          array("reason" => "Scratched"),
          array("reason" => "Haemolysis"),
          array("reason" => "Spots that cannot elute"),
          array("reason" => "Leaking"),
          array("reason" => "Broken Sample Container"),
          array("reason" => "Mismatched sample and form labelling"),
          array("reason" => "Missing Labels on container and tracking form"),
          array("reason" => "Empty Container"),
          array("reason" => "Samples without tracking forms"),
          array("reason" => "Poor transport"),
          array("reason" => "Lipaemic"),
          array("reason" => "Wrong container/Anticoagulant"),
          array("reason" => "Request form without samples"),
          array("reason" => "Missing collection date on specimen / request form."),
          array("reason" => "Name and signature of requester missing"),
          array("reason" => "Mismatched information on request form and specimen container."),
          array("reason" => "Request form contaminated with specimen"),
          array("reason" => "Duplicate specimen received"),
          array("reason" => "Delay between specimen collection and arrival in the laboratory"),
          array("reason" => "Inappropriate specimen packing"),
          array("reason" => "Inappropriate specimen for the test"),
          array("reason" => "Inappropriate test for the clinical condition"),
          array("reason" => "No Label"),
          array("reason" => "No Sample in the Container"),
          array("reason" => "No Request Form"),
          array("reason" => "Missing Information Required"),
        );
        foreach ($rejection_reasons_array as $rejection_reason)
        {
            $rejection_reasons[] = RejectionReason::create($rejection_reason);
        }
        $this->command->info('rejection_reasons seeded');

         /* Test Phase table */
        $test_phases = array(
          array("id" => "1", "name" => "Pre-Analytical"),
          array("id" => "2", "name" => "Analytical"),
          array("id" => "3", "name" => "Post-Analytical")
        );
        foreach ($test_phases as $test_phase)
        {
            TestPhase::create($test_phase);
        }
        $this->command->info('test_phases seeded');

        /* Test Status table */
        $test_statuses = array(
          array("id" => "1","name" => "not-received","test_phase_id" => "1"),//Pre-Analytical
          array("id" => "2","name" => "pending","test_phase_id" => "1"),//Pre-Analytical
          array("id" => "3","name" => "started","test_phase_id" => "2"),//Analytical
          array("id" => "4","name" => "completed","test_phase_id" => "3"),//Post-Analytical
          array("id" => "5","name" => "verified","test_phase_id" => "3")//Post-Analytical
        );
        foreach ($test_statuses as $test_status)
        {
            TestStatus::create($test_status);
        }
        $this->command->info('test_statuses seeded');

        /* Specimen Sites table */
        $specimen_sites_array = array(
          array("name" => "Head"),
          array("name" => "Abdomen"),
          array("name" => "Lower back"),
          array("name" => "Shoulder"),
          array("name" => "Right upper arm"),
          array("name" => "Left upper arm"),
          array("name" => "Right elbow"),
          array("name" => "Left elbow"),
          array("name" => "Right wrist"),
          array("name" => "Left wrist"),
          array("name" => "Hip"),
          array("name" => "Right thigh"),
          array("name" => "Left thigh"),
          array("name" => "Right knee"),
          array("name" => "Left knee"),
          array("name" => "Right lower leg"),
          array("name" => "Left lower leg"),
          array("name" => "Right ankle"),
          array("name" => "Left ankle"),
          array("name" => "Right foot"),
          array("name" => "Left foot"),
          array("name" => "Other"),
        );
        foreach ($specimen_sites_array as $specimen_site)
        {
            $specimen_site[] = SpecimenCollectionSite::create($specimen_site);
        }
        $this->command->info('specimen_site seeded');

        /* Specimen Locations table */
        $specimen_locations_array = array(
          array("name" => "Accident & Emergency"),
          array("name" => "Burns unit"),
          array("name" => "Comprehensive care center"),
          array("name" => "Delivery Ward"),
          array("name" => "Dental unit"),
          array("name" => "Diabetic clinic"),
          array("name" => "ENT clinic"),
          array("name" => "Surgical ward"),
          array("name" => "Medical ward"),
          array("name" => "Female ward 1"),
          array("name" => "Female ward 2"),
          array("name" => "Female ward 3"),
          array("name" => "Female ward 4"),
          array("name" => "Female ward 5"),
          array("name" => "ICU"),
          array("name" => "Inpatient Ward"),
          array("name" => "Labour  ward"),
          array("name" => "Male ward 1"),
          array("name" => "Male ward 2"),
          array("name" => "Male ward 3"),
          array("name" => "Male ward 4"),
          array("name" => "Male ward 5"),
          array("name" => "Maternity"),
          array("name" => "MCH"),
          array("name" => "Outpatient clinic"),
          array("name" => "Paediatric ward"),
          array("name" => "Renal unit"),
          array("name" => "TB clinic"),
          array("name" => "Other"),
        );
        foreach ($specimen_locations_array as $specimen_location)
        {
            $specimen_location[] = SpecimenCollectionLocation::create($specimen_location);
        }
        $this->command->info('specimen_location seeded');

        /* Biochemical tests table */
        $user = DB::table('users')->where('username', 'administrator')->first();
        $biochemical_tests = array(
            array("name" => "Beta-glucuronidase test (MUG Test)", "user_id" => $user->id),
            array("name" => "Bacitracin Sensitivity Test:", "user_id" => $user->id),
            array("name" => "Bile solubility test", "user_id" => $user->id),
            array("name" => "CAMP Test:", "user_id" => $user->id),
            array("name" => "Catalase test:", "user_id" => $user->id),
            array("name" => "Citrate utilization test", "user_id" => $user->id),
            array("name" => "Coagulase test", "user_id" => $user->id),
            array("name" => "DNase test", "user_id" => $user->id),
            array("name" => "Indole test", "user_id" => $user->id),
            array("name" => "Litmus milk decolorization test: ", "user_id" => $user->id),
            array("name" => "Oxidase test", "user_id" => $user->id),
            array("name" => "Urease test", "user_id" => $user->id),
            array("name" => "Voges Proskauer/Methyl Red", "user_id" => $user->id),
            array("name" => "Triple Sugar Iron Agar Test", "user_id" => $user->id),
            array("name" => "Nitrate Reduction Test", "user_id" => $user->id),
        );
         foreach ($biochemical_tests as $biochemical_test)
        {
            BiochemicalTest::create($biochemical_test);
        }

        $this->command->info('biochemical tests seeded');
    }

}