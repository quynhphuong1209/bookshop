<?php

use App\Http\Controllers\BookController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ReviewController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;

// Home route
Route::get('/', [HomeController::class, 'index'])->name('home');

// Authentication Routes
Route::get('login', [LoginController::class, 'showLoginForm'])->name('login');
Route::post('login', [LoginController::class, 'login']);
Route::post('logout', [LoginController::class, 'logout'])->name('logout');

// Registration Routes
Route::get('register', [RegisterController::class, 'showRegistrationForm'])->name('register');
Route::post('register', [RegisterController::class, 'register']);

// Routes for Books
Route::prefix('books')->name('books.')->group(function () {
    Route::get('/', [BookController::class, 'index'])->name('index');
    Route::get('create', [BookController::class, 'create'])->name('create')->middleware('auth');
    Route::post('/', [BookController::class, 'store'])->name('store')->middleware('auth');
    Route::get('{id}', [BookController::class, 'show'])->name('show');
    Route::get('{id}/edit', [BookController::class, 'edit'])->name('edit')->middleware('auth');
    Route::put('{id}', [BookController::class, 'update'])->name('update')->middleware('auth');
    Route::delete('{id}', [BookController::class, 'destroy'])->name('destroy')->middleware('auth');
    Route::post('{id}/restore', [BookController::class, 'restore'])->name('restore')->middleware('auth');
    Route::get('search', [BookController::class, 'search'])->name('search'); // Search route
});

// Routes for Categories
Route::prefix('categories')->name('categories.')->group(function () {
    Route::get('/', [CategoryController::class, 'index'])->name('index');
    Route::get('create', [CategoryController::class, 'create'])->name('create')->middleware('auth');
    Route::post('/', [CategoryController::class, 'store'])->name('store')->middleware('auth');
    Route::get('{id}', [CategoryController::class, 'show'])->name('show');
    Route::get('{id}/edit', [CategoryController::class, 'edit'])->name('edit')->middleware('auth');
    Route::put('{id}', [CategoryController::class, 'update'])->name('update')->middleware('auth');
    Route::delete('{id}', [CategoryController::class, 'destroy'])->name('destroy')->middleware('auth');
});

// Routes for Orders
Route::prefix('orders')->name('orders.')->group(function () {
    Route::get('/', [OrderController::class, 'index'])->name('index');
    Route::post('/', [OrderController::class, 'store'])->name('store');
});

// Routes for Reviews
Route::post('reviews', [ReviewController::class, 'store'])->name('reviews.store');

// Routes for Users
Route::prefix('users')->name('users.')->group(function () {
    Route::get('/', [UserController::class, 'index'])->name('index');
    Route::put('{id}', [UserController::class, 'update'])->name('update');
    Route::delete('{id}', [UserController::class, 'destroy'])->name('destroy');
});

// Book search
Route::get('/books/search', [BookController::class, 'search'])->name('books.search');
