json.array!(@rooms) do |room|
  json.extract! room, :id, :name, :location, :sq_ft, :description
  json.url room_url(room, format: :json)
end
