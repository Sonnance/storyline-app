json.array!(@assets) do |asset|
  json.extract! asset, :id, :asset_type, :name, :description, :durability
  json.url asset_url(asset, format: :json)
end
