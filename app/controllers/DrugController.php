<?php
use Illuminate\Database\QueryException;

/**
 * Contains drugs resources  
 * 
 */
class DrugController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		//List all drugs
		$drugs = Drug::orderBy('name', 'ASC')->get();
		//Load the view and pass the drugs
		return View::make('drug.index')->with('drugs',$drugs);
	}


	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */
	public function create()
	{
		//Create drug
		return View::make('drug.create');
	}


	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		//Validation
		$rules = array('name' => 'required|unique:drugs,name');
		$validator = Validator::make(Input::all(), $rules);
	
		//process
		if($validator->fails()){
			return Redirect::back()->withErrors($validator)->WithInput();
		}else{
			//store
			$drug = new Drug;
			$drug->name = Input::get('name');
			$drug->description = Input::get('description');
			try{
				$drug->save();
				$url = Session::get('SOURCE_URL');
            
            	return Redirect::to($url)
					->with('message', trans('messages.success-creating-drug')) ->with('activedrug', $drug ->id);
			}catch(QueryException $e){
				Log::error($e);
			}
		}
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//show a drug
		$drug = Drug::find($id);
		//show the view and pass the $drug to it
		return View::make('drug.show')->with('drug',$drug);
	}


	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//Get the drug
		$drug = Drug::find($id);

		//Open the Edit View and pass to it the $drug
		return View::make('drug.edit')->with('drug', $drug);
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//Validate
		$rules = array('name' => 'required');
		$validator = Validator::make(Input::all(), $rules);

		// process the login
		if ($validator->fails()) {
			return Redirect::back()->withErrors($validator)->withInput(Input::except('password'));
		} else {
			// Update
			$drug = Drug::find($id);
			$drug->name = Input::get('name');
			$drug->description = Input::get('description');
			$drug->save();

			// redirect
			$url = Session::get('SOURCE_URL');
            
            return Redirect::to($url)
				->with('message', trans('messages.success-updating-drug')) ->with('activetestcategory', $drug ->id);
		}
	}


	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}
	/**
	 * Remove the specified resource from storage (soft delete).
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function delete($id)
	{
		//Soft delete the drug
		$drug = Drug::find($id);

		/*$testCategoryInUse = TestType::where('test_category_id', '=', $id)->first();
		if (empty($testCategoryInUse)) {
		    // The test category is not in use
			$testcategory->delete();
		} else {
		    // The test category is in use
		    $url = Session::get('SOURCE_URL');
            
            return Redirect::to($url)
		    	->with('message', trans('messages.failure-test-category-in-use'));
		}*/
		// redirect
			$url = Session::get('SOURCE_URL');
            
            return Redirect::to($url)
			->with('message', trans('messages.success-deleting-drug'));
	}

	public function discDiffusionGuidelines() 
	{
		// return 'hello';
		$guidelines = DiscDiffusionGuideline::orderBy('id', 'ASC')->get();
		$drugs = Drug::orderBy('name', 'ASC')
						->select('drugs.id', 'drugs.name', 'disc_diffusion_guidelines.drug_id', 'disc_diffusion_guidelines.resistant', 'disc_diffusion_guidelines.intermediate', 'disc_diffusion_guidelines.susceptible')
						->leftJoin('disc_diffusion_guidelines', 'drugs.id', '=', 'disc_diffusion_guidelines.drug_id')
						->get();
        // dd($drugs);

		return View::make('drug.disc-diffusion-guidelines')
					->with('drugs', $drugs)
					->with('guidelines', $guidelines);
	}

	public function saveDiscDiffusionGuidelines() {
		    
			$drug_id = Input::get('drugId');
			$resistant = Input::get('resistant');
			$intermediate = Input::get('intermediate');
			$susceptible = Input::get('susceptible');

			//  Find if record exists
			$guidelines = DiscDiffusionGuideline::where('drug_id','=', $drug_id)->first();

			// return $guidelines;
			// update
			if ($guidelines && $guidelines->id) {
				$guidelines->resistant = $resistant;
				$guidelines->intermediate = $intermediate;
				$guidelines->susceptible = $susceptible;
				$guidelines->save();
				return $guidelines;
			} else {
				// create a new record
				$guidelines = new DiscDiffusionGuideline;
				$guidelines->drug_id = $drug_id;
				$guidelines->resistant = $resistant;
				$guidelines->intermediate = $intermediate;
				$guidelines->susceptible = $susceptible;
				$guidelines->save();

				return $guidelines;
			}
	}

	public function fetchDiscDiffusionGuideline() {
		$drug_id = Input::get('drugId');
		$observation = Input::get('observation');

		$guideline = DiscDiffusionGuideline::where('drug_id','=', $drug_id)->first();

		if (!$guideline) return 'No guideline found';

		if ($observation <= $guideline->resistant) {
			return 'R';
		} else if ($observation <= $guideline->intermediate) {
			return 'I';
		} else if ($observation >= $guideline->susceptible) {
			return 'S';
		} else {
			return 'Not Done';
		}
	}
                    
	public function fetchConcentrations() {
		$concentrations = DrugConcentration::orderBy('id', 'ASC')->get();

		// dd($concentrations);
		return View::make('drug.drug-concentrations')
					->with('concentrations', $concentrations);
	}

	public function storeConcentration() {
		$concentrations = new DrugConcentration;

		$concentrations->value = Input::get('concentration');
		$concentrations->save();

		// redirect
		$url = Session::get('SOURCE_URL');
		
		return Redirect::to('/drug/concentration')
				->with('message', trans('messages.success-creating-concentration'));
	}
}
