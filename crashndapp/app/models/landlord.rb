class Landlord < ActiveRecord::Base
	belongs_to :listing
	has_many :reservations, :listings
end
