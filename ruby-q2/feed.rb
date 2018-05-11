class Feed
  attr_reader :user

  def initialize(user)
    @user = user
  end

  def retrieve
    @retrieve ||= Book.left_joins(%i[follows upvotes])
                      .where(follows: { user: user })
                      .or(Book.left_joins(%i[follows upvotes])
                              .where(upvotes: { user: user }))
                      .merge(Upvote.order(created_at: :desc))
                      .merge(Follow.order(created_at: :desc))
  end

  def refresh
    @retrieve = nil
    retrieve
  end
end
