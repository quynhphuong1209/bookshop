@extends('layouts.app')

@section('content')
<div class="container">
    <h1>User Details</h1>
    <ul class="list-group">
        <li class="list-group-item"><strong>Name:</strong> {{ $user->name }}</li>
        <li class="list-group-item"><strong>Email:</strong> {{ $user->email }}</li>
        <li class="list-group-item"><strong>Role:</strong> {{ $user->role }}</li>
    </ul>
    <a href="{{ route('users.index') }}" class="btn btn-primary mt-3">Back to User List</a>
</div>
@endsection
