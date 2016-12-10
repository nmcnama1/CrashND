json.extract! listing, :id, :dorm, :gender, :room, :start_date, :end_date, :description, :is_available, :catalog_id, :landlord_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)