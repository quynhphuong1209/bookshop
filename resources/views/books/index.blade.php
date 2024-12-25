@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Books List</h1>
    <a href="{{ route('books.create') }}" class="btn btn-primary mb-4">Add New Book</a>

    <!-- Search Form -->
    <form action="{{ route('books.search') }}" method="GET" class="mb-4">
        <input type="text" name="q" class="form-control" placeholder="Search for books..." value="{{ request('q') }}">
        <button type="submit" class="btn btn-primary mt-2">Search</button>
    </form>

    <!-- Search Results -->
    @if(isset($query))
        <h3>Results for "{{ $query }}"</h3>
        @foreach ($books as $book)
            <div class="card mb-3">
                <div class="card-body">
                    <h5 class="card-title">{{ $book->title }}</h5>
                    <p class="card-text">{{ $book->author }}</p>
                    <p class="card-text">{{ $book->description }}</p>
                </div>
            </div>
        @endforeach
    @else
    <!-- Books Table -->
    <table class="table mt-4">
        <thead>
            <tr>
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
                <th>Stock</th>
                <th>Category</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($books as $book)
            <tr>
                <td>{{ $book->title }}</td>
                <td>{{ $book->author }}</td>
                <td>{{ $book->price }}</td>
                <td>{{ $book->stock }}</td>
                <td>{{ $book->category->name }}</td>
                <td>
                    <a href="{{ route('books.show', $book->id) }}" class="btn btn-info">View</a>
                    <a href="{{ route('books.edit', $book->id) }}" class="btn btn-warning">Edit</a>
                    <form action="{{ route('books.destroy', $book->id) }}" method="POST" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button class="btn btn-danger" onclick="return confirm('Are you sure?')">Delete</button>
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    @endif
</div>
@endsection
