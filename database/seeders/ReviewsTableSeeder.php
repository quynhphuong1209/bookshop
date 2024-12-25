<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Review;

class ReviewsTableSeeder extends Seeder
{
    public function run()
    {
        Review::create([
            'book_id' => 1,
            'user_id' => 2,
            'content' => 'Great book for beginners!',
            'rating' => 5
        ]);

        Review::create([
            'book_id' => 2,
            'user_id' => 2,
            'content' => 'Highly detailed and informative.',
            'rating' => 4
        ]);
    }
}
