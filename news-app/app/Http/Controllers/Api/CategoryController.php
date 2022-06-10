<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id, $page = 1)
    {
        $paginate = 10;
        $skip = ($page * $paginate) - $paginate;
        $prevUrl = $nextUrl = '';
        if ($skip > 0) {
            $prevUrl = $page - 1;
        }
        $articles = Category::find($id)->articles()->orderBy('id', 'asc')->skip($skip)->take($paginate)->get();
        if ($articles->count() > 0) {

            if ($articles->count() >= $paginate) {
                $nextUrl = $page + 1;
            }

            return response()->json([
                'status' => true,
                'message' => 'Article List',
                'articles' => $articles,
                'prevUrl' => "/api/categoria/$id/$prevUrl",
                'nextUrl' => "/api/categoria/$id/$nextUrl"
            ]);
        }

        return redirect("/api/categoria/$id/1");
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function show(Category $category)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function edit(Category $category)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Category $category)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Category  $category
     * @return \Illuminate\Http\Response
     */
    public function destroy(Category $category)
    {
        //
    }
}