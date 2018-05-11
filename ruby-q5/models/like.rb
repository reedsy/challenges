module Graph
  class Like
    include Neo4j::ActiveRel

    from_class 'Graph::User'
    to_class   'Graph::Book'
  end
end
