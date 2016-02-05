class CreateMealtypes < ActiveRecord::Migration
  def change
    create_table :mealtypes do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
