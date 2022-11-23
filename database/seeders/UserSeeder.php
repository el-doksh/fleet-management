<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = [
            [
                'name' => 'admin',
                'email' => 'admin@admin.com',
                'email_verified_at' => now(),
                'password' => Hash::make('123456789')
            ],
            [
                'name' => 'sherif',
                'email' => 'sherifeldoksh8@gmai.com',
                'email_verified_at' => now(),
                'password' => Hash::make('123456789')
            ],
        ];

        foreach ($users as $user) {
            User::updateOrCreate($user);
        }
    }
}
