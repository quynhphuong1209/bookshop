<?php

namespace App\Http\Controllers;

use App\Models\Book; // Import model Book
use App\Models\Category; // Import model Category
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $books = Book::all(); // Truy xuất tất cả sách từ cơ sở dữ liệu
        $categories = Category::all(); // Truy xuất tất cả danh mục từ cơ sở dữ liệu
        return view('books.welcome', compact('books', 'categories')); // Truyền danh sách sách và danh mục đến view
    }
}
