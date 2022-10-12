@props(['post' => $post])
<div>
    <div class="mb-4 ">
        <div class="post  w-full">{{$post->body }} </div><div class="name w-full text-small text-blue-500"> <a href="{{route('user.posts',$post->user)}}">{{ $post->user->name }}</a>  {{ $post->created_at->diffForHumans()}}</div>
        <hr>
        <div class="flex">
            <form action="{{route('posts.like',$post->id)}}" method="post">
                @csrf
                <button type="submit" name="like" class="text-green-500">{{$post->like->count()}} {{Str::plural('like',$post->like->count())}}</button>
            </form>
            <form action="{{route('posts.unlike',$post->id)}}" method="post" class="px-2">
                @csrf
                <button type="submit" name="unlike" class="text-red-500">UnLike</button>
            </form>
            @can('delete',$post)
                <div>
                    <form action="{{route('posts.destroy',$post)}}" method="post">
                        @csrf
                        @method('DELETE')
                        <input type="submit" class="text-blue-500" value="Delete">
                    </form>
                </div>
            @endcan
        </div>
        @if(session('error'))
            <div class="text-red-500"> {{session('error')}}</div>
        @endif
    </div>

</div>
