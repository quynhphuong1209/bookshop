<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Review;

class ReviewsTableSeeder extends Seeder
{
    public function run()
    {
        // Tạo 5 đánh giá mẫu
        $reviews = [
            ['book_id' => 1, 'user_id' => 2, 'content' => 'Great book for beginners!', 'rating' => 5],
            ['book_id' => 2, 'user_id' => 2, 'content' => 'Highly detailed and informative.', 'rating' => 4],
            ['book_id' => 3, 'user_id' => 3, 'content' => 'Good introduction to PHP.', 'rating' => 4],
            ['book_id' => 4, 'user_id' => 3, 'content' => 'Very advanced and useful.', 'rating' => 5],
            ['book_id' => 5, 'user_id' => 4, 'content' => 'Practical and easy to follow.', 'rating' => 5],
        ];

        foreach ($reviews as $review) {
            Review::create($review);
        }
    }
}

