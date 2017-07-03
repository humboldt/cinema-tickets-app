class Hall < ApplicationRecord
  belongs_to :cinema
  has_many :movie_sessions
  
  validates :name, presence: true
  validates :seats_quantity, presence: true, numericality: 
    { greater_than: 0, only_integer: true }
end
