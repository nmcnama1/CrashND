class AddColumnsToReservations < ActiveRecord::Migration
  def change
    add_reference :reservations, :listing, index: true, foreign_key: true
    add_reference :reservations, :renter, index: true, foreign_key: true
  end
end
