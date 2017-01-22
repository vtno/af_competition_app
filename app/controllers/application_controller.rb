# frozen_string_literal: true
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected def assign_current_competition(competition)
    session[:competition_id] = competition.id
  end

  protected def current_competition
    Competition.find(session[:competition_id])
  end
end
