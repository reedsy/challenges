### Job Description

https://angel.co/reedsy/jobs/64263-ruby-on-rails-engineer

#### Question 1

Write a paragraph about yourself, your hobbies and your major achievements in your career or study
so far. Add another one about your professional experience and commercial projects you've been involved with.

#### Question 2

How would you implement a feed generator for a specific user, based on their upvotes and the authors
they follow.

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

You need to implement the retrieve method, which should get a list of books on the right order.

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
an example with plain ruby objects. You can use a tool like [Faker](https://github.com/stympy/faker)
to build objects.
[bonus] The feed could have a refresh method to retrieve the new books.

#### Question 3

Implement a Payment Factory to process payments with multiple adapter (Stripe, Paypal, etc...).
Your code should respect SOLID principles as much as possible.
Provide only the design without any concrete methods implementation.

#### Question 4

With the previous data schema (question 2), with a list of genres for each books, how would you
build a recommendation system.
What kind of dependencies, tools or algorithms you would like to use?

#### Question 5 (bonus)

Provide a simple implementation for recommendations in question 4.
