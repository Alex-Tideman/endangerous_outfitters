class RemoveLatLongFromTrips < ActiveRecord::Migration
  def change
    remove_column :trips, :lat
    remove_column :trips, :long
    add_column :trips, :lat, :float
    add_column :trips, :long, :float
  end
end
