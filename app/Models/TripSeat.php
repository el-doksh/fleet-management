<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TripSeat extends Model
{
    use HasFactory;
    
    protected $fillable = [
        'trip_id',
        'seat_id',
        'start_city_id',
        'end_city_id',
        'booked_at',
    ];

    public function trip()
    {
        return $this->belongsTo(Trip::class);
    }

    public function seat()
    {
        return $this->belongsTo(BusSeat::class);
    }

    public function start_city()
    {
        return $this->belongsTo(City::class);
    }

    public function end_city()
    {
        return $this->belongsTo(City::class);
    }

    public function scopeNotBooked($query)
    {
        return $query->whereNull('booked_at');
    }
    
}
