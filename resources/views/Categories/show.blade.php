@extends('layouts.app')

@section('content')
<div class="container">
    <h1>{{ $category->name }}</h1>
    <div class="row mt-5">
        @foreach ($books as $book)
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="{{ $book->image_url }}" class="card-img-top book-image" alt="{{ $book->title }}">
                    <div class="card-body">
                        <h5 class="card-title">{{ $book->title }}</h5>
                        <p class="card-text">by {{ $book->author }}</p>
                        <p class="card-text"><strong>{{ $book->price }} USD</strong></p>
                        <a href="{{ route('books.show', $book->id) }}" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
    <a href="{{ url('/') }}" class="btn btn-primary">Back to Home</a>
</div>
@endsection
