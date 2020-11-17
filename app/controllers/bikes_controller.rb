class BikesController < ApplicationController

  def index
    @bikes = Bike.all

    # with "search a Bike" feature
    # @bikes = Bike.search(params[:search])
  end

end
