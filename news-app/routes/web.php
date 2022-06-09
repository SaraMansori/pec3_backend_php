<?php

use Illuminate\Support\Facades\Route;
use App\Models\Article;

Route::get('/', function () {
    return view('articles', [
        'articles' => Article::all()->take(5)
    ]);
});

Route::get('/articles/{article}', function (Article $article) {
    return view('article', [
        'article' => $article
    ]);
});