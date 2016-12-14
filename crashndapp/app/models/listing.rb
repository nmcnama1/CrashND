class Listing < ActiveRecord::Base
  belongs_to :catalog
  belongs_to :landlord
  has_one :room_type
  has_many :reservations

  validates :dorm, :gender, :room, :start_date, :end_date, presence: true
  validates :room, numericality: true

  # validated based on internal methods
  validate :validate_start_date
  validate :validate_end_date

  private

  # method to check listing start date and validate it
  def validate_start_date
    start = Date.parse(start_date.to_s)
    last = Date.parse(end_date.to_s)
    puts "is date #{start} after #{last}"
    errors.add(:start_date, "can't be after the end date") if start > last
  end

  # method to check listing end date and validate it
  def validate_end_date
    start = Date.parse(start_date.to_s)
    last = Date.parse(end_date.to_s)
    puts "is date #{last} before #{start}"
    errors.add(:end_date, "can't be before the start date") if last < start
  end
end
