json.array!(@stories) do |story|
  json.extract! story, :id, :title, :description, :default_char_name
  json.url story_url(story, format: :json)
end
