@extends('layouts.app')

@section('content')
    <div class="flex justify-center">

        <div class="w-4/12 bg-white ">
            <div class="p-3">
                <h1>{{$user->name}}</h1>
                Has {{$user->posts->count()}} {{Str::plural('Post',$user->posts->count())}} and Received {{$user->receivedLikes->count()}} Likes
            </div>
            <hr>
            <div class="p-3  rounded-lg mb-1">
            @if($posts->count())
                @foreach($posts as $post)
                    <x-post :post="$post" />
                @endforeach
                {{$posts->links()}}
            @else
                {{$user->name}} does not have any post
            @endif
        </div>
    </div>


@endsection()


