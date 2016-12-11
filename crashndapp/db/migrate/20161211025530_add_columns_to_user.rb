class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :is_renter, :boolean
    add_column :users, :is_landlord, :boolean
  end
end
