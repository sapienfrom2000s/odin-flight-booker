class FlightsController < ApplicationController
	def index
		@airports = Airport.all
		if params['commit']
   			# flight_list = active_query
		end
	end
end
 