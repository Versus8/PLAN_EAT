class Ingredient < ApplicationRecord
  belongs_to :recipe
  has_many :user_ingredients, dependent: :destroy
  has_many :users, through: :user_ingredients

  validates :name, :quantity, :unit, presence: true
end
