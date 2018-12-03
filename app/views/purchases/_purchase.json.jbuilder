json.extract! purchase, :id, :name, :price, :country, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)
