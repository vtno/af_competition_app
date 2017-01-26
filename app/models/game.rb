# == Schema Information
#
# Table name: games
#
#  id             :integer          not null, primary key
#  player_name    :string
#  score_type     :integer
#  total_score    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  competition_id :integer
#  target_number  :string
#

class Game < ApplicationRecord
  belongs_to :competition
  has_one :score
end
