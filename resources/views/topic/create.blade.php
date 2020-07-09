@extends('layouts.master')

@section('menu')
    @parent
@endsection

@if(session('errors'))
    <div class="alert alert-danger">
        @foreach(session('errors') -> all() as $error)
            {{$error}}<br>
        @endforeach
    </div>
@endif
@if(session('message'))
    <div class="alert alert-success">
        {{session('message')}}
    </div>
@endif

@section('content')
    <h1 class="label label-info">{{$page}}</h1>
    {!! Form::model($topic, ['action'=>'TopicController@store', 'method'=>'post']) !!}
    <div class='form-group'>
        {!! Form::label('topicnameform', 'Topic Name') !!}
        {!! Form::text('topicnameform', '', ['class'=>'form-control', 'placeholder'=>'Enter topic name']) !!}
    </div>
    <button type="submit" class="btn btn-primary">Add topic</button>
    <button type="submit" class="btn btn-primary">Add category</button>
    {!! Form::close() !!}
@endsection