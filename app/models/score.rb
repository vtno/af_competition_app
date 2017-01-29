# frozen_string_literal: true
# == Schema Information
#
# Table name: scores
#
#  id             :integer          not null, primary key
#  score_type     :string
#  game_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  score1         :integer          default(["0", "0", "0"]), is an Array
#  score2         :integer          default(["0", "0", "0"]), is an Array
#  score3         :integer          default(["0", "0", "0"]), is an Array
#  score4         :integer          default(["0", "0", "0"]), is an Array
#  score5         :integer          default(["0", "0", "0"]), is an Array
#  score6         :integer          default(["0", "0", "0"]), is an Array
#  score7         :integer          default(["0", "0", "0"]), is an Array
#  score8         :integer          default(["0", "0", "0"]), is an Array
#  score9         :integer          default(["0", "0", "0"]), is an Array
#  score10        :integer          default(["0", "0", "0"]), is an Array
#  x_count        :integer          default(["0", "0", "0"]), is an Array
#  x_and_10_count :integer          default(["0", "0", "0"]), is an Array
#  ten_count      :integer          default(["0", "0", "0"]), is an Array
#  nine_count     :integer          default(["0", "0", "0"]), is an Array
#

class Score < ApplicationRecord
  belongs_to :game
 class << self
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
end
