class AddImageUrlToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :image_url, :text
  end
end
