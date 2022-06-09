<x-header>

    <h1>News site</h1>

</x-header>

<x-layout>

    @foreach ($articles as $article)

    <article>
        <h1>
            <a href="/articles/{{ $article->id }}">
                {{ $article->title }}
            </a>
        </h1>

        <p>
            Categories:

            @foreach ($article->categories as $category)
            <a href="/categories/{{ $category->id }}">{{ $category->name }}</a> |
            @endforeach

        </p>

    </article>

    @endforeach


</x-layout>