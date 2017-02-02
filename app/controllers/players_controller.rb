# frozen_string_literal: true
class PlayersController < ApplicationController
  def find
    @on_going_competitions = Competition.where(status: 'started')
  end

  def ranking
    @competition = Competition.find(params[:competition_id])
    @players = if @competition.range == 18
                 @competition.games.
                   joins(:score).
                   order('scores.total_score').
                   order('scores.ten_count').
                   order('scores.nine_count').
                   reverse
               else
                 @competition.games.
                   joins(:score).
                   order('scores.total_score').
                   order('scores.x_and_10_count').
                   order('scores.x_count').
                   reverse
               end
  end

  def all_rankings
    @competitions = Competition.all
  end

  def search_players
    compet = Competition.find params[:competition_id]
    games = compet.games.where(target_number: params[:target_number])
    if games
      redirect_to score_card_path(
        competition_id: params[:competition_id],
        target_number: params[:target_number]
      )
    else
      redirect_to find_path,
                  alert: 'ไม่มีผู้เข้าแข่งขันที่ต้องการค้นหา โปรดตรวจสอบข้อมูลที่ใส่อีกครั้ง'
    end
  end

  def score_card
    @competition = Competition.find(params[:competition_id])
    @games = @competition.games.where(target_number: params[:target_number]).order(:target_slot)
  end
end
