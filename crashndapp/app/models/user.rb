class User < ActiveRecord::Base
	has_many :reservations
	has_many :landlords, through: :reservations
	has_many :reviews
	has_one :renter
	has_one :landlord

	validates :first_name, :presence => true
	validates :last_name, :presence => true
	validates :email, :presence => true, :uniqueness => true
	validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
	validates :password, :presence => true
end
