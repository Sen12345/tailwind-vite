@extends('layouts.app')

@section('content')
    <div class="flex justify-center">
        <div class="col-xs-12 col-sm-12 w-4/12 p-6 bg-white rounded-lg ">
            <form action="{{route('register')}}" method="post">
                @csrf
                <label for="name" class="sr-only">Your name</label>
                <input type="text"   name="name" id="name" class="w-full p-4 bg-gray-100 rounded-lg @error('name') border-red-500 @enderror" placeholder="Your name" value="{{@old('name')}}">
                @error('name')
               <div class="text-red-700">{{$message}}</div>
                @enderror
                <label for="username" class="sr-only ">Your username</label>
                <input type="text" class="w-full p-4 bg-gray-100 rounded-lg my-2 @error('username') border-red-500 @enderror" name="username" id="username" placeholder="Your username" value="{{@old('username')}}">
                @error('username')
                <div class="text-red-700">{{$message}}</div>
                @enderror
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
                <label for="password_confirmation" class="sr-only">password_confirmation</label>
                <input type="password" class="w-full p-4 bg-gray-100 rounded-lg" name="password_confirmation" id="password_confirmation" placeholder="Retype your password" value="">
                <button type="submit" name="submit" class="w-full bg-blue-500 py-3 px-4 my-3 text-white rounded ">Register</button>
            </form>
        </div>
    </div>
@endsection()
