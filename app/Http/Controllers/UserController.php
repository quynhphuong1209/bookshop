<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        // Tải tất cả các người dùng và truyền vào view index
        $users = User::all();
        return view('users.index', compact('users'));
    }

    public function update(Request $request, $id)
    {
        // Xác thực dữ liệu từ request
        $request->validate([
            'name' => 'required|string|max:255', // Giới hạn độ dài của tên
            'email' => 'required|email|unique:users,email,' . $id, // Email phải duy nhất
            'role' => 'required|in:admin,user',
        ]);

        // Tìm người dùng theo ID và cập nhật thông tin
        $user = User::findOrFail($id);
        $user->update($request->all());

        // Chuyển hướng về trang danh sách người dùng sau khi cập nhật thành công
        return redirect()->route('users.index');
    }

    public function destroy($id)
    {
        // Tìm người dùng theo ID và xóa họ
        $user = User::findOrFail($id);
        $user->delete();

        // Chuyển hướng về trang danh sách người dùng sau khi xóa thành công
        return redirect()->route('users.index');
    }
}
