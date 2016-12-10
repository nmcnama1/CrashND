class User < ActiveRecord::Base
	has_many :reservations
	has_many :landlords, through: :reservations
	has_many :reviews
end
