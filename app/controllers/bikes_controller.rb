class BikesController < ApplicationController

  def index
    if params[:query].present?
      @bikes = Bike.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @bikes = Bike.all
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

  # Emile pour Tests
  # def show
  #   @bike = Bike.find(params[:id])
  # end

end
