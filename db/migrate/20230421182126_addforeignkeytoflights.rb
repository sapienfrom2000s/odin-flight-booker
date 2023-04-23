class Addforeignkeytoflights < ActiveRecord::Migration[7.0]
  def change
    add_reference :flights, :aircraft, null: false
  end
end
