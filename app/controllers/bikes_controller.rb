class BikesController < ApplicationController

  def index
    if params[:query].present?
      @bikes = Bike.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @bikes = Bike.all
    end
  end

  # Emile pour Tests
  # def show
  #   @bike = Bike.find(params[:id])
  # end

end
