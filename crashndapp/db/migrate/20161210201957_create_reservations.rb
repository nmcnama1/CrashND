class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :dorm
      t.integer :room
      t.datetime :checkin_date
      t.datetime :checkout_date
      t.text :description
      t.string :status
      t.references :landlord, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
