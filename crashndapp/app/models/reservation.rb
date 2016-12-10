class Reservation < ActiveRecord::Base
  belongs_to :landlord
  belongs_to :user
end
