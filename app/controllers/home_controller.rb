class HomeController < ApplicationController
  def index
    @schools = School.all
    @events = LifeEvent.all
    @people = Person.all
  end
end
