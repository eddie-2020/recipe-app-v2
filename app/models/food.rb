class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :delete_all

  validates :name, presence: true
  validates :measurement_unit, presence: true
  validates :price, comparison: { greater_than: 0.0 }, numericality: true
end
