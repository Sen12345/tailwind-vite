<?php

use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\LogoutController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\LikeController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\UserPostController;
use Illuminate\Support\Facades\Route;

Route::get('/',[\App\Http\Controllers\HomeController::class,'index'])->name('/');

Route::get('/posts',[PostController::class,'index'])->name('posts');
Route::post('/posts',[PostController::class,'store']);
Route::delete('/posts.destroy/{post}',[PostController::class,'destroy'])->name('posts.destroy');


Route::get('/user/{user:name}/posts',[UserPostController::class,'index'])->name('user.posts');
Route::get('/posts/{post}/show',[PostController::class,'show'])->name('posts.show');

Route::get('/dashboard',[DashboardController::class,'index'])->name('dashboard');
Route::get('/register',[RegisterController::class,'index'])->name('register');
Route::post('/register',[RegisterController::class,'store']);
Route::post('/logout',[LogoutController::class,'index'])->name('logout');
Route::get('/login',[LoginController::class,'index'])->name('login');
Route::post('/login',[LoginController::class,'store']);

Route::post('posts/{post}/like',[LikeController::class,'index'])->name('posts.like');
Route::post('posts/{post}/unlike',[LikeController::class,'unlike'])->name('posts.unlike');

Route::get('navbar',function(){
    return view('tailwindNavbar');
});





