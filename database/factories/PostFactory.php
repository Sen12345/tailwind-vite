<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Post>
 */
class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
<<<<<<< HEAD
<<<<<<< HEAD
            'user_id' => 1,
=======
            'user_id' => 2,
>>>>>>> c9532a4 (Initial Commit)
=======
            'user_id' => 2,
>>>>>>> 3ff65e660d4ed9ef7f19e194c47503a50e18ee38
            'body' => $this->faker->sentence(20),
        ];
    }
}
