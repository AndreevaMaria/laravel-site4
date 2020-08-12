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

$factory->define(App\Topic::class, function (Faker $faker) {
    return [
        'topicname' => $faker->jobTitle,
    ];
});
