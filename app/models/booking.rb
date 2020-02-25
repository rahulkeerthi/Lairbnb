class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lair
  validates :start_date, uniqueness: true
  validates :start_date, :end_date, presence: true
  validates :total_cost, presence: true, numericality: { greater_than: 0 }
end
