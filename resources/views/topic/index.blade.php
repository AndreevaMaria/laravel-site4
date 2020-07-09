@extends('layouts.master')

@section('menu')
    @parent
@endsection

@section('content')
    <div class="row">
        <div class="col-3">
            <ul class="list-unstyled">
                @foreach($topics as $topic)
                <li>
                    <a href="{{url('topic/'.$topic->id)}}">{{$topic->topicname}}</a>
                </li>
                @endforeach
            </ul>
        </div>
        <div class="col-9">
            <h1>Test block</h1>
        </div>
    </div>
@endsection