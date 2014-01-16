require 'rspec'
require 'capybara/rspec'
require 'capybara/dsl'

@test_url = ""

RSpec.configure do |config|
  config.include Capybara::DSL
end

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.javascript_driver = :chrome

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium # using :selenium will run the tests in firefox
  config.app = "simple_rspec_test"
  config.app_host = "http://google.com/#{@test_url}"
end

