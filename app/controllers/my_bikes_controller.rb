class MyBikesController < ApplicationController

  def new
    @my_bike = Bike.new
  end

  def index
    @my_bikes = Bike.all.where(user: current_user)
    @bikes = Booking.all
  end

  # POST /bikes
  def create
    @my_bike = Bike.new(my_bike_params)
    @my_bike.user = current_user
    @my_bike.enable = true
    if @my_bike.save!
      redirect_to @my_bike, notice: 'The bicycle was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @my_bike.update(my_bike_params)
      redirect_to @my_bike, notice: 'The bicycle was successfully updated.'
    else
      render :edit
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def my_bike_params
    params.require(:bike).permit(:title, :bike_type, :description, :daily_price, :address_line_1, :address_line_2, :zipcode, :image, :city, :country)
  end
end
