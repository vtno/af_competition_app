# frozen_string_literal: true
module CompetitionsHelper
  def render_compet_name(competition)
    "#{competition.name} ระยะ #{competition.range} เมตร รอบ #{render_score_type(competition)}"
  end

  def render_score_type(competition)
    return "คัดเลือก" if competition.score_type == 'qualification'
    return "16 คนสุดท้าย" if competition.score_type == 'sixteen_final'
    return "8 คนสุดท้าย" if competition.score_type == 'quarter_final'
    return "รองชนะเลิศ" if competition.score_type == 'semi_final'
    "ชิงชนะเลิศ"
  end
end
