<?php

namespace Database\Seeders;

use App\Models\Bus;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Arr;

class BusSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $buses = [
            [
                'name' => 'Bus 1',
                'license_number' => 'ABC-123',
                'seats' => [
                    [
                        'seat_id' => '11',
                    ],
                    [
                        'seat_id' => '12',
                    ],
                    [
                        'seat_id' => '13',
                    ],
                    [
                        'seat_id' => '14',
                    ],
                    [
                        'seat_id' => '15',
                    ],
                    [
                        'seat_id' => '16',
                    ],
                    [
                        'seat_id' => '17',
                    ],
                    [
                        'seat_id' => '18',
                    ],
                    [
                        'seat_id' => '19',
                    ],
                    [
                        'seat_id' => '110',
                    ],
                    [
                        'seat_id' => '111',
                    ],
                    [
                        'seat_id' => '112',
                    ],
                ],
            ],
            [
                'name' => 'Bus 2',
                'license_number' => 'ABC-456',
                'seats' => [
                    [
                        'seat_id' => '113'
                    ],
                    [
                        'seat_id' => '114'
                    ],
                    [
                        'seat_id' => '115'
                    ],
                    [
                        'seat_id' => '116'
                    ],
                    [
                        'seat_id' => '117'
                    ],
                    [
                        'seat_id' => '118'
                    ],
                    [
                        'seat_id' => '119'
                    ],
                    [
                        'seat_id' => '120'
                    ],
                    [
                        'seat_id' => '121'
                    ],
                    [
                        'seat_id' => '122'
                    ],
                    [
                        'seat_id' => '123'
                    ],
                    [
                        'seat_id' => '124'
                    ],
                ]
            ],
            [
                'name' => 'Bus 3',
                'license_number' => 'QWE-456',
                'seats' => [
                    [
                        'seat_id' => '130'
                    ],
                    [
                        'seat_id' => '131'
                    ],
                    [
                        'seat_id' => '132'
                    ],
                    [
                        'seat_id' => '133'
                    ],
                    [
                        'seat_id' => '134'
                    ],
                    [
                        'seat_id' => '135'
                    ],
                    [
                        'seat_id' => '136'
                    ],
                    [
                        'seat_id' => '137'
                    ],
                    [
                        'seat_id' => '138'
                    ],
                    [
                        'seat_id' => '139'
                    ],
                    [
                        'seat_id' => '140'
                    ],
                    [
                        'seat_id' => '141'
                    ],
                ]
            ],
        ];

        foreach ($buses as $bus) {
            $new_bus = Bus::updateOrCreate( Arr::except($bus, ['seats']));
            $new_bus->seats()->createMany($bus['seats']);
        }
    }
}
