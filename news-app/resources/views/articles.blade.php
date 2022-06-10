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
            Categories:

            @foreach ($article->categories as $category)
            <a href="/categories/{{ $category->slug }}">{{ $category->name }}</a> |
            @endforeach

        </p>

    </article>

    @endforeach


</x-layout>