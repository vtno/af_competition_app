# frozen_string_literal: true
class DuelsController < ApplicationController

  def new
    @competition = Competition.find params[:competition_id]
    @duel_score = Score.new
  end

  def create
    competition = 
    duel_score = Score.new(score_params)
  end


  private def score_params
    params.require(:duel).permit(:score_type)
  end
end
