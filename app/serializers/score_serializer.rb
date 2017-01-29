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
#  x_count        :integer          default(0)
#  x_and_10_count :integer          default(0)
#  ten_count      :integer          default(0)
#  nine_count     :integer          default(0)
#  total_score    :integer          default(0)
#

class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :updated_score, :total_score, :row_sum_score, :range,
             :row_10_count, :row_9_count,
             :x_count, :x_and_10_count, :ten_count, :nine_count

  def updated_score
    instance_options[:updated_score]
  end

  def row_sum_score
    instance_options[:row_sum_score]
  end

  def total_score
    instance_options[:total_score]
  end

  def row_10_count
    Score.count_score(object.send("score#{instance_options[:round]}"), 10)
  end

  def row_9_count
    Score.count_score(object.send("score#{instance_options[:round]}"), 9)
  end

  def range
    instance_options[:range]
  end
end
