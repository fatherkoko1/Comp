require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Dal ClassPort'" do
      visit '/static_pages/home'
      page.should have_selector('h1',
                :text => 'ClassPort')

    end

    it "should have the title 'Home'" do
    page.should have_selector('title',
                :text => "ClassPort | Home")
    end


  end


describe "Help page" do
  it "should have the content 'help'" do
    visit '/static_pages/help'
    page.should have_content('help')
  end

  it "should have the title 'Help'" do
    page.should have_selector('title',
                              :text => "ClassPort | Help")
  end
end

  describe "About page" do
    it  "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end

    it "should have the title 'About Us'" do
      page.should have_selector('title',
                                :text => "ClassPort | About Us")
    end
  end
end