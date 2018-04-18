### Job Description

https://angel.co/reedsy/jobs/64263-ruby-on-rails-engineer

#### Question 1

Write a paragraph about yourself, your hobbies and your major achievements in your career or study
so far.

#### Question 2

How would you implement a feed generator for a specific user, based on their upvotes and the books they follow.

The data are represented with these classes:

```
User
  - name

Author
  - name

Book
  - author
  - title
  - published_on

Upvote
  - user
  - book

Follow
  - user
  - author
```

You need to implement the retrieve method, which should get a list of books title on the right
order.

```ruby
class Feed
  def initialize(user)
    @user = user
  end

  def retrieve
    raise NotImplementedError
  end
end
```

You don't necessarily need a database, or a framework to build this feed generator, you can provide
an example with plain ruby objects.
[bonus] The feed could have a refresh method to retrieve the new books.

#### Question 3

Implement a Payment Factory to process payments with multiple adapter (Stripe, Paypal, etc...).
Your code should respect SOLID principles as much as possible.
Provide only the design without any concrete methods implementation.

#### Question 4

With the previous data schema from question 2, how would you build a recommendation system.
What kind of tools, algorithm

```
Genre
  - name
```

Books have many genres.

#### Question 5 (bonus)

Provide a simple recommendation implementation for the question 4.
