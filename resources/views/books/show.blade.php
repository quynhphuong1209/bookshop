@extends('layouts.app')

@section('content')
<div class="container mt-5">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <div class="card mb-4">
                <div class="card-body">
                    <h1 class="card-title">{{ $book->title }}</h1>
                    <p class="card-text"><strong>Name:</strong> {{ $book->name }}</p>
                    <p class="card-text"><strong>Author:</strong> {{ $book->author }}</p>
                    <p class="card-text"><strong>Price:</strong> {{ $book->price }} USD</p>
                    <p class="card-text"><strong>Stock:</strong> {{ $book->stock }}</p>
                    <p class="card-text"><strong>Category:</strong> {{ $book->category ? $book->category->name : 'Uncategorized' }}</p>
                    <p class="card-text"><strong>Description:</strong> {{ $book->description }}</p>
                    <a href="{{ route('books.index') }}" class="btn btn-primary mt-3">Back to List</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
