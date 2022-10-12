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
<<<<<<< HEAD
       $max = 10;

       for($i = 0; $i <= $max; $i++){
           User::factory()->create();
=======
=======
>>>>>>> 3ff65e660d4ed9ef7f19e194c47503a50e18ee38
       $max = 200;

       for($i = 0; $i <= $max; $i++){
           Post::factory()->create();
<<<<<<< HEAD
>>>>>>> c9532a4 (Initial Commit)
=======
>>>>>>> 3ff65e660d4ed9ef7f19e194c47503a50e18ee38
       }
    }
}
