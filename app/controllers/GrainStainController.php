<?php
use Illuminate\Database\QueryException;

/**
 * Contains gramstain worksheet resources  
 * 
 */
class GrainStainController extends \BaseController {

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
	 * Create a new test the resource.
	 *
	 * @return Response
	 */
   public function saveResults()
   {
		$grainstain = new GrainStain;
		$grainstain->user_id = Input::get('userId');
		$grainstain->test_id = Input::get('testId');
		$grainstain->result = Input::get('result');
    $grainstain->save();
   }
}
