@extends('layout')

@section('content')
<article>
    <h1>
        {{ $post->title }}
        <!-- It is the same as: -->
        <!-- <?= $post->title; ?> -->
    </h1>

    <p>
        By <a href="#">Sara Mansori</a> in <a href="#">{{ $post->category->name }}</a>
    </p>

    <div>
        <!-- Exclamation works when we are dealing with HTML -->
        {!! $post->body!!}
    </div>
</article>

<a href="/">Go back</a>
@endsection