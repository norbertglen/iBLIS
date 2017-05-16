<?php 
use Illuminate\Database\Eloquent\SoftDeletingTrait;

class BiochemicalTest extends Eloquent {
  /**
	 * Enabling soft deletes for microbiology critical values.
	 *
	 */
	use SoftDeletingTrait;
	protected $dates = ['deleted_at'];
    	
	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'bio_chemical_tests';
}
?>