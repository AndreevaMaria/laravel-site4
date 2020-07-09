<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
</head>
<body>
    @section('menu')
        <div class="container-fluid">
            <div class="row">
                <nav class="mainmenu col-12">
                    <ul class="nav nav-pills nav-fill">
                        <li class="nav-item">
                            <a href="{{url('index')}}" class="nav-link {{$page === 'Main page' ? 'active' : ''}}">
                                Main page</a>
                        </li>
                        <li class="nav-item">
                            <a href="{{url('create')}}" class="nav-link {{$page === 'Forms' ? 'active' : ''}}">
                                Content control</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    @show
    <div class="col-12">
        @yield('content')
    </div>


   
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="{{ asset('js/bootstrap.min.js') }}"></script>
</body>
</html>