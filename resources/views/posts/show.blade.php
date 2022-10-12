@extends('layouts.app')

@section('content')
    <div class="flex justify-center">
        <div class="w-4/12 p-6 bg-white rounded-lg ">
            <x-post :post="$post" />
        </div>
    </div>
@endsection()



