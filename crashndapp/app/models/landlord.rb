class Landlord < ActiveRecord::Base
	belongs_to :listing
	has_many :reservations
	has_many :listings
end
