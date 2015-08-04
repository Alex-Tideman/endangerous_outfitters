class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.text :name
      t.text :description

      t.timestamps null: false
    end
  end
end
