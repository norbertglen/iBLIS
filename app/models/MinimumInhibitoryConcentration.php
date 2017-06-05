<?php

use Illuminate\Database\Eloquent\SoftDeletingTrait;
use Carbon\Carbon;

class MinimumInhibitoryConcentration extends Eloquent
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
	protected $table = 'minimum_drug_inhibitory_concentrations';
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
    	$susceptibility = MinimumInhibitoryConcentration::where('test_id', $test_id)
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
    	$susceptibility = MinimumInhibitoryConcentration::where('organism_id', $organism_id)
    									->where('drug_id', $drug_id)
                                                                        ->where('interpretation', $interpretation);
    	return $susceptibility->count();
    }

		public function getCreatedAtAttribute($date) {
			$val = Carbon::parse($date);
			dd($val);

			return Carbon::createFromFormat('Y:m:d', $val);
		}
}