@extends('layouts.app')

@section('content')
    <div class="row mr-2 con">
        <div class="col-3">
            <div class="d-flex justify-content-end">
                <!-- форма поиска по топикам -->
                {!! Form::open(['action'=>'TopicController@search', 'class'=>'form', 'method'=>'get']) !!}
                <div class="input-group d-block">
                    {!! Form::text('searchform', '', ['class'=>'form-controll', 'placeholder'=>'Enter topic']) !!}
                    <button type="submit" class="btn btn-success shadow rounded">Search</button>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>  
        <div class="col-9">
            <div class="d-flex justify-content-end">
                <!-- форма поиска по блокам -->
                {!! Form::open(['action'=>'BlockController@search', 'class'=>'form', 'method'=>'get']) !!}
                <div class="input-group d-block">
                    {!! Form::text('searchform', '', ['class'=>'form-controll', 'placeholder'=>'Enter requered']) !!}
                    <button type="submit" class="btn btn-success shadow rounded">Search</button>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
    <div class="row mr-2">
        <div class="col-3 mt-2">
            <!-- список топиков -->
            <ul class="list-unstyled d-block">
                @foreach($topics as $topic)
                <li>
                    <a class="btn btn-secondary w-100 text-left my-1 p-2 text-decoration-none text-white" href="{{url('topic/'.$topic->id)}}">{{$topic->topicname}}</a>
                </li>
                @endforeach
            </ul>
        </div>
        <div class="col-9 bg-light position-relative pt-4 shadow rounded" style="height: 75vh; overflow-y: scroll;">
            @if($id != 0)
            <h3 class="ml-3 mb-2">{{ $topicname }}</h3>
                @foreach($blocks as $block)
                    <div>
                        <div>
                            <h5 class="ml-3">{{ $block -> title }}</h5>
                            <div class="media mt-2 pl-3">
                                @if ($block -> imagepath !== '')
                                    <img src="{{asset($block->imagepath)}}" style="height:150px" alt="" class="d-flex mr-2 mb-2">
                                @endif
                                <div class="media-body lead">{{ $block->content }}</div>
                            </div>
                            @auth
                                @if(Auth::user()->isAdmin()) 
                                <!-- Это видит только админ -->
                                
                                <div class="row">
                                    <div class="d-inline-flex col-12 justify-content-end my-1">
                                        {!! Form::open(['route'=>['block.destroy', $block->id]]) !!}
                                            {!! Form::hidden('_method', 'DELETE') !!}
                                            <button type="submit" class="btn btn-danger shadow rounded">DELETE</button>
                                        {!! Form::close() !!}

                                        <a href="{{ url('block/'.$block->id.'/edit') }}" class="btn btn-success shadow rounded ml-2">Update</a>
                                    </div>
                                @endif
                            @endauth
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