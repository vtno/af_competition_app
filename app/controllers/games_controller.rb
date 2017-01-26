# frozen_string_literal: true
class GamesController < ApplicationController
  def new
    @compet = current_competition
  end

  def index
    @games = current_competition.games
    @compet = current_competition
  end

  def edit
    @game = Game.find(params[:id])
    @scores = @game.scores
  end

  def create
    count = 0
    params[:player].each.with_index do |game, index|
      count += 1 if (index % 4) == 0
      letter = case ((index % 4) + 1)
               when 1
                 'A'
               when 2
                 'B'
               when 3
                 'C'
               else
                 'D'
               end
      target_number = "#{count}#{letter}"
      game = Game.new(
        competition_id: current_competition.id,
        player_name: game['name'],
        target_number: target_number
      )
      game.score = Score.new
      game.save!
    end
    redirect_to games_path
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
