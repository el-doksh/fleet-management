<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bus extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'license_number',
    ];

    public function seats()
    {
        return $this->hasMany(BusSeat::class, 'bus_id');
    }
}
