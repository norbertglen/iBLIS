<?php


use Illuminate\Database\Eloquent\SoftDeletingTrait;
use Carbon\Carbon;

class Susceptibility extends Eloquent
{
	/**
	 * Enabling soft deletes for drug susceptibility.
	 *
	 */
	use SoftDeletingTrait;
	protected $dates = ['deleted_at'];
    	
	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'drug_susceptibility';
	/**
	 * User relationship
	 */
	public function user()
	{
	  return $this->belongsTo('User', 'user_id');
	}
	/**
	 * Test relationship
	 */
	public function test()
    {
        return $this->hasOne('Test', 'test_id');
    }
    /*
    *	Function to return drug susceptibility given testId, organismId and drugId
    *
    */
    public static function getDrugSusceptibility($test_id, $organism_id, $drug_id){
    	$susceptibility = Susceptibility::where('test_id', $test_id)
    									->where('organism_id', $organism_id)
    									->where('drug_id', $drug_id)
    									->first();
    	return $susceptibility;
    }
    
    /*
    *	Function to return drug susceptibility test given organismId and drugId
    *
    */
    public static function getDrugSusceptibilityTesting($organism_id, $drug_id, $interpretation){
    	$susceptibility = Susceptibility::where('organism_id', $organism_id)
    									->where('drug_id', $drug_id)
                                                                        ->where('interpretation', $interpretation);
    	return $susceptibility->count();
    }

			// public function getCreatedAtAttribute($datetime) {
			// 	// dd($datetime);
			// 	// dd(Carbon::createFromFormat('Y-m-d', $datetime));
			// 	return $datetime;
    // }
    
    /*
     * Function that returns drug resistance count
     * */
    public function getResistanceCount($organismId, $locationId, $specimen_type_ids) {
        if ($specimen_type_ids) {
            $resultSet = Susceptibility::join('tests', 'drug_susceptibility.test_id', '=', 'tests.id')
                ->join('specimens', 'tests.specimen_id', '=', 'specimens.id')
                ->join('specimen_types', 'specimens.specimen_type_id', '=', 'specimen_types.id')
                ->where('drug_susceptibility.organism_id', '=', $organismId)
                ->where('specimens.location_id', '=', $locationId)
                ->whereIn('specimens.specimen_type_id',  $specimen_type_ids)
                ->where('drug_susceptibility.interpretation', '=', 'S')
                ->where('drug_susceptibility.zone', '!=', 'Not D')
                ->distinct('drug_susceptibility.test_id')
                ->count('drug_susceptibility.test_id');
            return $resultSet;
        } else {
            $resultSet = Susceptibility::join('tests', 'drug_susceptibility.test_id', '=', 'tests.id')
                    ->join('specimens', 'tests.specimen_id', '=', 'specimens.id')
                    ->join('specimen_types', 'specimens.specimen_type_id', '=', 'specimen_types.id')
                    ->where('drug_susceptibility.organism_id', '=', $organismId)
                    ->where('specimens.location_id', '=', $locationId)
                    ->where('drug_susceptibility.interpretation', '=', 'S')
                    ->where('drug_susceptibility.zone', '!=', 'Not D')
                    ->distinct('drug_susceptibility.test_id')
                    ->count('drug_susceptibility.test_id');

            return $resultSet;
        }
    }
     
    /*
     * Function that returns drug resistance count per drug
     * */
    public function getDrugResistanceCount($organismId, $locationId, $specimen_type_ids, $drugId) {
        if ($specimen_type_ids) {
            $resultSet = Susceptibility::join('tests', 'drug_susceptibility.test_id', '=', 'tests.id')
                    ->join('specimens', 'tests.specimen_id', '=', 'specimens.id')
                    ->join('specimen_types', 'specimens.specimen_type_id', '=', 'specimen_types.id')
                    ->where('drug_susceptibility.organism_id', '=', $organismId)
                    ->where('specimens.location_id', '=', $locationId)
                    ->whereIn('specimens.specimen_type_id',  $specimen_type_ids)
                    ->where('drug_susceptibility.zone', '!=', 'Not D')
                    ->where('drug_susceptibility.interpretation', '=', 'S')
                    ->where('drug_susceptibility.drug_id', '=', $drugId)
                    ->distinct('drug_susceptibility.test_id')
                    ->count('drug_susceptibility.test_id');

            return $resultSet;
            
        } else {
            $resultSet = Susceptibility::join('tests', 'drug_susceptibility.test_id', '=', 'tests.id')
                    ->join('specimens', 'tests.specimen_id', '=', 'specimens.id')
                    ->join('specimen_types', 'specimens.specimen_type_id', '=', 'specimen_types.id')
                    ->where('drug_susceptibility.organism_id', '=', $organismId)
                    ->where('specimens.location_id', '=', $locationId)
                    ->where('drug_susceptibility.zone', '!=', 'Not D')
                    ->where('drug_susceptibility.interpretation', '=', 'S')
                    ->where('drug_susceptibility.drug_id', '=', $drugId)
                    ->distinct('drug_susceptibility.test_id')
                    ->count('drug_susceptibility.test_id');

            return $resultSet;
        }
    }

}
