json.extract! profile, :id, :user_id, :avatar, :first_name, :last_name, :mob_number, :address, :created_at, :updated_at
json.url profile_url(profile, format: :json)
