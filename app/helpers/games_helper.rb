# frozen_string_literal: true
module GamesHelper
  def render_checkbox
    if @compet.show_rank
      check_box_tag :show_score, true, checked: true
    else
      check_box_tag :show_score, true
    end
  end
end
