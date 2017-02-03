# frozen_string_literal: true
module ScoresHelper
  def determine_round(competition)
    if competition.score_type == 'qualification'
      return 10 if competition.range == 18
      12
    else
      5
    end
  end

  def render_score(score)
    return 'x' if score == 11
    score
  end

  def determine_players_amount(competition)
    return 20 if competition.score_type == 'qualification' || competition.score_type == 'qualification2'
    return 16 if competition.score_type == 'sixteen_final'
    return 8 if competition.score_type == 'quarter_final'
    return 4 if competition.score_type == 'semi_final'
    2
  end

  def score_option(competition)
    return [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10] if competition.range == 18
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 'x']
  end

  def target_id(game)
    "#{game.target_number}#{game.target_slot}"
  end

  def check_winner(pair, range)
    return pair[0] if pair[0].score.total_points > pair[1].score.total_points
    return pair[1] if pair[1].score.total_points > pair[0].score.total_points
    if range == 18
      return pair[0] if pair[0].score.ten_count > pair[1].score.ten_count
      return pair[0] if pair[0].score.nine_count > pair[1].score.nine_count
      return pair[1] if pair[1].score.ten_count > pair[0].score.ten_count
      return pair[1] if pair[1].score.nine_count > pair[0].score.nine_count
    else
      return pair[0] if pair[0].score.x_and_10_count > pair[1].score.x_and_10_count
      return pair[0] if pair[0].score.x_count > pair[1].score.x_count
      return pair[1] if pair[1].score.x_and_10_count > pair[0].scores.x_and_10_count
      return pair[1] if pair[1].score.x_count > pair[0].score.x_count
    end
  end
end
