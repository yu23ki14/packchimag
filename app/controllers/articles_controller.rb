class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
    @articles = Article.order("RANDOM()").limit(2)
  end
end
