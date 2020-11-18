class BikesController < ApplicationController
   def show
       @bike = Bike.find(params[:id])
   end

  def index
    if params[:query].present?
      @bikes = Bike.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @bikes = Bike.all
    end
  end

end
