json.array!(@campuses) do |campus|
  json.extract! campus, :id, :index, :new, :show
  json.url campus_url(campus, format: :json)
end
