class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :description
      t.references :user, index: true, foreign_key: true
      t.references :landlord, index: true, foreign_key: true
      t.integer :rating

      t.timestamps null: false
    end
  end
end
