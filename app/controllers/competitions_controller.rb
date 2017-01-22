# frozen_string_literal: true
class CompetitionsController < ApplicationController

  def new
    @compet = Competition.new
  end

  def create
    compet = Competition.new(competition_params)
    if compet.save!
      assign_current_competition(compet)
      redirect_to new_game_path
    else
      redirect_to :back, alert: compet.errors.full_messages.to_sentence
    end
  end
  private def competition_params
    params.require(:competition).permit(:name)
  end
end
