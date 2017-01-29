# frozen_string_literal: true
class PlayersController < ApplicationController
  def find
    @on_going_competitions = Competition.where(status: 'started')
  end

  def ranking
    @competition = Competition.find(params[:competition_id])
    @players = @competition.games.joins(:score).order('scores.ten_count').order('scores.nine_count').reverse
  end

  def search_players
    compet = Competition.find(params[:competition_id])
    game = compet.games.where(target_number: params[:target_number]).first
    redirect_to edit_competition_game_path(game)
  end
end
