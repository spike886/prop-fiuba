json.array!(@publications) do |publication|
  json.extract! publication, :id, :type, :start_date, :end_date, :active, :property_id
  json.url publication_url(publication, format: :json)
end
