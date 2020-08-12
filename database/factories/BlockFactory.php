<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

/*use \Illuminate\Database\Eloquent\Factory;*/
use Faker\Generator as Faker;

$factory->define(App\Block::class, function (Faker $faker) {

    return [
        'topicid' => \App\Topic::all()->random()->id,
        'title' => $faker->catchPhrase,
        'content' => $faker->text(3000),
        'imagepath' => $faker->imageUrl($width = 640, $height = 480),
    ];
});
