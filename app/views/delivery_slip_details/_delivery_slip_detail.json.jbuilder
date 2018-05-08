json.extract! delivery_slip_detail, :id, :amount, :unit, :product_id, :delivery_slip_id, :created_at, :updated_at
json.url delivery_slip_detail_url(delivery_slip_detail, format: :json)
