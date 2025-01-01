<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Order;

class OrdersTableSeeder extends Seeder
{
    public function run()
    {
        for ($i = 1; $i <= 5; $i++) {
            Order::create([
                'user_id' => $i,
                'total_price' => rand(50, 200)
            ]);
        }
    }
}
