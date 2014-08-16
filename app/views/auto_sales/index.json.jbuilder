json.array!(@auto_sales) do |auto_sale|
  json.extract! auto_sale, :id, :title, :auto_id, :price
  json.url auto_sale_url(auto_sale, format: :json)
end
