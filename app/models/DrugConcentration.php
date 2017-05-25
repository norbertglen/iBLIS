<?php
 
use Illuminate\Database\Eloquent\SoftDeletingTrait;

class DrugConcentration extends Eloquent
{
	/**
	 * Enabling soft deletes for drug_concentrations.
	 *
	 */
	use SoftDeletingTrait;
    	
	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'drug_concentration';
}
 
?>