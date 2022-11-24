<?php

namespace App\Http\Controllers;

use App\Helpers\HttpStatusCodes;
use App\Http\Requests\BookSeatRequest;
use App\Http\Resources\TripResource;
use App\Models\Trip;
use App\Models\TripSeat;
use App\Traits\APIResponse;

class TripController extends Controller
{
    use APIResponse;

    public function index()
    {
        $trips = Trip::select('id', 'date', 'bus_id')->with('bus', 'cities', 'seats', 'seats.start_city', 'seats.end_city')->get();

        return $this->API_Response(true, HttpStatusCodes::HTTP_OK, __('Trips List'), TripResource::collection($trips) );
    }

    public function show(Trip $trip)
    {
        return $this->API_Response(true, HttpStatusCodes::HTTP_OK, __('Trips List'), new TripResource($trip) );
    }

    public function book(BookSeatRequest $request, Trip $trip)
    {
        if ($trip) {
            $selectedCitiesOrder = $trip->cities()->whereIn('cities.id', [$request->start_city_id, $request->end_city_id])->orderBy('order')->pluck('order')->toArray();

            //find all cities ids trip from start city to end city
            $startCitiesIds = $trip->cities()->wherePivot('order', '<=', $selectedCitiesOrder[0])->orderBy('order')->pluck('cities.id')->toArray();
            $endCitiesIds = $trip->cities()->wherePivot('order', '>=', $selectedCitiesOrder[1])->orderBy('order')->pluck('cities.id')->toArray();
            
            $tripSeat = TripSeat::where('trip_id', $trip->id)
                                ->where('seat_id', $request->seat_id)
                                ->whereIn('start_city_id', $startCitiesIds)
                                ->whereIn('end_city_id', $endCitiesIds)
                                ->first();
            if($tripSeat) {
                return $this->API_Response(false, HttpStatusCodes::HTTP_BAD_REQUEST, __('Seat is already booked'));
            }

            TripSeat::create([
                'trip_id' => $trip->id,
                'seat_id' => $request->seat_id,
                'start_city_id' => $request->start_city_id,
                'end_city_id' => $request->end_city_id,
                'booked_at' => now()
            ]);
            return $this->API_Response(true, HttpStatusCodes::HTTP_ACCEPTED, __('Seat booked successfully'));
        }
        return $this->API_Response(false, HttpStatusCodes::HTTP_NOT_FOUND, __('Trip not found'));
    }
}
