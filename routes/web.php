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
/*
try {
    DB::connection()->getPdo();
    if(DB::connection()->getDatabaseName()){
        echo "Yes! Successfully connected to the DB: " . DB::connection()->getDatabaseName();
    }else{
        die("Could not find the database. Please check your configuration.");
    }
} catch (\Exception $e) {
    die("Could not open connection to database server.  Please check your configuration.");
}
Route::get('/', function () {
    return view('welcome');
});
*/
Route::get('topic/search', 'TopicController@search');
Route::get('block/search', 'BlockController@search');

//Route::get('/home/', 'TestController@index');
//по адресу /home/ вызывать TestController, метод index - view, который в нем прописан

// маршрутизация для RESTful контроллера: одна инструкция для всех методов контроллера, автоматическая пересылка по url-запросам
// имя для маршрутизации (попадет в адресную строку - перед), имя контроллера
ROUTE::resource('topic', 'TopicController');
ROUTE::resource('block', 'BlockController');
Auth::routes();

//Route::get('/home', 'HomeController@index');
