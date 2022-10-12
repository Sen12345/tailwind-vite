@component('mail::message')
# your posts was liked

{{$liker->name}} Liked your post.

@component('mail::button', ['url' => route('posts.show',$post)])
Button Text
@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent
