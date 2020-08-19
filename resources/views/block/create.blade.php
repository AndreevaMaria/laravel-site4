@extends('layouts.app')

@section('content')
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
    <h4 class="label label-info">{{ $page }}</h4>
    {!! Form::model($block, ['action'=>'BlockController@store', 'method'=>'post', 'files'=>true, 'class'=>'form']) !!}
    <div class='form-group row'>
        {!! Form::label('topicid', 'Select topic', ['class'=>'col-md-2']) !!}
        {!! Form::select('topicid', $topics, ['class'=>'col-md-8']) !!}
        <a href={{'url(topic/create)'}} type="submit" class="btn btn-info col-md-2 ml-5">Add new Topic</a>
    </div>
    <div class='form-group row'>
        {!! Form::label('title', 'Block title', ['class'=>'col-md-2']) !!}
        {!! Form::text('title', '', ['class'=>'form-control col-md-8']) !!}
    </div>
    <div class='form-group row'>
        {!! Form::label('block_content', 'Add content', ['class'=>'col-md-2']) !!}
        {!! Form::textarea('block_content', '', ['class'=>'form-control col-md-8']) !!}
    </div>
    <div class='form-group row'>
        {!! Form::label('imagepath', 'Add image', ['class'=>'col-md-2']) !!}
        {!! Form::file('imagepath', '', ['class'=>'form-control col-md-8']) !!}
    </div>
    <button type="submit" class="btn btn-primary">Add Block</button>
    {!! Form::close() !!}
@endsection

@section('footer')
    @parent
@endsection