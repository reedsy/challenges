class Book < ActiveRecord::Base
  field :title
  field :published_on, as: :date

  belongs_to :author
end
