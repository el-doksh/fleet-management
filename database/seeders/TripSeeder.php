<?php

namespace Database\Seeders;

use App\Models\Trip;
use App\Models\TripCity;
use App\Models\TripSeat;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Arr;

class TripSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $trips = [
            [
                'date' => "2022-11-30 12:00:00",
                'bus_id' => 1,
                'cities' => [
                    [
                        'city_id' => 1,
                        'order' => 1,
                    ],
                    [
                        'city_id' => 2,
                        'order' => 2,
                    ],
                    [
                        'city_id' => 3,
                        'order' => 3,
                    ],
                    [
                        'city_id' => 4,
                        'order' => 4,
                    ],
                ],
            ],
            [
                'date' => "2022-12-01 12:00:00",
                'bus_id' => 2,
                'cities' => [
                    [
                        'city_id' => 5,
                        'order' => 1,
                    ],
                    [
                        'city_id' => 6,
                        'order' => 2,
                    ],
                    [
                        'city_id' => 7,
                        'order' => 3,
                    ],
                ]
            ],
            [
                'date' => "2022-12-01 14:00:00",
                'bus_id' => 3,
                'cities' => [
                    [
                        'city_id' => 1,
                        'order' => 1,
                    ],
                    [
                        'city_id' => 2,
                        'order' => 2,
                    ],
                    [
                        'city_id' => 3,
                        'order' => 3,
                    ],
                    [
                        'city_id' => 4,
                        'order' => 4,
                    ],
                    [
                        'city_id' => 5,
                        'order' => 5,
                    ],
                    [
                        'city_id' => 6,
                        'order' => 6,
                    ],
                ]
            ],
        ];
        foreach ($trips as $trip) {
            $new_trip = Trip::with('bus.seats')->create( Arr::except($trip, ['cities']) );
            
            foreach($trip['cities'] as $city) {
                TripCity::create([
                    'trip_id' => $new_trip->id,
                    'city_id' => $city['city_id'],
                    'order' => $city['order'],
                ]);
            }
            foreach ($new_trip->bus->seats as $seat) {
                TripSeat::create([
                    'trip_id' => $new_trip->id,
                    'seat_id' => $seat->id,
                ]);
            }
        }
    }
}
