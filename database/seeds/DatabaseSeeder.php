<?php

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
        // $this->call(UserSeeder::class);

        // we want to create 10 users
        factory('App\User', 100)->create()->each(function ($user){

            //saving a post for each user (user-post relation)
            $user->posts()->save(factory('App\Post')->make());

        });

    }
}
