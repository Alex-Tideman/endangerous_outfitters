class CreateOrderTrips < ActiveRecord::Migration
  def change
    create_table :order_trips do |t|
      t.references :order, index: true, foreign_key: true
      t.references :trip, index: true, foreign_key: true
    end
  end
end
