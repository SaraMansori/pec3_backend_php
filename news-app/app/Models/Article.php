<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    use HasFactory;

    protected $fillable = [
        'title', 'author', 'content'
    ];

    public function categories()
    {
        return $this->belongsToMany('App\Models\Category');
    }
}