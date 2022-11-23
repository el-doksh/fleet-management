<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TripCity extends Model
{
    use HasFactory;

    protected $fillable = [
        'trip_id',
        'city_id',
        'order',
    ];

    public $timestamps = false;
    
    public function trip()
    {
        return $this->belongsTo(Trip::class);
    }

    public function city()
    {
        return $this->belongsTo(City::class);
    }
}
