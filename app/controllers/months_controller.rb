class MonthsController < ApplicationController
  def index
  end
  
  def show
    @month = Month.find(params[:id])
    @articles = @month.articles.order(created_at: :desc)
  end
end
