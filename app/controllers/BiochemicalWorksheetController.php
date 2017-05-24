<?php
use Illuminate\Database\QueryException;

/**
 * Contains biochemicaltestworksheet resources  
 * 
 */
class BiochemicalWorkSheetController extends \BaseController {


  	 /**
	 * Create a new test the resource.
	 *
	 * @return Response
	 */
   public function saveBiochem()
   {
		$biochemicaltest = new BiochemicalWorksheet;
		$biochemicaltest->user_id = Input::get('userId');
		$biochemicaltest->test_id = Input::get('testId');
		$biochemicaltest->result = Input::get('result');
		$biochemicaltest->biochemical_id = Input::get('bioID');
    $biochemicaltest->save();
   }

}
