json.extract! product, :id, :name, :description, :type, :usage, :price, :unit, :date_import, :date, :number_import, :number_export, :number_stock, :created_at, :updated_at
json.url product_url(product, format: :json)
