# frozen_string_literal: true
# == Schema Information
#
# Table name: scores
#
#  id             :integer          not null, primary key
#  score_type     :string
#  game_id        :integer
#  score1         :integer          default(0)
#  score2         :integer          default(0)
#  score3         :integer          default(0)
#  score4         :integer          default(0)
#  score5         :integer          default(0)
#  score6         :integer          default(0)
#  score7         :integer          default(0)
#  score8         :integer          default(0)
#  score9         :integer          default(0)
#  score10        :integer          default(0)
#  x_count        :integer          default(0)
#  x_and_10_count :integer          default(0)
#  ten_count      :integer          default(0)
#  nine_count     :integer          default(0)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Score < ApplicationRecord
  belongs_to :game

  def calc(score)
    sum = 0
    score.each do |x|
      if x == 11
        sum += 10
      else
        sum += x
      end
    end
    sum
  end

  def count_x(score)
    count = 0
    score.each do |x|
      count += 1 if x == 11
    end
    count
  end

  def count_x_10(score)
    count = 0
    score.each do |x|
      count += 1 if x == 10 || x == 11
    end
    count
  end
end
