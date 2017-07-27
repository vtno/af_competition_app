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
#  x_count        :integer          default(0)
#  x_and_10_count :integer          default(0)
#  ten_count      :integer          default(0)
#  nine_count     :integer          default(0)
#  total_score    :integer          default(0)
#  score1         :integer          default(["0", "0", "0", "0", "0"]), is an Array
#  score2         :integer          default(["0", "0", "0", "0", "0"]), is an Array
#  score3         :integer          default(["0", "0", "0", "0", "0"]), is an Array
#  score4         :integer          default(["0", "0", "0", "0", "0"]), is an Array
#  score5         :integer          default(["0", "0", "0", "0", "0"]), is an Array
#  score6         :integer          default(["0", "0", "0", "0", "0"]), is an Array
#  score7         :integer          default(["0", "0", "0", "0", "0"]), is an Array
#  score8         :integer          default(["0", "0", "0", "0", "0"]), is an Array
#  score9         :integer          default(["0", "0", "0", "0", "0"]), is an Array
#  score10        :integer          default(["0", "0", "0", "0", "0"]), is an Array
#  score11        :integer          default(["0", "0", "0", "0", "0"]), is an Array
#  score12        :integer          default(["0", "0", "0", "0", "0"]), is an Array
#  points         :integer          default(["0", "0", "0", "0", "0"]), is an Array
#

class Score < ApplicationRecord
  belongs_to :game

  class << self
     def calc(score)
       sum = 0
       score.each do |x|
         sum += if x == 11
                  10
                else
                  x
                end
       end
       sum
     end

     def count_score(score, pos)
       count = 0
       score.each do |x|
         count += 1 if x == pos
       end
       count
     end

     def count_10(score)
       count = 0
       score.each do |x|
         count += 1 if x == 10
       end
       count
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

  def cal_total_score
    total_sum = 0
    (1..12).each do |index|
      self.send("score#{index}").each do |x|
        total_sum += x if x != 11
        total_sum += 10 if x == 11
      end
    end
    self.total_score = total_sum
    save!
  end

  def count_all
    xc = 0; x10 = 0; ten = 0; nine = 0
    (1..12).each do |index|
      score = self.send("score#{index}")
      xc += Score.count_score(score, 11)
      x10 += Score.count_x_10(score)
      ten += Score.count_score(score, 10)
      nine += Score.count_score(score, 9)
    end
    self.x_count = xc
    self.x_and_10_count = x10
    self.ten_count = ten
    self.nine_count = nine
    save!
  end

  def cal_total_points
    self.total_points = points.inject(0) { |sum, x| sum + x }
    save!
  end
end
