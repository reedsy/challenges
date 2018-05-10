class Author < ActiveRecord::Base
  field :name

  has_many :books
  has_many :follows
end
