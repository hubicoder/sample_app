require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the title 'Home'" do
      visit home_path
      page.should have_selector('title', text: " | Home")
    end
  end

  describe "About Us.." do
    it "should have the constant 'About'" do
      visit about_path
      page.should have_content('About')
    end
  end

  describe "Contact.." do
    it "should have the constant 'Contact'" do
      visit contact_path
      page.should have_content('Contact')
    end
  end
end
