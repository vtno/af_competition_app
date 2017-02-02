# frozen_string_literal: true
module ScoresHelper
  def determine_round(competition)
    return 10 if competition.score_type == 'qualification'
    12
  end

  def render_score(score)
    return 'x' if score == 11
    score
  end

  def score_option(competition)
    return [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10] if competition.range == 18
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 'x']
  end
end
