class User < ActiveRecord::Base
  field :name

  has_many :follows
  has_many :authors, through: :follows

  has_many :upvotes
  has_many :books, through: :upvotes
end
