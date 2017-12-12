class MonthsController < ApplicationController
  def index
  end
  
  def show
    @month = Month.find(params[:id])
    @articles = @month.articles
  end
end
