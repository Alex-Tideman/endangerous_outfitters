class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.text :content
      t.string :occupation
      t.string :image_url

      t.timestamps null: false
    end
  end
end
