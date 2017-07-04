class MovieSession < ApplicationRecord
  belongs_to :movie
  belongs_to :hall
  serialize :seats, Hash
  serialize :reserved_seats, Hash
  monetize :seat_price_cents
  
  validates :date, presence: true
  validates :seat_price, presence: true
  validates :movie, presence: true
end
