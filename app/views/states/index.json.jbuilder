json.array!(@states) do |state|
  json.extract! state, :id, :name, :climate, :language, :info, :culture
  json.url state_url(state, format: :json)
end
