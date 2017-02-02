# frozen_string_literal: true
module RemoteApi
  class ScoresController < ApplicationController
    def update
      binding.pry
      game = Game.find(params[:game_id])
      compet = Competition.find(params[:competition_id])
      score = game.score
      score.send("score#{score_params[:round]}")[score_params[:position].to_i] = score_params[:score].to_i
      score.points[score_params[:pointPos].to_i] = score_params[:point].to_i if score_params[:point].to_i.is_a? Numeric
      row_sum_score = Score.calc(score.send("score#{score_params[:round]}"))
      score.count_all
      score.cal_total_points
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
      params.require(:scores).permit(:score, :round, :position, :point, :pointPos)
    end
  end
end
