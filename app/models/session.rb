class Session < ApplicationRecord
  belongs_to :hall
  has_one :movie
end
