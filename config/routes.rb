# frozen_string_literal: true
Rails.application.routes.draw do
  namespace :remote_api, defaults: { format: 'json' } do
    namespace :games do
      scope :game_id do
        resource :score, only: [:update]
      end
    end
  end

  resources :games
  resources :competitions
  root 'competitions#new'
end
