<?php

namespace App\Http\Controllers;

use App\Models\Review;
use Illuminate\Http\Request;

class ReviewController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'book_id' => 'required|exists:books,id',
            'user_id' => 'required|exists:users,id',
            'content' => 'required|string',
            'rating' => 'required|integer|min:1|max:5',
        ]);

        Review::create($request->all());
        return back();
    }
}

