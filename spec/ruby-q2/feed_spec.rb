require 'rspec'
require_relative '../support/fabricate'
require_relative '../../ruby-q2/feed'

describe '#feed' do
  let(:user) { Fabricate.uniq!(:user) }
  let(:feed) { Feed.new(user) }

  describe '#feed user' do
    context 'has correct data set from fabrication' do
      it 'has one followed author' do
        expect(user.authors.length).to equal(1)
      end

      it 'has upvoted one book' do
        expect(user.books.length).to equal(1)
      end
    end
  end

  describe '#retrieve' do
    it 'has the following titles in order' do
      titles = ['Orbs', 'The Speed of Sound', 'The Sound of Echoes']
      expect(feed.retrieve.map(&:title)).to eq(titles)
    end
  end

  describe '#refresh' do
    it 'has the following titles in order' do
      user.vote!(Fabricate.uniq!(:arm))
      titles = ['Armada', 'Orbs', 'The Speed of Sound', 'The Sound of Echoes']
      expect(feed.refresh.map(&:title)).to eq(titles)
    end
  end
end
