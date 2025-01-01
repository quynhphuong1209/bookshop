<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Book extends Model
{
    use HasFactory, SoftDeletes; 

    protected $fillable = [
        'name', 'title', 'author', 'description', 'price', 'stock', 'category_id'
    ];

    protected $dates = ['deleted_at']; // Thêm deleted_at

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function reviews()
    {
        return $this->hasMany(Review::class);
    }
}
