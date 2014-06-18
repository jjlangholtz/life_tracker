class HomeController < ApplicationController
  def index
    @schools = School.all
    @events = LifeEvent.all
  end
end
