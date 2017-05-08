json.extract! vehicle, :id, :user_id, :car_make, :car_model, :car_built, :car_color, :car_rego, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
