class RemoveImageUrlFromTrips < ActiveRecord::Migration
  def change
    remove_column :trips, :image_url
  end
end
