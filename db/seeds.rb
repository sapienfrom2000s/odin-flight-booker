# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

airport_data = [['Chhatrapati Shivaji Maharaj International Airport', 'BOM'],
                ['Indira Gandhi International Airport', 'DEL'],
                ['Kempegowda International Airport', 'BLR'],
                ['Chennai International Airport', 'MAA'],
                ['Netaji Subhas Chandra Bose International Airport', 'CCU'],
                ['Rajiv Gandhi International Airport', 'HYD'],
                ['Cochin International Airport', 'COK'],
                ['Sardar Vallabhbhai Patel International Airport', 'AMD']]
aircraft_data = ['IndiGo A320', 'IndiGo A321neo', 'Air India Boeing 737',
                 'Air India Boeing 737 MAX', 'SpiceJet Bombardier Q400',
                 'Air India Boeing 777',  'Air India 787 Dreamliner',
                 'Vistara Airbus A320',  'GoAir Airbus A320neo', 'AirAsia India Airbus A320',
                 'Alliance Air ATR 72',  'TruJet ATR 72', 'Star Air Embraer E145',
                 'Air India Express Boeing 737-800', 'Zoom Air Bombardier CRJ200']
airport_data.each do |name, code|
	Airport.create(name:"#{name}",code:"#{code}")
end

aircraft_data.each do |name|
	Aircraft.create(name:"#{name}")
end

dates_adder = *(1..10)
hr = *(0..23)
min = [0,15,30]

aircraft_samples = *(1..15)
airport_samples = *(1..10)

dates_adder.each do |adder|
    15.times do 
        Flight.create(datetime:DateTime.civil(2023,5,adder,hr.sample,min.sample),\
         aircraft_id:airport_samples.sample,\
         arrival_airport_id:airport_samples.sample,\
         departure_airport_id:airport_samples.sample)
    end
end