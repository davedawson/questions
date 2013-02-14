require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do 
	it "should have the content 'Questions App'" do
		visit '/static_pages/home'
		page.should have_content('Questions App')
	end
  end
  describe "Help page" do
  	it "should have the content 'Questions Help'" do
  		visit '/static_pages/help'
  		page.should have_content('Help')
  	end
  end
end

