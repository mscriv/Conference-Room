json.array!(@photos) do |photo|
  json.extract! photo, :id, :image, :room_id
  json.url photo_url(photo, format: :json)
end
