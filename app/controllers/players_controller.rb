# frozen_string_literal: true
class PlayersController < ApplicationController
  def new
    @game = Game.new
  end
end
