<?php

namespace App\Rules;

use App\Models\City;
use App\Models\TripCity;
use Illuminate\Contracts\Validation\Rule;

class ValidateTripCities implements Rule
{
    private $start_city_id;

    /**
     * Create a new rule instance.
     *
     * @return void
     */
    public function __construct($start_city_id)
    {
        $this->start_city_id = $start_city_id;
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
        if ($value == $this->start_city_id) {
            return false;
        }
        $start_city = TripCity::find($this->start_city_id);
        $end_city = TripCity::find($value);
        if ($start_city->order > $end_city->order){
            return false;
        }
        return true;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'The end city should be after the start city.';
    }
}
