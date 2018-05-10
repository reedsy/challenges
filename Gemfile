# frozen_string_literal: true

source 'https://rubygems.org'

gem 'activerecord'
gem 'mini_record', github: 'dan-watson/mini_record', branch: 'master'
gem 'sqlite3'

group :development do
  gem 'byebug', '~> 9.0', '>= 9.0.6'
  gem 'guard-rspec', require: false
  gem 'guard-rubocop', require: false
  gem 'rubocop', require: false
end

group :test do
  gem 'database_cleaner'
  gem 'fabrication'
  gem 'rspec'
  gem 'shoulda-matchers', '~> 3.1'
end
