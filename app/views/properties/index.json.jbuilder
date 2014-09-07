json.array!(@properties) do |property|
  json.extract! property, :id, :address, :location_id, :user_id, :age, :rooms, :bathrooms, :bedrooms, :type_of_building, :covered_area, :total_area
  json.url property_url(property, format: :json)
end
