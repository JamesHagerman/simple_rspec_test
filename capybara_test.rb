require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require 'rspec/expectations'


Capybara.run_server = false
Capybara.current_driver = :selenium
Capybara.app_host = 'http://www.google.com'

module MyCapybaraTest
  class Test
    include Capybara::DSL
    def test_google
      visit('/')
      page.should have_content("Google Search")
    end
  end
end

t = MyCapybaraTest::Test.new
t.test_google