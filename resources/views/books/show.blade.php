@extends('layouts.app')

@section('content')
<div class="container">
    <h1>{{ $book->title }}</h1>
    <p><strong>Author:</strong> {{ $book->author }}</p>
    <p><strong>Price:</strong> {{ $book->price }}</p>
    <p><strong>Stock:</strong> {{ $book->stock }}</p>
    <p><strong>Category:</strong> {{ $book->category->name }}</p>
    <p><strong>Description:</strong> {{ $book->description }}</p>
    <a href="{{ route('books.index') }}" class="btn btn-primary">Back to List</a>
</div>
@endsection
