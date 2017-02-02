# == Schema Information
#
# Table name: games
#
#  id             :integer          not null, primary key
#  player_name    :string
#  score_type     :integer
#  total_score    :integer          default(0)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  competition_id :integer
#  target_number  :integer
#  target_slot    :string
#  team           :boolean
#

class Game < ApplicationRecord
  belongs_to :competition
  has_one :score, dependent: :destroy
  scope :sorted_games, -> { 
    joins(:score).
    order('scores.total_points').
    order('scores.total_score').
    order('scores.ten_count').
    order('scores.nine_count').
    reverse 
  }
end
