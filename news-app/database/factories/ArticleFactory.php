<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Article>
 */

class ArticleFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */

    public function definition()

    {
        $randomNumber = rand(0, 100);
        return [
            'title' => $this->faker->sentence($nbWords = 6, $variableNbWords = true),
            'author' => $this->faker->name(),
            'content' => '<p>' . $this->faker->text() . '</p>',
            'image' => "https://picsum.photos/600/300?random=$randomNumber",
        ];
    }
}