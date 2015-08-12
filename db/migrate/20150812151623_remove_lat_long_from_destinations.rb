class RemoveLatLongFromDestinations < ActiveRecord::Migration
  def change
    remove_column :destinations, :lat
    remove_column :destinations, :long
  end
end
