class Game < ApplicationRecord
  has_many :players, through: :playings
  has_many :playings
end
