<?php

use App\Http\Controllers\Api\ArticleController;
use App\Http\Controllers\Api\CategoryController;
use Illuminate\Support\Facades\Route;

Route::apiResource('noticias/{page?}/', ArticleController::class);
Route::apiResource('noticia', ArticleController::class);
Route::apiResource('categoria/{id}/{page?}', CategoryController::class, ['only' => ['index']]);