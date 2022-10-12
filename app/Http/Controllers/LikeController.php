<?php

namespace App\Http\Controllers;

use App\Mail\PostLike;
use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class LikeController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(Post $post, Request $request){
        if($post->likeBy($request->user())) {
            return back()->with('error','Sorry you are not allowed to like the same posts more than once');
        }
            $post->like()->create([
                'user_id' => $request->user()->id,

            ]);
        if($post->like()->onlyTrashed()->where('user_id',$request->user()->id)->count()){
            Mail::to($post->user)->send(new PostLike(auth()->user(), $post));
        }


            return back();
        }

    public function unlike(Post $post, Request $request){
        if(!$post->likeBy($request->user())) {
            return back()->with('error','Sorry you are not allowed to like the same posts more than once');
        }
        $post->like()->delete($post->id);

        return back();
    }

}
