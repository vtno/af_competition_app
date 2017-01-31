# frozen_string_literal: true
module ScoresHelper
  def determine_round(competition)
    return 10 if competition.score_type == 'qualification'
    return 12
  end

  def render_score(score)
    return 'x' if score == 11
    score
  end
end
