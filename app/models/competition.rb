# == Schema Information
#
# Table name: competitions
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  status     :integer
#  score_type :string
#  range      :integer
#

class Competition < ApplicationRecord
  has_many :games, dependent: :destroy
  enum status: %w(started finished)

  def date
    created_at.strftime('%d-%m-%Y %H:%M')
  end

  def create_pair
    half_length = games.count / 2
    left_side = games.to_a.slice(0, half_length)
    left_side.zip(games.to_a.reverse)
  end
end
