json.array!(@rules) do |rule|
  json.extract! rule, :id, :scene_id, :asset_id, :state, :inequality, :inequality_value
  json.url rule_url(rule, format: :json)
end
