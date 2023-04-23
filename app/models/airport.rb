class Airport < ApplicationRecord
	has_many :departing_flights, class_name: "Flight", foreign_key: "departure_airport_id"
end
