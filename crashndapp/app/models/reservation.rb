class Reservation < ActiveRecord::Base
  belongs_to :landlord
  belongs_to :user

  validates :dorm, :room, :checkin_date, :checkout_date, :status, presence: true
  validates :room, numericality: true

  # validate dates based on internal methods
  validate :validate_checkin_date
  validate :validate_checkout_date

  private

  # check and validate reservation check in date
  def validate_checkin_date
    checkin = Date.parse(checkin_date.to_s)
    checkout = Date.parse(checkout_date.to_s)
    puts "is date #{checkin} after #{checkout}"
    errors.add(:checkin_date, "can't be after checkout date") if checkin > checkout
  end

  # check and validate reservation check out date
  def validate_checkout_date
    checkin = Date.parse(checkin_date.to_s)
    checkout = Date.parse(checkout_date.to_s)
    puts "is date #{checkout} before #{checkin}"
    errors.add(:checkout_date, "can't be before checkin date") if checkout < checkin
  end
end
