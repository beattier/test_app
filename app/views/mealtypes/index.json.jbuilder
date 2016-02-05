json.array!(@mealtypes) do |mealtype|
  json.extract! mealtype, :id, :name, :description
  json.url mealtype_url(mealtype, format: :json)
end
