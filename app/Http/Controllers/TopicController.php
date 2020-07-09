<?php

namespace App\Http\Controllers;

use App\Topic;
use Illuminate\Http\Request;

class TopicController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return "<h1>I'm from TopicController@index</h1>";
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $topic = new Topic;
        return view('topic.create', ['page'=>'Main page', 'topic'=>$topic]);
    }

    /**
     * Store a newly created resource in storage. Взаимодесйтвует с МОДЕЛЬЮ
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $topic = new Topic;
        $topic->topicname = $request->topicnameform; // значение из формы переданы в модель

        //если данные не удалось передать
        if(!$topic->save()) {
            $err = $topic->getErrors();
            //после этого - возвращение на страницу и сообщение об ошибке
            return redirect()->action('TopicController@store')->with('errors', $err)->withInput();
            // withInput метод проверяет нет ли ошибочных полей в форме и при редиректе корректные данные он сохранит
        }
        return redirect()->action('TopicController@store')->with('message', 'New topic'. $topic->topicname . 'has been added with id=' . $topic->id);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
