class Flight < ApplicationRecord
	belongs_to :departure_airport, class_name: "Airport", foreign_key: "departure_airport_id"
	belongs_to :arrival_airport, class_name: "Airport", foreign_key: "arrival_airport_id"
	validate :arrival_and_departure_shouldnt_be_same

	private

	def arrival_and_departure_shouldnt_be_same
		errors.add('departure and arrival cant be same') if departure_airport_id == arrival_airport_id
	end
end
