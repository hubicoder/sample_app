require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the constant 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => " | Home")
    end
  end

  describe "About" do
    it "should have the constant 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end
  end
end
