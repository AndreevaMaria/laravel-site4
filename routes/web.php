<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

// маршрутизация для RESTful контроллера: одна инструкция
// имя для маршрутизации, имя контроллера
ROUTE::resource('topic', 'TopicController');
ROUTE::resource('block', 'BlockController');