json.array!(@choices) do |choice|
  json.extract! choice, :id, :title, :description
  json.url choice_url(choice, format: :json)
end
