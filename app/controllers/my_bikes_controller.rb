class MyBikesController < ApplicationController
  # GET /my_bikes/new
  def new
    @my_bike = Bike.new
  end

  # POST /bikes
  def create
    @my_bike = Bike.new(my_bike_params)
    @my_bike.user = current_user
    @my_bike.enable = true
    if @my_bike.save!
      redirect_to @my_bike, notice: 'My bike was successfully created.'
    else
      render :new
    end
  end

  private

 # Only allow a trusted parameter "white list" through.
  def my_bike_params
    params.require(:bike).permit(:title, :bike_type, :description, :daily_price, :address_line_1, :address_line_2, :zipcode, :city, :country)
  end
end
