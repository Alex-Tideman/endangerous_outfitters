class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.references :destination, index: true, foreign_key: true
      t.references :activity, index: true, foreign_key: true
      t.float :total_cost
      t.float :trip_cost

      t.timestamps null: false
    end
  end
end
