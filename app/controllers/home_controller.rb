class HomeController < ApplicationController
  def index
    @dashboard = Dashboard::DashboardHandler.new
  end
end
