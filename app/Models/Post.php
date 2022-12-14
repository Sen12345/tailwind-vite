<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    protected $fillable = [
        'body',
        'user_id'
    ];

    public function likeBy(User $user){
        return $this->like->contains('user_id',$user->id);
    }

    public function ownedBy(User $user){
        return $user->id === $this->user_id;
    }

    public  function user(){
      return  $this->belongsTo(User::class);
    }

    public  function like(){
        return $this->hasMany(Like::class);
    }
}
