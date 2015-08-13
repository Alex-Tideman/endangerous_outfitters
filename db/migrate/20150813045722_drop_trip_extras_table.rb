class DropTripExtrasTable < ActiveRecord::Migration
  def change
    drop_table :extras
  end
end
