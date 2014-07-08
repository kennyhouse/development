require 'spec_helper'

describe "Static pages" do

	describe "Home page" do
	  it "should have the content 'Development App'" do
	  	visit '/static_pages/home'
	  	page.should have_selector('h1', :text => 'Development App')
	  end

	  it "should have the title 'Home'" do
	  	visit '/static_pages/home'
	  	page.should have_selector('title', :text => "Ruby on Rails Tutorial Development App | Home")
	  end
	end

	describe "Help page" do
		it "should have the conent help" do
			visit '/static_pages/help'
			page.should have_content('Help')
		end
	end

	describe "About page" do
		it "should have the content about" do
			visit '/static_pages/about'
			page.should have_content('About')
		end
	end
end