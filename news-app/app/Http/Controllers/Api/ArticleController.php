<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Article;
use Illuminate\Http\Request;

class ArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index($page = 1)
    {
        $paginate = 10;
        $skip = ($page * $paginate) - $paginate;
        $prevUrl = $nextUrl = '';
        if ($skip > 0) {
            $prevUrl = $page - 1;
        }
        $articles = Article::orderBy('id', 'asc')->skip($skip)->take($paginate)->get();
        if ($articles->count() > 0) {

            if ($articles->count() >= $paginate) {
                $nextUrl = $page + 1;
            }

            return response()->json([
                'status' => true,
                'message' => 'Article List',
                'articles' => $articles,
                'prevUrl' => "/api/noticias/$prevUrl",
                'nextUrl' => "/api/noticias/$nextUrl"
            ]);
        }

        return redirect('/api/noticias/page/1');
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
     * @param  \App\Models\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

        $article = Article::find($id);

        if (is_null($article)) {
            return $this->sendError('Article not found');
        }
        return response()->json([
            "success" => true,
            "message" => "Article retrieved succesfully",
            "data" => $article
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function edit(Article $article)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Article $article)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function destroy(Article $article)
    {
        //
    }
}