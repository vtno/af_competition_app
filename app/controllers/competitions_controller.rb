# frozen_string_literal: true
class CompetitionsController < ApplicationController

  def new
    @compet = Competition.new
  end

  def create
    compet = Competition.new(competition_params)
    compet.status = 'started'
    if compet.save!
      assign_current_competition(compet)
      redirect_to new_competition_game_path(compet)
    else
      redirect_to :back, alert: compet.errors.full_messages.to_sentence
    end
  end

  def index
    @competitions = Competition.all
  end

  def show
    assign_current_competition(compet)
    @competition = Competition.find params[:id]
  end

  def destroy
    competition = Competition.find params[:id]
    if competition.destroy
      redirect_to :back, notice: 'ลบข้อมูลเรียบร้อย'
    else
      redirect_to :back, error: competition.errors.full_messages.to_sentence
    end
  end

  private def competition_params
    params.require(:competition).permit(:name)
  end
end
