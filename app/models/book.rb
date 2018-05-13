class Book < ActiveRecord::Base
  field :title
  field :published_on, as: :date

  belongs_to :author

  has_many :upvotes
  has_many :follows, through: :author
end
