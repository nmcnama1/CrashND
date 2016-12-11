class Listing < ActiveRecord::Base
  belongs_to :catalog
  belongs_to :landlord
  has_one :room_type
  has_many :reservations
end
