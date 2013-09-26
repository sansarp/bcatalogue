json.array!(@businesses) do |business|
  json.extract! business, :name, :description, :category
  json.url business_url(business, format: :json)
end
