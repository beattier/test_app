json.array!(@cuisines) do |cuisine|
  json.extract! cuisine, :id, :name, :description
  json.url cuisine_url(cuisine, format: :json)
end
