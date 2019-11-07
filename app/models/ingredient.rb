class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses # necessary?
  validates :name, presence: true, uniqueness: true
end
