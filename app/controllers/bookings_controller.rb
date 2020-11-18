class BookingsController < ApplicationController
    # before_action :find_bike, only: [ :new ]

    def new
        @booking = Booking.new
        # @user = Users.find(params[:id])
        @bike = Bike.find(params[:bike_id])
    end
end
