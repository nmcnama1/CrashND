class RoomType < ActiveRecord::Base
	has_many :listings
end
