class NewsController < ApplicationController
  def index
    @articles = Article.all
  end
end
