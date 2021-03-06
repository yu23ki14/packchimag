class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_months
  
  private
    def set_months
      @monthsall = Month.all.order("year DESC").order("month DESC")
    end
end
