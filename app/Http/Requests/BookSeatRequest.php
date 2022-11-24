<?php

namespace App\Http\Requests;

use App\Rules\ValidateTripCities;
use App\Rules\ValidateTripSeat;
use Illuminate\Foundation\Http\FormRequest;

class BookSeatRequest extends ParentRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'seat_id' => ['required', 'exists:bus_seats,id', new ValidateTripSeat($this->trip->id)],
            'start_city_id' => ['required', 'exists:trip_cities,city_id,trip_id,'.$this->trip->id],
            'end_city_id' => ['required', 'exists:trip_cities,city_id,trip_id,'.$this->trip->id, new ValidateTripCities($this->start_city_id)]
        ];
    }

    public function messages()
    {
        return [
            'start_city_id.exists' => 'The selected start city not exists in this trip',
            'end_city_id.exists' => 'The selected end city not exists in this trip',
        ];
    }
}
