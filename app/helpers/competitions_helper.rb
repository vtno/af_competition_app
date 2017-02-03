# frozen_string_literal: true
module CompetitionsHelper
  def render_compet_name(competition)
    "#{competition.name} ระยะ #{competition.range} เมตร รอบ #{render_score_type(competition)}"
  end

  def render_score_type(competition)
    return "คัดเลือก" if competition.score_type == 'qualification'
    "คัดเลือกรอบสอง"
  end
end
