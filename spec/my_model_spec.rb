require 'spec_helper'
require_relative 'my_model'

describe MyModel do
  it "should be true" do
    MyModel.new.the_truth.should be_true
  end
end

# describe "opening the google page", :type => :feature do
# 	it "shows a search bar" do
# 		visit('http://google.com')
# 		expect(page).to have_content "Google Search"
# 	end
# end


# describe "the signin process", :type => :feature do
#   before :each do
#     User.make(:email => 'user@example.com', :password => 'caplin')
#   end

#   it "signs me in" do
#     visit '/sessions/new'
#     within("#session") do
#       fill_in 'Login', :with => 'user@example.com'
#       fill_in 'Password', :with => 'password'
#     end
#     click_link 'Sign in'
#     expect(page).to have_content 'Success'
#   end
# end

describe "loading google in firefox", :js => false  do
  it "shows the regular form" do 
    visit "/"
    page.should have_content "Google Search"    
  end
end

describe "loading google in chrome", :js => true  do
  it "shows the regular form" do 
    visit "/"
    page.should have_content "Google Search"    
  end
end