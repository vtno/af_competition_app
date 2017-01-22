# frozen_string_literal: true
module RemoteApi
  class ScoresController < ApplicationController
    def update
      playing = Playing.save_score(score_params)
      if playing.save!
        render json: playing, serializer: PlayingSerializer
      else
        redirect_to :back, alert: playing.errors.full_messages.to_sentence
      end
    end

    private def score_params
      params.pemit(
        :game_id,
        :player1_id, :player2_id, :player3_id, :player4_id,
        :player1, :player2, :player3, :player4
      )
    end
  end
end

