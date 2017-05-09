json.extract! advert, :id, :user_id, :business_name, :business_number, :advert_title, :advert_image, :advert_description, :advert_period, :advert_location, :advert_sticker_location, :payout_per_mile, :created_at, :updated_at
json.url advert_url(advert, format: :json)
