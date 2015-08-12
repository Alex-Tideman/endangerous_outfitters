class AddGmapsToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :gmaps, :boolean
  end
end
