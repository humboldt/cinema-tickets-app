class Movie < ApplicationRecord
  has_many :movie_sessions
  
  validates :title, presence: true
  validates :picture_url, presence: true
  validates :description, presence: true
end
