<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Trip extends Model
{
    use HasFactory;

    protected $fillable = [
        'date',
        'bus_id',
    ];

    public function bus()
    {
        return $this->belongsTo(Bus::class);
    }

    public function cities()
    {
        return $this->belongsToMany(City::class, TripCity::class, 'trip_id', 'city_id')->withPivot('order');
    }

    public function seats()
    {
        return $this->hasMany(TripSeat::class, 'trip_id');
    }
    
}
