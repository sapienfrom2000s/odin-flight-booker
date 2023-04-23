class Add < ActiveRecord::Migration[7.0]
  def change
    remove_column :flights, :taarik
    add_column :flights, :date, :date
    add_column :flights, :time, :time
  end
end
