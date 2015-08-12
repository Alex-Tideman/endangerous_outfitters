class AddLatLongToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :lat, :decimal
    add_column :trips, :long, :decimal
  end
end
