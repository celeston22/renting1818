class BookingsController < ApplicationController
    # before_action :find_bike, only: [ :new ]

    def new
        @booking = Booking.new
        # @user = Users.find(params[:user_id])
        @bike = Bike.find(params[:bike_id])
    end
end
