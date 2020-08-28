<?php

namespace App\Http\Controllers;

use App\Block;
use App\Topic;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

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
        if(!Auth::check()) {
            return redirect('login');
        }
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
        $block = Block::find($id);
        $topics = Topic::pluck('topicname', 'id');
        return view('block.edit', ['page'=>'Main page', 'block'=>$block, 'topics'=>$topics]);
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
        $block = Block::find($id);
        $block->topicid = $request->topicid;
        $block->title = $request->title;
        $block->content = $request->content;
        $fname = $request->file('imagepath');
        if($fname !== null) {
            $original_name = $request->file('imagepath')->getClientOriginalName();
            $request->file('imagepath')->move(public_path().'/images', $original_name);
            $block->imagepath = 'images/'.$original_name;
        }
        $block->save();
        return redirect('topic/'.$block->topicid);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $block = Block::find($id);
        $block->delete();
        return redirect('topic');
    }

    public function search(Request $request) {
        $search = $request->searchform;
        $search = '%'.$search.'%';
        $blocks = Block::where('title', 'like', $search)->get();
        if (collect($blocks)->isEmpty()) {
            return view('topic.index', ['page'=>'Main page', 'topics'=>$topics, 'id'=>0, 'topicname'=>''])->with('message', 'No match found');
        } else {
            return view('topic.index', ['page'=>'Main page', 'topics'=>$topics, 'blocks'=>$blocks, 'id'=>0, 'topicname'=>'']);
        }
    }
}