class BookingsController < ApplicationController
    # before_action :find_bike, only: [ :new ]

    def new
        @booking = Booking.new
        # @user = Users.find(params[:user_id])
        @bike = Bike.find(params[:bike_id])
    end

    def create
        @bike = Bike.find(params[:bike_id])
        @user = current_user
        @booking = Booking.new(booking_params)
        @booking.bike = @bike
        @booking.user = @user
        @booking.total_price = @bike.daily_price * (@booking.end_date - @booking.start_date).to_i
        @booking.status = "pending"
        @booking.save!
        redirect_to bike_path(@bike)
    end

    private

    def booking_params
        params.require(:booking).permit( :start_date, :end_date )
    end
end
