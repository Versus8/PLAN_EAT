class Category < ApplicationRecord
  has_many :recipe_categories, dependent: :destroy
  has_many :recipes, through: :recipe_categories
  has_one_attached :photo

  validates :name, presence: true
end
