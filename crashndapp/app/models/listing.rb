class Listing < ActiveRecord::Base
  belongs_to :catalog
  belongs_to :landlord
end
