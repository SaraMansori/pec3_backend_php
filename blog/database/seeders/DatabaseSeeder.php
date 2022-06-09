<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;


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
        Category::truncate();
        Post::truncate();

        $user = User::factory()->create();

        $personal = Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        $family = Category::create([
            'name' => 'Family',
            'slug' => 'family'
        ]);

        $work = Category::create([
            'name' => 'Work',
            'slug' => 'work'
        ]);

        Post::create([
            'user_id' => $user->id,
            'category_id' => $family->id,
            'title' => 'My first personal post',
            'slug' => 'my-first-post',
            'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam, ipsa!',
            'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eligendi maxime quo doloremque soluta ab, enim asperiores excepturi exercitationem praesentium cum suscipit facilis quisquam quasi inventore molestiae debitis nesciunt aspernatur velit id ratione? Non deserunt eaque id at, molestiae deleniti sit minus totam amet facilis omnis.'

        ]);

        Post::create([
            'user_id' => $user->id,
            'category_id' => $work->id,
            'title' => 'My second work post',
            'slug' => 'my-first-post',
            'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Veniam, ipsa!',
            'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eligendi maxime quo doloremque soluta ab, enim asperiores excepturi exercitationem praesentium cum suscipit facilis quisquam quasi inventore molestiae debitis nesciunt aspernatur velit id ratione? Non deserunt eaque id at, molestiae deleniti sit minus totam amet facilis omnis.'

        ]);
    }
}