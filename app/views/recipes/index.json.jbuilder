json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :title, :short_description, :description, :method, :net_carbs_in_g, :calories_in_kcal, :cuisine_id, :mealtype_id, :collection_id, :user_id
  json.url recipe_url(recipe, format: :json)
end
