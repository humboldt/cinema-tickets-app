class Cinema < ApplicationRecord
  belongs_to :user
  has_many :halls
  
  validates :name, presence: true
  validates :address, presence: true
end
