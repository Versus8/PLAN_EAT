class RecipeCategory < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :name, presences: true
end
