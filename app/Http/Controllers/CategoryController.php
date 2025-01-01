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

    public function show($id) // Thêm phương thức show
    {
        $category = Category::findOrFail($id);
        $books = $category->books; // Giả sử Category có quan hệ với Book
        return view('categories.show', compact('category', 'books'));
    }

    public function create()
    {
        return view('categories.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255', // Giới hạn độ dài của tên
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

    public function edit($id) // Thêm tham số $id
    {
        $category = Category::findOrFail($id); // Tìm danh mục theo ID
        return view('categories.edit', compact('category'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required|string|max:255', // Giới hạn độ dài của tên
        ]);

        $category = Category::findOrFail($id); // Tìm danh mục theo ID
        $category->update($request->all());
        return redirect()->route('categories.index');
    }
}
