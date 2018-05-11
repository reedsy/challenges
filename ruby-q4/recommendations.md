# Recommendation System

## The Problem

Recommendation systems are very tricky to implement with SQL, if there is any substantial amount of data involved. 

This is due to the complex relationships that have to be queried when finding recommendations.

In this convoluted *pseudo code* below we can see that it gets tricky.

```ruby
  # Sorry for the pseudo code but attempting this in ActiveRecord would be nasty/crazy.

  in_my_liked_books = [1,2,3,4]
  in_my_liked_genres = ['Fantasy', 'Development']
  Book.where.not(id: in_my_liked_books).but.where(genre: in_my_liked_genres)
```

I would not even begin to attempt that using active record. We would more than likely end up with N+1's. But even if we would make some complex joins (to remove the n+1's) eventually after huge data sets entered the database it would become slow.

## The Solution

[Neo4J](https://neo4j.com/) is a Graph database that manages data in connected structures, allowing for easy access to loosely but complexly related data.

When running the test suite your have already run a test to check for recommended books using Neo4j. The code example doesn't have the authors (wanted to simplify it a little), but does have genres and user likes.

The code in the [ruby-q5 folder](/ruby-q5)  checks to see which books other users liked in the same genres as your liked books... Wow, that sounds a little complex. 

Not for a graph database which is very efficient at executing these kinds of queries, by traversing nodes across the graph.

Note: One thing I would probably change with the implementation would be to weight the order with popularity calculation.
