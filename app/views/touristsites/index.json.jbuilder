json.array!(@touristsites) do |touristsite|
  json.extract! touristsite, :id, :name, :location, :description, :picture, :rating, :state_id
  json.url touristsite_url(touristsite, format: :json)
end
