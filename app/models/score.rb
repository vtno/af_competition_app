# frozen_string_literal: true
# == Schema Information
#
# Table name: scores
#
#  id             :integer          not null, primary key
#  score_type     :string
#  game_id        :integer
#  score1         :integer
#  score2         :integer
#  score3         :integer
#  score4         :integer
#  score5         :integer
#  score6         :integer
#  score7         :integer
#  score8         :integer
#  score9         :integer
#  score10        :integer
#  x_count        :integer
#  x_and_10_count :integer
#  ten_count      :integer
#  nine_count     :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Score < ApplicationRecord
  belongs_to :game
end
