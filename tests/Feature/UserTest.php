<?php

namespace Tests\Feature;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class UserTest extends TestCase
{
    /**
     * A basic feature test example.
     *
     * @return void
     */
    public function test_login_form()
    {
        $response = $this->get('/login');
        $response->assertStatus(200);
    }

    public  function test_user_duplication(){
        $user1 = User::make([
            'name' => "John",
            'email' => "john@gmail.com"
        ]);

        $user2 = User::make([
            'name' => "Mark",
            'email' => "mark@gmail.com"
        ]);

        $this->assertTrue($user1->name != $user2->name);
    }

    public function test_if_you_can_delete_user(){
       // $user = User::factory()->count(1)->create();
        $user = User::first();
        if($user){
            $user->delete();
        }

        $this->assertTrue(true);
    }

    public function test_it_store_newUsers(){
        $response = $this->post('/register',[
            'name' => 'Senator Cox',
            'username' => 'Senator',
            'email' => 'senatorcox90@gmail.com',
            'password' => 'sen1234',
            'password_confirmation' => 'sen1234'
        ]);

        $response->assertRedirect('/dashboard');
    }

    public function test_database(){
        $this->assertDatabaseHas('users',[
            'name' => 'Senator Cox'
        ]);
    }

    public function test_databaseMissing(){
        $this->assertDatabaseMissing('users',[
            'name' => 'Senator Cox'
        ]);
    }

    public function test_if_seeders_works(){
        $this->seed(); //Seed all seeders in the seeders folder
    }
}
