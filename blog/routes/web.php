<?php

use App\Models\Category;
use App\Models\Post;
use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {

    return view('posts-component', [
        'posts' => Post::with('category')->get()
    ]);
});

// ------------ VERSION BEFORE REFACTORING -----------

// Route::get('posts/{post}', function ($slug) {

//     $path = __DIR__ . "/../resources/posts/${slug}.html";

//     if (!file_exists($path)) {
//         // other options are:
//         // ddd('file does not exist');
//         // abort(404);
//         return redirect('');
//     };

//     // saves the element in the cache for as much seconds as indicated or with the now() syntax

//     // FUNCTION DECLARATION:

//     // $post = cache()->remember("posts.{slug}", now()->addMinutes(20), function () use ($path) {
//     //     var_dump('file_get_contexts');
//     //     return file_get_contents($path);
//     // });

//     // ARROW FUNCTION:

//     $post = cache()->remember("posts.{slug}", now()->addMinutes(20), fn () => file_get_contents($path));

//     // $post = file_get_contents($path);

//     return view('post', [
//         'post' => $post
//     ]);
// })->where('post', '[A-z_\-]+');

// Other helpers:
// ->whereAlpha() should be upper or lowercase
// ->whereNumber() should be a number

// ------------ VERSION AFTER REFACTORING -----------

Route::get('posts/{post}', function (Post $post) {

    return view('post', [
        'post' => $post
    ]);
});

Route::get('categories/{category:slug}', function (Category $category) {

    return view('posts', [
        'posts' => $category->posts
    ]);
});