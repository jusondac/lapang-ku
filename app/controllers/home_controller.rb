class HomeController < ApplicationController
  def index
    start_week = DateTime.now.beginning_of_week
    end_week = DateTime.now.end_of_week
    @dates = (start_week..end_week).to_a
    
  end
end
