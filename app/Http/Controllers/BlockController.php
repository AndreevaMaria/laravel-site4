<?php

namespace App\Http\Controllers;

use App\Block;
use App\Topic;
use Illuminate\Http\Request;

class BlockController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return "<h1>I'm from BlockController@index</h1>";
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $block = new Block;
        $topics = Topic::pluck('topicname', 'id');
        return view('block.create', ['block'=>$block, 'page'=>'Forms', 'topics'=>$topics]);
    }

    /**
     * Store a newly created resource in storage. Взаимодесйтвует с МОДЕЛЬЮ
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {
        $block = new Block;
        $fname = $request->file('imagepath');
        if($fname !== null) {
            $original_name = $fname->getClientOriginalName();
            $fname->move(public_path().'/images', $original_name);
            $block->imagepath='/images/'.$original_name;
        } else {
            $block->imagepath='';
        }
        $block->topicid = $request->topicid;
        $block->title = $request->title;
        $block->content = $request->block_content;
        //если данные не удалось передать
        if(!$block->save()) {
            $err = $block->getErrors();
            //после этого - возвращение на страницу и сообщение об ошибке
            return redirect()->action('BlockController@create')->with('errors', $err)->withInput();
            // withInput метод проверяет нет ли ошибочных полей в форме и при редиректе корректные данные он сохранит
        }
        return redirect()->action('BlockController@create')->with('message', 'New block'. $block->title . 'has been added with id=' . $block->id);
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

