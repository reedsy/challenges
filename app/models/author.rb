class Author < ActiveRecord::Base
  field :name

  has_many :books
end
