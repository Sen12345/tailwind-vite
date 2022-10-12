@extends('layouts.app')

@section('content')
    <div class="flex justify-center">
        <div class="col-xs-12 col-sm-12 w-4/12 p-6 bg-white rounded-lg ">
            @if(session('status'))
                {{ session('status') }}
            @endif
            <form action="{{route('login')}}" method="post">
                @csrf
                <label for="email" class="sr-only">Your email</label>
                <input type="email" class="w-full p-4 bg-gray-100 rounded-lg @error('email') border-red-500 @enderror" name="email" id="email" placeholder="Your email" value="{{@old('email')}}">
                @error('email')
                <div class="text-red-700">{{$message}}</div>
                @enderror
                <label for="password" class="sr-only">Your password</label>
                <input type="password" class="w-full p-4 bg-gray-100 rounded-lg my-2 @error('password') border-red-500 @enderror" name="password" id="password" placeholder="Your password" value="">
                @error('password')
                <div class="text-red-700">{{$message}}</div>
                @enderror
                <div class="mb-4">
                    <div class="flex items-center ">
                        <label for="remember">Remember me</label>
                        <input class="mx-2 mt-1" type="checkbox" name="remember" id="remember" class="mr-2">
                    </div>
                </div>
                <button type="submit" name="submit" class="w-full bg-blue-500 py-3 px-4 my-3 text-white rounded ">Login</button>
            </form>
        </div>
    </div>
@endsection()
