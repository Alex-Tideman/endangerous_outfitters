class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.text :continent
      t.text :description
      t.float :lat
      t.float :long

      t.timestamps null: false
    end
  end
end
