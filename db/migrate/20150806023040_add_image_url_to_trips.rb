class AddImageUrlToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :image_url, :string
  end
end
