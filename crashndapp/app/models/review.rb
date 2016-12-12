class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :landlord

  validates :title, :rating, presence: true
  validates :rating, numericality: true
  validates :rating, inclusion: { in: 1..5, "\"%{value}\" is not a valid rating" }
end
