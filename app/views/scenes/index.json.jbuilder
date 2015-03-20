json.array!(@scenes) do |scene|
  json.extract! scene, :id, :title, :description, :story_id
  json.url scene_url(scene, format: :json)
end
