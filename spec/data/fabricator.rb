require 'fabrication'
require_relative './user_fabricator'
require_relative './author_fabricator'
require_relative './book_fabricator'
require_relative '../support/fabricate'

class Fabricator
  def self.create!
    # User's relational data
    user = Fabricate.uniq!(:user)
    user.follow!(Fabricate.uniq!(:eric))
    user.vote!(Fabricate.uniq!(:orbs))

    # Data not related to user
    Fabricate.uniq!(:ernest)
    Fabricate.uniq!(:nicholas)

    Fabricate.uniq!(:sos)
    Fabricate.uniq!(:soe)
    Fabricate.uniq!(:rpo)
    Fabricate.uniq!(:arm)
  end
end
