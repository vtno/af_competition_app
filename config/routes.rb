# frozen_string_literal: true
Rails.application.routes.draw do
  namespace :remote_api, defaults: { format: 'json' } do
    resources :games do
      resource :score, only: [:update]
    end
  end

  resources :competitions do
    resources :games
  end

  resources :players
  get '/find' => 'players#find'
  post '/search_players' => 'players#search_players'
  root 'competitions#new'
end
