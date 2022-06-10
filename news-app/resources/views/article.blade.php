<x-layout>

    <article>
        <h1>
            {{ $article->title }}
        </h1>

        <p>
            By {{ $article->author }}
        </p>

        <p>
            Categories:

            @foreach ($article->categories as $category)
            <a href="/categories/{{ $category->slug }}">{{ $category->name }}</a> |
            @endforeach

        </p>

        <div>
            {!! $article->content !!}
        </div>
    </article>

    <a href="/">Go back</a>

</x-layout>