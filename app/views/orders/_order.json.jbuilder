json.extract! order, :id, :user_id, :vehicle_id, :stripe_charge_id, :created_at, :updated_at
json.url order_url(order, format: :json)
