<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class SeatResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'seat_id' => $this->seat_id,
            'start_city' => $this->start_city->name,
            'end_city' => $this->end_city->name,
            'booked_at' => $this->booked_at, 
        ];
    }
}
