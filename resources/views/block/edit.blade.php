@extends('layouts.master')

@section('menu')
    @parent
@endsection

@section('content')

<div class="container">
    <h3 class="my-3">Edit the block</h3>
    {!! Form::model($block, ['route'=>['block.update', $block->id], 'method'=>'PUT', 'files'=>true]) !!}
        <div class="form-group">
            {!! Form::label('topicid', 'Select Topic') !!}
            {!! Form::select('topicid', $topics, $block->topicid, ['class'=>'form-control']) !!}
        </div>
        <div class="form-group">
            {!! Form::label('title', 'Edit title') !!}
            {!! Form::text('title', $block->title, ['class'=>'form-control']) !!}
        </div>
        <div class="form-group">
            {!! Form::label('content', 'Edit content') !!}
            {!! Form::textarea('content', $block->content, ['class'=>'form-control', 'style'=>'height:100px']) !!}
        </div>
        <div class="form-group">
            {!! Form::label('imagepath', 'Edit image') !!}
            {!! Form::file('imagepath', '', $block->title, ['class'=>'form-control']) !!}
        </div>
        
        {!! Form::submit('Save edit block', ['class'=>'btn btn-primary']) !!}
    {!! Form::close() !!}
    </div>
@endsection

@section('footer')
    @parent
@endsection