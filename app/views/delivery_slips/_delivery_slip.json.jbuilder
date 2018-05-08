json.extract! delivery_slip, :id, :date_deliver, :date_received, :total_money, :created_at, :updated_at
json.url delivery_slip_url(delivery_slip, format: :json)
