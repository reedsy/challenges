class User < ActiveRecord::Base
  field :name

  has_many :follows
  has_many :authors, through: :follows

  has_many :upvotes
  has_many :books, through: :upvotes

  def follow!(author)
    follows.create(user: self, author: author)
  end

  def vote!(book)
    upvotes.create(user: self, book: book)
  end
end
