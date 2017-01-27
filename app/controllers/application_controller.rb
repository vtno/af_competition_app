# frozen_string_literal: true
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected def current_competition
    Competition.find(session[:competition_id])
  end
end
