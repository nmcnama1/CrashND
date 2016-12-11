class AddDirectionToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :direction, :string
  end
end
