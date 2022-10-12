<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
@vite('resources/js/app.js')
<link href="resources/css/app.css" rel="stylesheet">
<body class="bg-gray-200">
<nav class="p-6 bg-white flex sm:justify-between mb-6">
    <ul class="flex items-center ">
        <li class="p-3">Home</li>
        <li class="p-3"><a href="{{route('dashboard')}}">Dashboard</a></li>
        <li class="p-3"><a href="{{route('posts')}}">Posts</a></li>
    </ul>
    <ul class="flex items-center ">
        @if(auth()->user())
        <li class="p-3">{{auth()->user()->name}}</li>
            <li class="p-3">
                <form action="{{route('logout')}}" method="post">
                    @csrf
                   <button type="submit" class="p-3">Logout</button>
                </form>
            </li>
        @else
            <li class="p-3"><a href="{{route('login')}}">Login</a></li>
            <li class="p-3"><a href="{{route('register')}}">Register</a></li>
        @endif
    </ul>
</nav>
@yield('content')
</body>
</html>
