<?php

class SpecimenCollectionLocation extends Eloquent
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'specimen_collection_locations';

    public $timestamps = false;

    /**
     * Specimen relationship
     */
    public function specimen()
    {
        return $this->hasMany('Specimen');
    }

    public function getName($id) {
        if (!$id) return "";
        $location = $this->where('id', '=', $id)->first();
        return $location->name;
    }
}
