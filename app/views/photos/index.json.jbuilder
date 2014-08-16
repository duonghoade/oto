json.array!(@photos) do |photo|
  json.extract! photo, :id, :auto_sale_id, :avatar
  json.url photo_url(photo, format: :json)
end
