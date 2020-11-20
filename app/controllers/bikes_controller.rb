class BikesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  def show
    @bike = Bike.find(params[:id])
    @user = @bike.user
    @booking = Booking.new
  end

  def index
    if params[:query].present?
      @bikes = Bike.search_by_title_and_bike_type_and_description(params[:query]).order(created_at: :desc)
    else
      @bikes = Bike.all.order(created_at: :desc)
    end

    # 18.11.2020 the `geocoded` scope filters only bikes with coordinates (latitude & longitude)
    @markers = @bikes.geocoded.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { bike: bike })
    }
    end
  end

  def edit
    @bike = Bike.find(params[:id])
  end

  def update
    if @bike.update(bike_params)
      redirect_to @bike, notice: 'The bicycle was successfully updated.'
    else
      render :edit
    end
  end

  private

  def bike_params
    params.require(:bike).permit(:title, :bike_type, :description, :daily_price, :address_line_1, :zipcode, :city, :country)
  end

end
