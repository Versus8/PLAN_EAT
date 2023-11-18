class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients, dependent: :destroy
  has_many :plannings, dependent: :destroy
  has_many :recipe_categories, dependent: :destroy
end
