class Category < ApplicationRecord
  has_many :recipe_categories, dependent: :destroy
  has_many :recipes, dependent: :destroy
end
