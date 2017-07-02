class MovieSession < ApplicationRecord
  belongs_to :movie
  belongs_to :hall
  serialize :seats, Hash
  serialize :reserved_seats, Hash
  monetize :seat_price_cents
end
