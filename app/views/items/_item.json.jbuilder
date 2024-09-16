json.extract! item, :id, :name, :description, :sale_price, :purchase_price, :status, :created_at, :updated_at
json.url item_url(item, format: :json)
