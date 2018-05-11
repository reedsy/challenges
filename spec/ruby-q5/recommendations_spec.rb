require 'rake'
require 'neo4j'

require_relative '../../ruby-q5/boot'
require_relative '../../ruby-q5/models/like'
require_relative '../../ruby-q5/models/user'
require_relative '../../ruby-q5/models/book'

describe '#recommendations_engine' do
  let(:user) { Graph::User.find_by(name: 'Dan') }

  before(:all) do
    silence do
      Rake::Task['neo4j:migrate'].invoke
    end
    require_relative './data_helper.rb'
  end

  context '#recommendations' do
    it 'makes the correct recommendations' do
      books = ['Farcry', 'How to test']
      expect(user.recommendations.map(&:title)).to eq(books)
    end
  end
end
