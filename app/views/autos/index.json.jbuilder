json.array!(@autos) do |auto|
  json.extract! auto, :id, :name, :year, :madein, :type, :color, :went, :description
  json.url auto_url(auto, format: :json)
end
