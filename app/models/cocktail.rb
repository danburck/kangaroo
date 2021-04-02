class Cocktail < ApplicationRecord
  belongs_to :bartender

  validates :bartender, presence: true
  validates :name, presence: true
end
