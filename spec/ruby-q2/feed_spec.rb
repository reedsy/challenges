require 'rspec'
require_relative '../support/fabricate'

describe '#feed' do
  let(:user) { Fabricate.uniq!(:user) }

  describe '#feed user' do
    context 'has correct data set from fabrication' do
      it 'has one followed author' do
        expect(user.authors.length).to equal(1)
      end

      it 'has upvotes one book' do
        expect(user.books.length).to equal(1)
      end
    end
  end
end
