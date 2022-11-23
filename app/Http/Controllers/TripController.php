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
        $trips = Trip::select('id', 'date', 'bus_id')->with('bus', 'cities', 'seats')->get();

        return $this->API_Response(true, HttpStatusCodes::HTTP_OK, __('Trips List'), TripResource::collection($trips) );
    }

    public function show(Trip $trip)
    {
        return $this->API_Response(true, HttpStatusCodes::HTTP_OK, __('Trips List'), new TripResource($trip) );
    }

    public function book(BookSeatRequest $request, Trip $trip)
    {
        if ($trip) {

            $tripSeat = TripSeat::where('id', $request->seat_id)
                                ->where('trip_id', $trip->id)
                                ->NotBooked()->first();

            if($tripSeat ) {
                $tripSeat->update([
                    'booked_at' => now()
                ]);
                return $this->API_Response(true, HttpStatusCodes::HTTP_ACCEPTED, __('Seat booked successfully'));
            }
            return $this->API_Response(false, HttpStatusCodes::HTTP_BAD_REQUEST, __('Seat is booked'));
        }
        return $this->API_Response(false, HttpStatusCodes::HTTP_NOT_FOUND, __('Trip not found'));
    }
}
