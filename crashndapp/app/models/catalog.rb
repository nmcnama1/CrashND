class Catalog < ActiveRecord::Base
	has_many :listings
	has_many :landlords, through: :listings
end
