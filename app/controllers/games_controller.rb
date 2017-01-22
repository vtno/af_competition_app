# frozen_string_literal: true
class GamesController < ApplicationController
  def new
  end

  def index
    @games = Game.all
  end

  def create
    params[:player].each do |name|
      current_competition.create_game!(player_name: name)
    end
  end

  def update
    game = Game.find(params[:id])
    game.assign_attrubutes(game_params)
    if game.save!
      redirect_to edit_game_path(game)
    else
      raise
    end
  end

  private def game_params
    params.require(:game).permit(:name)
  end
end
