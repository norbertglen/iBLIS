<?php
use Illuminate\Database\QueryException;

/**
 * Contains biochemical test resources  
 * 
 */
class BiochemicalController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
		//List all microcriticals
		$biochemical_tests = BiochemicalTest::orderBy('id', 'ASC')->get();
		//Load the view and pass the microcriticals
		return View::make('biochemicaltests.index')->with('biochemical', $biochemical_tests);
	}

	/**
	 * create a new biochemical test.
	 *
	 * @return Response
	 */
	 public function create()
	 {
		 return View::make('biochemicaltests.create');
	 }

	 /**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		//Validation
		$rules = array('name' => 'required|unique:bio_chemical_tests,name');
		$validator = Validator::make(Input::all(), $rules);

		//process
		if($validator->fails()){
			return Redirect::back()->withErrors($validator);
		}else{
			//store
			$biochemical_test = new BioChemicalTest;
			$biochemical_test->name = Input::get('name');
			$biochemical_test->user_id = Auth::user()->id;
			try{
				
				$biochemical_test->save();
				$url = Session::get('SOURCE_URL');
            
            	return Redirect::to($url)
					->with('message', trans('messages.success-creating-biochemical-test')) ->with('activeBiochemicalTest', $biochemical_test ->id);
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
		//show a biochemical test
		$biochemical_test = BiochemicalTest::find($id);
		//show the view and pass the $biochemical_test to it
		return View::make('biochemicaltests.show')->with('biochemical_test', $biochemical_test);
	}

		/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//Get the biochemical test
		$biochemical_test = BiochemicalTest::find($id);

		//Open the Edit View and pass to it the biochemical_test
		return View::make('biochemicaltests.edit')->with('biochemical_test', $biochemical_test);
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
			$biochemical_test = BiochemicalTest::find($id);
			$biochemical_test->name = Input::get('name');
			$biochemical_test->save();

			// redirect
			$url = Session::get('SOURCE_URL');
            
            return Redirect::to($url)
				->with('message', trans('messages.success-updating-biochemical-test')) ->with('activeBiochemicalTest', $biochemical_test ->id);
		}
	}

		/**
	 * Remove the specified resource from storage (soft delete).
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function delete($id)
	{
		//Soft delete the biochemical-test
		$biochemical_test = BiochemicalTest::find($id);
		// redirect
			$url = Session::get('SOURCE_URL');
            
            return Redirect::to($url)
			->with('message', trans('messages.success-deleting-biochemical-test'));
	}

}