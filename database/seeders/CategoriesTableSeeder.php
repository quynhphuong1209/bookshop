<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Category;

class CategoriesTableSeeder extends Seeder
{
    public function run()
    {
        $categories = ['Technology', 'Science', 'Literature', 'History', 'Arts'];

        foreach ($categories as $category) {
            Category::create(['name' => $category]);
        }
    }
}
