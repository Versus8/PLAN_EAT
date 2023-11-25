class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients, dependent: :destroy
  has_many :plannings, dependent: :destroy
  has_many :recipe_categories, dependent: :destroy
  has_many :categories, through: :recipe_categories
  accepts_nested_attributes_for :recipe_categories
  accepts_nested_attributes_for :ingredients

  # validates :name, :description, :preparation, presence: true
  has_one_attached :photo
end
