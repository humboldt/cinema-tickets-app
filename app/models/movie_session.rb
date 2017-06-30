class MovieSession < ApplicationRecord
  belongs_to :movie
  belongs_to :hall
end
