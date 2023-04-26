class FlightsController < ApplicationController
	def index
		@airports = Airport.all
		if params['commit']
   			@flight_list = Flight.includes(:arrival_airport, :departure_airport)
		end
	end
end
 