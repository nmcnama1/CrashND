class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :dorm
      t.string :gender
      t.integer :room
      t.date :start_date
      t.date :end_date
      t.text :description
      t.boolean :is_available
      t.references :catalog, index: true, foreign_key: true
      t.references :landlord, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
