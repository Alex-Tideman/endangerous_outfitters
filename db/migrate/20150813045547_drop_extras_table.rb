class DropExtrasTable < ActiveRecord::Migration
  def change
    drop_table :trip_extras
  end
end
