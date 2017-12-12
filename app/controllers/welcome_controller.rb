class WelcomeController < ApplicationController
  def index
    @articles = Article.order("created_at DESC").last(4)
  end
end
