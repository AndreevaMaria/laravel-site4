<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token сессия Ларавель-->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
    <!--<link href="{{ asset('/css/app.css') }}" rel="stylesheet">-->
    <script>
        window.Laravel = <?php echo json_encode([
            'csrfToken' => csrf_token(),
        ]); ?>
    </script>
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-expand-lg navbar-light bg-light mb-2">
            <div class="container ">
                <div class="navbar-header">

                    <!-- Collapsed Hamburger -->
                    <button type="button" class="navbar-toggler navbar-toggler-right" data-toggle="collapse" data-target="#app-navbar-collapse">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <!-- Branding Image -->
                  <!--  <a class="navbar-brand" href="{{ url('/') }}">
                        {{ config('app.name', 'Laravel') }}
                    </a>-->
                </div>
{{ $page = null }}
                <div class="collapse navbar-collapse d-flex justify-content-between" id="app-navbar-collapse">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto nav-pills nav-fill mb-2 mt-2 mt-lg-0 flex-grow-1">
                        <li class="nav-item active">
                            <a href="{{url('topic')}}" class="nav-link {{$page === 'Main page' ? 'active' : ''}}">
                                Main page</a>
                        </li>
                        @auth
                            @if(Auth::user()->isAdmin())
                            <!-- Это видит только админ -->
    
                        <li class="nav-item">
                            <a href="{{url('block/create')}}" class="nav-link {{$page === 'Forms' ? 'active' : ''}}">
                                Content control</a>
                        </li>
                        <li class="nav-item">
                            <a href="{{url('topic/create')}}" class="nav-link {{$page === 'Topics' ? 'active' : ''}}">
                                Topic Control</a>
                        </li>
                        
                            @endif
                        @endauth
                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="list-unstyled list-inline">
                        <!-- Authentication Links -->
                        @if (Auth::guest())
                            <li class="list-inline-item"><a href="{{ url('/login') }}" class="text-decoration-none btn btn-outline-secondary">Login</a></li>
                            <li class="list-inline-item"><a href="{{ url('/register') }}" class="text-decoration-none btn btn-outline-secondary">Register</a></li>
                        @else
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <ul class="dropdown-menu" role="menu">
                                    <li>
                                        <a href="{{ url('/logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            Logout
                                        </a>

                                        <form id="logout-form" action="{{ url('/logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                    </li>
                                </ul>
                            </li>
                        @endif
                    </ul>
                </div>
            </div>
        </nav>
        <div class="col-12">
        @yield('content')
        </div>
    </div>
    @section('footer')
    <div class="footer bg-light text-center my-3">	&copy; Summer 2020</div>
    @show

    <!-- Scripts -->
    <script src="/js/app.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="{{ asset('js/bootstrap.min.js') }}"></script>
</body>
</html>
