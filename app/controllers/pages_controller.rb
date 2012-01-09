class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def news
    @title = "News"
  end

  def enquiry
    @title = "Enquiry"
  end

  def submit
    @title = "Submit"
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end

  def survey
    @title = "Survey"
  end

end
