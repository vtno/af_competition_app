# frozen_string_literal: true
module RemoteApi
  class CompetitionsController < ApplicationController
    def update
      compet = Competition.find(competition_params[:id])
      compet.show_rank = competition_params[:show_rank]
      if compet.save
        render status: :ok, json: { status: 200, show_rank: compet.show_rank }
      else
        render status: :unprocessable_entity, json: {
          error: :unprocessable_entity,
          error_description: compet.errors.full_messages.to_sentence
        }
      end
    end

    private def competition_params
      params.permit(:id, :show_rank)
    end
  end
end
