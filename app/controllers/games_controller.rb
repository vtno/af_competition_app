# frozen_string_literal: true
class GamesController < ApplicationController
  def new
    @compet = Competition.find params[:competition_id]
  end

  def index
    @games = Game.where(competition_id: params[:competition_id]).order(:target_number).order(:target_slot)
    @compet = Competition.find params[:competition_id]
  end

  def edit
    @game = Game.find(params[:id])
    @competition = Competition.find params[:competition_id]
    @score = @game.score
  end

  def create
    count = 0
    params[:player].each.with_index do |game, index|
      unless game['name'] == ''
        game = Game.new(
          competition_id: params[:competition_id],
          player_name: game['name'],
          target_number: game['target_number'],
          target_slot: game['target_slot']
        )
        game.score = Score.new
        game.save!
      end
    end
    redirect_to competition_games_path
  end

  def update
    game = Game.find(params[:id])
    game.assign_attrubutes(game_params)
    if game.save!
      redirect_to edit_competition_game_path(game)
    else
      raise
    end
  end
end
