<x-header>

    <h1><a href="/">News site</a></h1>

</x-header>

<x-layout>

    @foreach ($articles as $article)

    <article>

        <img src="{{$article->image}}">

        <h1>
            <a href="/articles/{{ $article->id }}">
                {{ $article->title }}
            </a>
        </h1>

        <p>
            Published at:

            <span>{{ $article->published_at }}</span>

        </p>

    </article>

    @endforeach


</x-layout>