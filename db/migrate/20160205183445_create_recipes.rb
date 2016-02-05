class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :short_description
      t.text :description
      t.text :method
      t.decimal :net_carbs_in_g
      t.decimal :calories_in_kcal
      t.references :cuisine, index: true
      t.references :mealtype, index: true
      t.references :collection, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
