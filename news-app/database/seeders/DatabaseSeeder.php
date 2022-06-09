<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Article;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        User::truncate();

        $user = User::factory()->create();

        $economy = Category::create([
            'name' => 'Economy',
            'slug' => 'economy'
        ]);

        $sports = Category::create([
            'name' => 'Sports',
            'slug' => 'sports'
        ]);

        $lifestyle = Category::create([
            'name' => 'Lifestyle',
            'slug' => 'lifestyle'
        ]);

        Article::factory(100)->create();

        // $article1 = Article::create([

        //     'title' => 'Sports and lifestyle article',
        //     'author' => 'Anonymous',
        //     'content' => '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eligendi maxime quo doloremque soluta ab, enim asperiores excepturi exercitationem praesentium cum suscipit facilis quisquam quasi inventore molestiae debitis nesciunt aspernatur velit id ratione? Non deserunt eaque id at, molestiae deleniti sit minus totam amet facilis omnis.</p>'

        // ]);

        // $article1->categories()->attach([$sports->id, $lifestyle->id]);

        // $article2 = Article::create([
        //     'title' => 'Economy and lifestyle article',
        //     'author' => $user->name,
        //     'content' => '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eligendi maxime quo doloremque soluta ab, enim asperiores excepturi exercitationem praesentium cum suscipit facilis quisquam quasi inventore molestiae debitis nesciunt aspernatur velit id ratione? Non deserunt eaque id at, molestiae deleniti sit minus totam amet facilis omnis.</p>'
        // ]);

        // $article2->categories()->attach([$economy->id, $lifestyle->id]);
    }
}