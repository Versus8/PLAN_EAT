class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :plannings, dependent: :destroy
  has_many :recipes, dependent: :destroy
  has_many :owner_plannings, through: :recipes, source: :plannings

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
