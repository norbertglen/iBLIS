<?php 
use Illuminate\Database\Eloquent\SoftDeletingTrait;

class DiscDiffusionGuideline extends Eloquent
{
    /*
     * The database table used by the model
     */

     protected $table = 'disc_diffusion_guidelines';

     public function drug() {
         return $this->belongsTo('App\Drug');
     }
}
?>