<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class TripResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        $available_seats = $this->resource->bus->seats()->whereNotIn('id', $this->resource->seats->pluck('id')->toArray())->get();
        return [
            'id' => $this->id,
            'date' => $this->date,
            'cities' => CityResource::collection($this->cities),
            'bus' => new BusResource($this->bus),
            'booked_seats' => SeatResource::collection($this->seats),
            'available_seats' => AvailabeSeatResource::collection($available_seats),
        ];
    }
}
