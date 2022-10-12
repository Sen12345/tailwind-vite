<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(200)->create();

<<<<<<< HEAD
       $max = 10;

       for($i = 0; $i <= $max; $i++){
           User::factory()->create();
=======
       $max = 200;

       for($i = 0; $i <= $max; $i++){
           Post::factory()->create();
>>>>>>> c9532a4 (Initial Commit)
       }
    }
}
