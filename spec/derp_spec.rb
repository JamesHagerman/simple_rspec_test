require 'spec_helper'

describe "test name" do
	it "some part of test" do
		visit "/"
		page.should have_content "derpfish" 
	end
end