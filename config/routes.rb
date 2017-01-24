# frozen_string_literal: true
Rails.application.routes.draw do
  namespace :remote_api, defaults: { format: 'json' } do
    namespace :games do
      scope :game_id do
        resource :score, only: [:update]
      end
    end
  end

  resources :competitions do
    member do
      resources :games      
    end
  end
  root 'competitions#new'
end
