class HomeController < ApplicationController
  def index
    @events = Event.limit(6)
  end
end
