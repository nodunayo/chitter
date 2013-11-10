# Generated by cucumber-sinatra. (2013-11-09 14:05:35 +0000)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'lib/chitter.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'database_cleaner'

Capybara.app = Chitter

class ChitterWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  ChitterWorld.new
end

Before do 
  DatabaseCleaner.start
end

After do |scenario|
  DatabaseCleaner.clean
end

RSpec.configure do |config|

  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  config.order = 'random'

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

end
