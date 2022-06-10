<?php

use Illuminate\Support\Facades\Route;
use App\Models\Article;
use App\Models\Category;

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

Route::get('/categories/{category:slug}', function (Category $category) {

    return view('articles', [
        'articles' => $category->articles->take(5)
    ]);
});