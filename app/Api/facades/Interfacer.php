<?php namespace App\Api\Facades;

use Illuminate\Support\Facades\Facade;

class Interfacer extends Facade
{
        protected static function getFacadeAccessor()
        {
            return 'Interfacer';
        }
}