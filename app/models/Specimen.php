<?php

use Carbon\Carbon;

class Specimen extends Eloquent
{
    /*
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'specimens';

    public $timestamps = false;

    /**
     * Specimen status constants
     */
    const NOT_COLLECTED = 1;
    const ACCEPTED = 2;
    const REJECTED = 3;
    /**
     * Enabling soft deletes for specimen details.
     *
     * @var boolean
     */
    // protected $softDelete = true;//it wants deleted at fills,

    /**
     * Test Phase relationship
     */
    public function testPhase()
    {
        return $this->belongsTo('TestPhase');
    }

    /**
     * Specimen Status relationship
     */
    public function specimenStatus()
    {
        return $this->belongsTo('SpecimenStatus');
    }

    /**
     * Specimen Type relationship
     */
    public function specimenType()
    {
        return $this->belongsTo('SpecimenType');
    }

    /**
     * Rejection Reason relationship
     */
    public function rejectionReason()
    {
        return $this->belongsTo('RejectionReason');
    }

    /**
     * Collection Site relationship
     */
    public function collectionSite()
    {
        return $this->belongsTo('SpecimenCollectionSite');
    }

    /**
     * Collection Location relationship
     */
    public function collectionLocation()
    {
        return $this->belongsTo('SpecimenCollectionLocation');
    }

    /**
     * Test relationship
     */
    public function test()
    {
        return $this->hasOne('Test');
    }

    /**
     * referrals relationship
     */
    public function referral()
    {
        return $this->belongsTo('Referral');
    }

    /**
     * User (accepted) relationship
     */
    public function acceptedBy()
    {
        return $this->belongsTo('User', 'accepted_by', 'id');
    }

    /**
     * User (rejected) relationship
     */
    public function rejectedBy()
    {
        return $this->belongsTo('User', 'rejected_by', 'id');
    }

    /**
     * Check if specimen is referred
     *
     * @return boolean
     */
    public function isReferred()
    {
        if(is_null($this->referral))
        {
            return false;
        }
        else {
            return true;
        }
    }

    /**
     * Check if specimen is NOT_COLLECTED
     *
     * @return boolean
     */
    public function isNotCollected()
    {
        if($this->specimen_status_id == Specimen::NOT_COLLECTED)
        {
            return true;
        }
        else {
            return false;
        }
    }

    /**
     * Check if specimen is ACCEPTED
     *
     * @return boolean
     */
    public function isAccepted()
    {
        if($this->specimen_status_id == Specimen::ACCEPTED)
        {
            return true;
        }
        else {
            return false;
        }
    }

    /**
     * Check if specimen is rejected
     *
     * @return boolean
     */
    public function isRejected()
    {
        if($this->specimen_status_id == Specimen::REJECTED)
        {
            return true;
        }
        else {
            return false;
        }
    }

	public function setTimeCollectedAttribute($time) {
		$date_collected = $this->attributes['date_collected'];
		$date_to_save = $date_collected.' '.$time;
		$this->attributes['time_collected'] = Carbon::createFromFormat('Y-m-d H:i', $date_to_save);
	}

    /**
     * Get the speciment's time collected.
     *
     * @param  string  $datetime
     * @return string
     */
    public function getTimeCollectedAttribute($datetime) {
        $dt = Carbon::parse($datetime);
        return $dt->hour.':'.$dt->minute;
    }
    
	public function getLocationIdAttribute($id) {
		$location = SpecimenCollectionLocation::find($id);
		return $location['name'];
	}

	public function getSiteCollectedIdAttribute($id) {
		$site = SpecimenCollectionSite::find($id);
		return $site['name'];
	}
}
