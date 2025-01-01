<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;

class UsersTableSeeder extends Seeder
{
    public function run()
    {
        User::create([
            'name' => 'Admin',
            'email' => 'admin@example.com',
            'password' => bcrypt('password'),
            'role' => 'admin',
        ]);

        for ($i = 1; $i <= 4; $i++) {
            User::create([
                'name' => 'User' . $i,
                'email' => 'user' . $i . '@example.com',
                'password' => bcrypt('password'),
                'role' => 'user',
            ]);
        }
    }
}
