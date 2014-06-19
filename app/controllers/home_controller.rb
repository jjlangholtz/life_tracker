class HomeController < ApplicationController
  def index
    @schools = School.all.order(:created_at)
    @events = LifeEvent.all.order(:created_at)
    @feed = @schools + @events
    @people = Person.all
  end
end
