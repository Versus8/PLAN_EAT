class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates :name, :quantity, :unit, presences: true
end
