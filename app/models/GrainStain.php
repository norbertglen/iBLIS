<?php

use Illuminate\Database\Eloquent\SoftDeletingTrait;

class GrainStain extends Eloquent
{
	use SoftDeletingTrait;
	protected $table = 'grainstain_tests';
}