class RecipeCategory < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :name, presence: true
end
