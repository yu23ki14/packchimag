class WelcomeController < ApplicationController
  def index
    @articles = Article.order("created_at").last(4)
    @month = Month.last
  end
end
