module Graph
  class User
    include Neo4j::ActiveNode

    property :name

    has_many :out, :books, rel_class: 'Graph::Like'

    def like!(book)
      Graph::Like.create!(from_node: self, to_node: book)
    end

    def recommendations
      @recommendations ||=
        books_with_collections
        .books
        .users
        .books(:recommendations, nil, rel_length: 1)
        .where_not('ID(recommendations) IN ids')
        .where('recommendations.genre IN genres')
        .order(:title)
        .pluck('DISTINCT recommendations')
    end

    private

    def books_with_collections
      @books_with_collections ||=
        as(:user)
        .books
        .query_as(:books)
        .with(:user, ids: 'collect(ID(books))', genres: 'collect(books.genre)')
        .proxy_as(User, :user)
    end
  end
end
