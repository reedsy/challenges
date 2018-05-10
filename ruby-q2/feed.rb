class Feed
  attr_reader :user

  def initialize(user)
    @user = user
  end

  # This is why I don't like Rubocops default rules
  # %i inside joins looks nasty and indentation is pretty horrid also
  # Code style below for the sake of the linter
  def retrieve
    Book.left_joins(%i[follows upvotes])
        .where(follows: { user: user })
        .or(Book.left_joins(%i[follows upvotes])
      .where(upvotes: { user: user }))
  end
end
