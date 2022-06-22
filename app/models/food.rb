class Food < ApplicationRecord
  belongs_to :user
  has_many :ingredients, through: :food_ingredients
  validates :name, presence: true
  validates :measurement_unit, presence: true
  validates :price, presence: true, numericality: true
end
