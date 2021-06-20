json.extract! product, :id, :title, :picture, :description, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
