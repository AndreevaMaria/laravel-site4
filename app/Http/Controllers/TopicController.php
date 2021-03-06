<?php

namespace App\Http\Controllers;

use App\Topic;
use App\Block;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TopicController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    /* метод для выводы текста на экран (view) когда происходит переход по пути, указанному в файле web.php*/
    public function index()
    {
        $topics = Topic::all();
        return view('topic.index', ['page'=>'Main page', 'topics'=>$topics, 'id'=>0]);
        //topic - папка, index - название файла view
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
        $topic = new Topic;
        return view('topic.create', ['page'=>'Topics', 'topic'=>$topic]);
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
            return redirect()->action('TopicController@create')->with('errors', $err)->withInput();
            // withInput метод проверяет нет ли ошибочных полей в форме и при редиректе корректные данные он сохранит
        }
        return redirect()->action('TopicController@create')->with('message', 'New topic'. $topic->topicname . 'has been added with id=' . $topic->id);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $blocks = Block::where('topicid', '=', $id)->get();
        $topics = Topic::all();
        $topicname = Topic::find($id)->topicname;

        return view('topic.index', ['page'=>'Main page', 'topics'=>$topics, 'blocks'=>$blocks, 'id'=>$id, 'topicname'=>$topicname]);
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
        
    }

    public function search(Request $request) {
        $search = $request->searchformTopic;
        $search = '%'.$search.'%';
        $topics = Topic::where('topicname', 'like', $search)->get();

        return view('topic.index', ['page'=>'Main page', 'topics'=>$topics, 'id'=>0, 'topicname'=>'']);
    }
}
