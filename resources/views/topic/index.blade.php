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
        <div class="col-8 bg-info">
            @if($id != 0)
                @foreach($blocks as $block)
                    <div>
                        <div>
                            <h2 class-"my-2">{{ $block -> title }}</h2>

                            @if ($block -> imagepath !== '')
                                <img src="{{asset($block->imagepath)}}" style="width:100px" alt="" class="float-left img-fluid">
                            @endif

                            <p class="lead mb-4">{{ $block->content }}</p>

                            {!! Form::open(['route'=>['block.destroy', $block->id]]) !!}
                                {!! Form::hidden('_method', 'DELETE') !!}
                                <button type="submit" class="btn btn-danger float-left">DELETE</button>
                            {!! Form::close() !!}

                            {!! Form::model($block, ['route'=>['block.update', $block->id]]) !!}
                                {!! Form::hidden('_method', 'PUT') !!}
                                <a href="{{ url('block/'.$block->id.'/edit') }}" class="btn btn-success">Update</a>
                            {!! Form::close() !!}

                            <hr class="my-4">
                        </div>
                    </div>
                @endforeach
            @endif
        </div>
    </div>
@endsection