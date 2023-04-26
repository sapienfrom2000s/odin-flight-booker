class FlightsController < ApplicationController
	def index
		@airports = Airport.all
		if params['commit']	
   			all_flights = Flight.includes(:arrival_airport, :departure_airport, :aircraft)
   			@available_flights = all_flights.select do |flight|
			   flight.arrival_airport.code == params[:to] and flight.departure_airport.code == params[:from] and\
 					flight.datetime > params[:flight][:date] and flight.datetime < params[:flight][:date].to_date+1
 			end
		end
	end
end
 