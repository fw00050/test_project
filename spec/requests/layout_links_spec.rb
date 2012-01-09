require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end

  it "should have a Contact page at '/news'" do
    get '/news'
    response.should have_selector('title', :content => "News")
  end

  it "should have a Contact page at '/enquiry'" do
    get '/enquiry'
    response.should have_selector('title', :content => "Enquiry")
  end

  it "should have a Contact page at '/submit'" do
    get '/submit'
    response.should have_selector('title', :content => "Submit")
  end

  it "should have a Contact page at '/survey'" do
    get '/survey'
    response.should have_selector('title', :content => "Survey")
  end

  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end
end

