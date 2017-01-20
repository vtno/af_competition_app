class Player < ApplicationRecord
  has_many :games, through: :playings
  has_many :playings
end
