# frozen_string_literal: true
module RemoteApi
  class ScoresController < ApplicationController
    def update
      game = Game.find(params[:game_id])
      compet = Competition.find(params[:competition_id])
      score = game.score
      case score_params[:round]
      when '1'
        score.score1[score_params[:position].to_i] = score_params[:score].to_i
        row_sum_score = Score.calc(score.score1)
      when '2'
        score.score2[score_params[:position].to_i] = score_params[:score].to_i
        row_sum_score = Score.calc(score.score2)
      when '3'
        score.score3[score_params[:position].to_i] = score_params[:score].to_i
        row_sum_score = Score.calc(score.score3)
      when '4'
        score.score4[score_params[:position].to_i] = score_params[:score].to_i
        row_sum_score = Score.calc(score.score4)
      when '5'
        score.score5[score_params[:position].to_i] = score_params[:score].to_i
        row_sum_score = Score.calc(score.score5)
      when '6'
        score.score6[score_params[:position].to_i] = score_params[:score].to_i
        row_sum_score = Score.calc(score.score6)
      when '7'
        score.score7[score_params[:position].to_i] = score_params[:score].to_i
        row_sum_score = Score.calc(score.score7)
      when '8'
        score.score8[score_params[:position].to_i] = score_params[:score].to_i
        row_sum_score = Score.calc(score.score8)
      when '9'
        score.score9[score_params[:position].to_i] = score_params[:score].to_i
        row_sum_score = Score.calc(score.score9)
      else
        score.score10[score_params[:position].to_i] = score_params[:score].to_i
        row_sum_score = Score.calc(score.score10)
      end
      score.count_all
      score.cal_total_score
      game.total_score = score.total_score
      if score.save! && game.save!
        render json: score,
               serializer: ScoreSerializer,
               updated_score: score_params[:score],
               row_sum_score: row_sum_score,
               total_score: score.total_score,
               range: compet.range,
               round: score_params[:round]
      else
        render json: score.errors
      end
    end

    private def score_params
      params.require(:scores).permit(:score, :round, :position)
    end
  end
end
