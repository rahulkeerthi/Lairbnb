class Lair < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, presence: true
  validates :location, presence: true
  validates :price_per_night, presence: true, numericality: { greater_than: 0 }
  validates :is_hero_lair, inclusion: { in: [true, false] }
  validates :user_id, presence: true
end
