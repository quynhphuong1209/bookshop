@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Order Details</h1>
    <ul class="list-group">
        <li class="list-group-item"><strong>User:</strong> {{ $order->user->name }}</li>
        <li class="list-group-item"><strong>Total Price:</strong> {{ $order->total_price }}</li>
        <li class="list-group-item"><strong>Created At:</strong> {{ $order->created_at }}</li>
    </ul>

    <h3 class="mt-4">Order Items</h3>
    <table class="table mt-4">
        <thead>
            <tr>
                <th>Book</th>
                <th>Quantity</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
            @foreach($order->orderItems as $item)
            <tr>
                <td>{{ $item->book->title }}</td>
                <td>{{ $item->quantity }}</td>
                <td>{{ $item->price }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
    <a href="{{ route('orders.index') }}" class="btn btn-primary mt-3">Back to Order List</a>
</div>
@endsection

