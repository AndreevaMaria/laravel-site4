@extends('layouts.master')

@section('menu')
    @parent
@endsection

@section('content')
    <div class="row container">
        <div class="col-3">
            <ul class="list-unstyled d-block">
                @foreach($topics as $topic)
                <li class="btn btn-dark w-100 text-left my-1 p-2">
                    <a class="text-decoration-none text-white" href="{{url('topic/'.$topic->id)}}">{{$topic->topicname}}</a>
                </li>
                @endforeach
            </ul>
        </div>
        <div class="col-9 bg-info">
            @if($id != 0)
            <h3>{{$topic->topicname}}</h3>
                @foreach($blocks as $block)
                    <div>
                        <div>
                            <h5 class-"my-2">{{ $block -> title }}</h5>
                            <div class="media">
                                @if ($block -> imagepath !== '')
                                    <img src="{{asset($block->imagepath)}}" style="height:150px" alt="" class="d-flex mr-2 mb-2">
                                @endif
                                <div class="media-body lead">{{ $block->content }}</div>
                            </div>
                            <div class="row">
                                <div class="d-inline-flex col-12 justify-content-end my-1">
                                    {!! Form::open(['route'=>['block.destroy', $block->id]]) !!}
                                        {!! Form::hidden('_method', 'DELETE') !!}
                                        <button type="submit" class="btn btn-danger shadow rounded">DELETE</button>
                                    {!! Form::close() !!}

                                    {!! Form::model($block, ['route'=>['block.update', $block->id]]) !!}
                                        {!! Form::hidden('_method', 'PUT') !!}
                                        <a href="{{ url('block/'.$block->id.'/edit') }}" class="btn btn-success shadow rounded ml-2">Update</a>
                                    {!! Form::close() !!}
                                </div>
                            </div>
                            <hr class="my-4">
                        </div>
                    </div>
                @endforeach
            @endif
        </div>
    </div>
@endsection
@section('footer')
    @parent
@endsection