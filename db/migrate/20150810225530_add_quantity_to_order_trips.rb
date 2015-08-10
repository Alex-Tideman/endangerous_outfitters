class AddQuantityToOrderTrips < ActiveRecord::Migration
  def change
    add_column :order_trips, :quantity, :integer
  end
end
