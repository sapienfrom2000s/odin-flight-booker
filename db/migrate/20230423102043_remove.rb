class Remove < ActiveRecord::Migration[7.0]
  def change
    remove_column(:flights, :time)
    remove_column(:flights, :date)
  end
end
