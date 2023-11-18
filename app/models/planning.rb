class Planning < ApplicationRecord
  belongs_to :user
  belongs_to :recipe

  validates :date, presences: true
end
