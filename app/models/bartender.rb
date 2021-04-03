class Bartender < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :cocktails, dependent: :destroy

  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :user, presence: true
  validates :name, presence: true
  validates :address, presence: true
end
