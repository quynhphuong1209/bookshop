<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Book;

class BooksTableSeeder extends Seeder
{
    public function run()
    {
        // Tạo 5 cuốn sách mẫu
        $books = [
            [
                'name' => 'Book 1',
                'title' => 'Laravel for Beginners',
                'author' => 'John Doe',
                'description' => 'An introductory book on Laravel.',
                'price' => 19.99,
                'stock' => 100,
                'category_id' => 1,
            ],
            [
                'name' => 'Book 2',
                'title' => 'Mastering Laravel',
                'author' => 'Jane Smith',
                'description' => 'A comprehensive guide to mastering Laravel.',
                'price' => 29.99,
                'stock' => 50,
                'category_id' => 2,
            ],
            [
                'name' => 'Book 3',
                'title' => 'PHP for Everyone',
                'author' => 'Alice Johnson',
                'description' => 'A beginner-friendly guide to PHP.',
                'price' => 15.99,
                'stock' => 70,
                'category_id' => 1,
            ],
            [
                'name' => 'Book 4',
                'title' => 'Advanced PHP Programming',
                'author' => 'Bob Brown',
                'description' => 'An advanced book on PHP programming.',
                'price' => 25.99,
                'stock' => 30,
                'category_id' => 2,
            ],
            [
                'name' => 'Book 5',
                'title' => 'Web Development with Laravel',
                'author' => 'Chris Green',
                'description' => 'A practical guide to web development with Laravel.',
                'price' => 22.99,
                'stock' => 80,
                'category_id' => 3,
            ],
        ];

        foreach ($books as $book) {
            Book::create($book);
        }
    }
}
