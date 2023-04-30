class BookingsController < ApplicationController
  def new
    @booking = Booking.new(flight_id:params[:flight][:selected], seat_number: rand(899)+100)
  end

  def create
  end
end
