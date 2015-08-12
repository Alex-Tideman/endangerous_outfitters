class AddFullNameAndAddressToUser < ActiveRecord::Migration
  def change
    add_column :users, :full_name, :text
    add_column :users, :address, :text
  end
end
