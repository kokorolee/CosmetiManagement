json.extract! product, :id, :name, :type, :uses, :price, :price, :unit, :date_import, :date_export, :number_import, :number_export, :number_inventory, :provider_id, :created_at, :updated_at
json.url product_url(product, format: :json)
