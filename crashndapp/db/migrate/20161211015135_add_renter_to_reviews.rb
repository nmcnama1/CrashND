class AddRenterToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :renter, index: true, foreign_key: true
  end
end
