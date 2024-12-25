@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Order List</h1>
    <table class="table mt-4">
        <thead>
            <tr>
                <th>ID</th>
                <th>User</th>
                <th>Total Price</th>
                <th>Created At</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($orders as $order)
            <tr>
                <td>{{ $order->id }}</td>
                <td>{{ $order->user->name }}</td>
                <td>{{ $order->total_price }}</td>
                <td>{{ $order->created_at }}</td>
                <td>
                    <a href="{{ route('orders.show', $order->id) }}" class="btn btn-info">View</a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
