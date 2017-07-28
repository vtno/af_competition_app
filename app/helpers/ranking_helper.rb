# frozen_string_literal: true
module RankingHelper
  def generate_color(index)
    return if index > CompetitionColor::COLORS.count
    CompetitionColor::COLORS[index]
  end

  def color_by_competition(compet)
    c = CompetitionColor.new compet
    c.find_color
  end
end
