class Recipe < ActiveRecord::Base
  belongs_to :cuisine
  belongs_to :mealtype
  belongs_to :collection
  belongs_to :user
  acts_as_votable 
end
