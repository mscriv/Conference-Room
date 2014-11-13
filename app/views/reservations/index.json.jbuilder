json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :date, :starts_at, :ends_at, :room_id, :user_id
  json.url reservation_url(reservation, format: :json)
end
