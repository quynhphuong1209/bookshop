<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\OrderItem;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function index()
    {
        // Tải tất cả các đơn hàng cùng với thông tin người dùng và sách trong các mục đơn hàng
        $orders = Order::with('user', 'orderItems.book')->get();
        return view('orders.index', compact('orders'));
    }

    public function store(Request $request)
    {
        // Xác thực dữ liệu từ request
        $request->validate([
            'user_id' => 'required|exists:users,id',
            'total_price' => 'required|numeric',
            'items' => 'required|array',
            'items.*.book_id' => 'required|exists:books,id',
            'items.*.quantity' => 'required|integer|min:1',
            'items.*.price' => 'required|numeric',
        ]);

        // Tạo đơn hàng mới
        $order = Order::create($request->only(['user_id', 'total_price']));

        // Kiểm tra và tạo các mục đơn hàng (order items)
        if ($request->has('items')) {
            foreach ($request->items as $item) {
                OrderItem::create([
                    'order_id' => $order->id,
                    'book_id' => $item['book_id'],
                    'quantity' => $item['quantity'],
                    'price' => $item['price'],
                ]);
            }
        }

        // Chuyển hướng về trang danh sách đơn hàng
        return redirect()->route('orders.index');
    }
}
