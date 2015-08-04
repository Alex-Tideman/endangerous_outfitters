class CreateTripExtras < ActiveRecord::Migration
  def change
    create_table :trip_extras do |t|
      t.references :trip, index: true, foreign_key: true
      t.references :extra, index: true, foreign_key: true
    end
  end
end
