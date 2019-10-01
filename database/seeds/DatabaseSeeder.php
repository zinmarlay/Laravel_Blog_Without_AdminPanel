<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	$faker = Faker::create(); // new object create similar with  eg. $fake = new faker();

    	for ($i=0; $i <10 ; $i++) { 
    		$post = new App\Post();
    		$post->title = $faker->sentence;
    		$post->body = $faker->paragraph;
    		$post->category_id = rand(1, 3);
    		$post->save(); 
    	}

        for ($i=0; $i <5 ; $i++) { 
            $category=new App\Category(); //use model
            $category->name=ucwords($faker->word); // change capital wores
            $category->save();
        }

        for ($i=0; $i <20 ; $i++) { 
            $comment=new App\Comment();
            $comment->comment=$faker->paragraph;
            $comment->post_id=rand(1,10);
            $comment->save();
        }

        // $this->call(UsersTableSeeder::class);
    }
}
