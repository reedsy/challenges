require 'fabrication'
require_relative '../support/fabricate'

Fabricator(:book) do
  title 'Book'
  published_on 'May 1, 2018'
end

Fabricator(:sos, from: :book) do
  title 'The Speed of Sound'
  published_on 'May 1, 2018'
  author { Fabricate.uniq!(:eric) }
end

Fabricator(:soe, from: :book) do
  title 'The Sound of Echoes'
  published_on 'May 1, 2018'
  author { Fabricate.uniq!(:eric) }
end

Fabricator(:rpo, from: :book) do
  title 'Ready Player One'
  published_on 'June 5, 2012'
  author { Fabricate.uniq!(:ernest) }
end

Fabricator(:arm, from: :book) do
  title 'Armada'
  published_on 'August 31, 2016'
  author { Fabricate.uniq!(:ernest) }
end

Fabricator(:orbs, from: :book) do
  title 'Orbs'
  published_on 'August 20, 2018'
  author { Fabricate.uniq!(:nicholas) }
end
