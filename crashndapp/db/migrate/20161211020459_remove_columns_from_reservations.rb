class RemoveColumnsFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :dorm, :string
    remove_column :reservations, :room, :integer
    remove_column :reservations, :landlord_id, :integer
    remove_column :reservations, :user_id, :integer
  end
end
