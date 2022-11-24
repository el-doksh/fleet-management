<?php

namespace App\Rules;

use App\Models\Trip;
use Illuminate\Contracts\Validation\Rule;

class ValidateTripSeat implements Rule
{
    private $trip_id;
    /**
     * Create a new rule instance.
     *
     * @return void
     */
    public function __construct($trip_id)
    {
        $this->trip_id = $trip_id;
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
        $trip = Trip::with('bus', 'bus.seats')->find($this->trip_id);
        if($trip && in_array($value, $trip->bus->seats->pluck('id')->toArray())) {
            return true;
        }
        return false;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'This seat is not avaiable for this trip.';
    }
}
