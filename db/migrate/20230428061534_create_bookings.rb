class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references(:passenger)
      t.references(:flight)
      t.string :seat_number
      t.timestamps
    end
  end
end
