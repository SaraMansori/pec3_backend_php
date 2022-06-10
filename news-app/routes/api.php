<?php

use App\Http\Controllers\Api\ArticleController;
use Illuminate\Support\Facades\Route;

Route::apiResource('noticias/{page?}/', ArticleController::class);
Route::apiResource('noticia', ArticleController::class);