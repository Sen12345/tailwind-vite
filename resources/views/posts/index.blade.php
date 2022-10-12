@extends('layouts.app')

@section('content')
<div class="flex justify-center">
    <div class="w-4/12 p-6 bg-white rounded-lg mb-4">
        <form action="{{route('posts')}}" method="post">
            @csrf
            <div class="mb-4 ">
                <label for="body" class="sr-only">Body</label>
                <textarea name="body" id="body" cols="30" rows="4" class="@error('body') border-red-700 @enderror p-3 w-full bg-gray-100 border-gray-200 rouded-lg"></textarea>
            </div>
            @error('body')
            <div class="text-red-500">
                {{$message}}
            </div>
            @enderror
            <button type="submit" name="submit" class="w-full bg-blue-500 py-3 px-4 my-3 text-white rounded ">Posts</button>

        </form>
    </div>
</div>
<div class="flex  justify-center">
    <div class="w-4/12 bg-white p-6">

        @if($posts->count())
            @foreach($posts as $post)
                <x-post :post="$post" />
            @endforeach
            {{$posts->links()}}
        @else
            There are no posts
        @endif
    </div>
</div>
@endsection()

