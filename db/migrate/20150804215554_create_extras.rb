class CreateExtras < ActiveRecord::Migration
  def change
    create_table :extras do |t|
      t.text :name
      t.text :description
      t.float :cost

      t.timestamps null: false
    end
  end
end
