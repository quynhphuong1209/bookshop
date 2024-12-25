<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index()
    {
        $categories = Category::all();
        return view('categories.index', compact('categories'));
    }

    public function create()
   {
    return view('categories.create');
   }


    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string',
        ]);

        Category::create($request->all());
        return redirect()->route('categories.index');
    }

    public function destroy($id)
    {
        $category = Category::findOrFail($id);
        $category->delete();
        return redirect()->route('categories.index');
    }

    public function edit()
    {
        $category = Category::findOrFail();
        return view('categories.edit', compact('category'));
    }


    public function update(Request $request, $id)
    {
        $request->validate([ 'name' => 'required|string', ]);
        $category = Category::findOrFail($id);
        $category->update($request->all());
        return redirect()->route('categories.index');
    }
}

