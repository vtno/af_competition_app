# frozen_string_literal: true
module RankingHelper
  COLORS = %w(red blue green orange pink purple black grey brown yellow cyan).freeze
  def generate_color(index)
    return if index > COLORS.count
    COLORS[index]
  end
end
