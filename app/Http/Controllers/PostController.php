<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;
use Tests\TestCase;

class PostController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(){
        $posts = Post::orderBy('created_at','DESC')->with('user','like')->paginate(5);
        return view('posts.index',['posts' => $posts]);
    }

    public function store(Request $request){
        $this->validate($request,[
            'body' => 'required'
        ]);

       auth()->user()->posts()->create([
           'body' => $request->body
       ]);
        return back();
    }

    public function show(Post $post){

        return view('posts.show',[
            'post' => $post
        ]);
    }

    public function destroy(Post $post){
        $this->authorize('delete',$post);
        $post->delete();
        return back();
    }

}
