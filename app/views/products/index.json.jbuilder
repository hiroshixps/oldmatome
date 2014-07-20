json.array!(@products) do |product|
  json.extract! product, :title, :model_number, :brand, :price
  json.url product_url(product, format: :json)
end