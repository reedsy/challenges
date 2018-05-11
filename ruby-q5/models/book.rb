module Graph
  class Book
    include Neo4j::ActiveNode

    property :title
    property :genre

    has_many :in, :users, rel_class: 'Graph::Like'
  end
end
