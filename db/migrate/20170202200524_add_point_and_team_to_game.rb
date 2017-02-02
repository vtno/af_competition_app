# frozen_string_literal: true
class AddPointAndTeamToGame < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :points, :integer, array: true, default: [0, 0, 0]
    add_column :games, :team, :boolean
  end
end
