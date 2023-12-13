class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo
  has_many :plannings, dependent: :destroy
  has_many :recipes, dependent: :destroy
  has_many :owner_plannings, through: :recipes, source: :plannings
  has_many :user_ingredients, dependent: :destroy
  has_many :ingredients, through: :user_ingredients

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def calculate_badge()


    img = ""


    if self.points >= 900
      img = "badge_or.png"
    elsif self.points >= 600 && self.points < 900
      img = "badge_argent.png"
    elsif self.points >= 300 && self.points < 600
      img = "badge_bronze.png"

    end
        img

  end
end
