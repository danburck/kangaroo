class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bartender

  validates :user, presence: true
  validates :bartender, presence: true
end
