<?php 
use Illuminate\Database\Eloquent\SoftDeletingTrait;

class BiochemicalWorksheet extends Eloquent {

	use SoftDeletingTrait;
	protected $table = 'biochemical_weeksheet';

}
?>