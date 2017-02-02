# frozen_string_literal: true
Rails.application.routes.draw do
  namespace :remote_api, defaults: { format: 'json' } do
    resources :games do
      resource :score, only: [:update, :player_update]
    end
  end

  resources :competitions do
    resources :games
    resources :duels
    get '/ranking' => 'players#ranking'
    get '/result' => 'players#result'
  end

  resources :players

  get '/find' => 'players#find'
  get '/score_card' => 'players#score_card'
  get '/all_rankings' => 'players#all_rankings'
  post '/search_players' => 'players#search_players'
  root 'competitions#new'
end
