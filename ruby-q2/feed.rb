class Feed
  def initialize(user)
    @user = user
  end

  def retrieve
    raise NotImplementedError
  end
end
