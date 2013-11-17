json.array!(@locations) do |location|
  json.extract! location, :road, :mile_marker, :direction, :address, :city, :county, :state, :zip
  json.url location_url(location, format: :json)
end
