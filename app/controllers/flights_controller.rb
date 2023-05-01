class FlightsController < ApplicationController
	def index
		@airports = Airport.all
        @available_flights = filtered_flights
    end

    private

    def filtered_flights
        Flight
            .all
            .then { |scope| filter_scope_by_arrival_airport(scope) }
            .then { |scope| filter_scope_by_departure_airport(scope) }
            .then { |scope| filter_scope_by_date(scope) }
    end

    def filter_scope_by_departure_airport(scope)
        code = params[:from]
        return scope unless code

        scope.includes(:departure_airport).where(departure_airport: {code: code}).references(:departure_airport)
    end

    def filter_scope_by_arrival_airport(scope)
        code = params[:to]
        return scope unless code

        scope.includes(:arrival_airport).where(arrival_airport: {code: code}).references(:arrival_airport)
    end

    def filter_scope_by_date(scope)
        date_string = params.dig(:flight, :date)
        return scope unless date_string

        date = date_string.to_date
        datetime_range = date.at_beginning_of_day...date.at_end_of_day
        scope.where(datetime: datetime_range)
    end
end
